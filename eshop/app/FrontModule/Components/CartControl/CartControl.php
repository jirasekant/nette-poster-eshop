<?php

namespace App\FrontModule\Components\CartControl;

use App\Model\Facades\CartFacade;
use App\Model\Entities\Cart;
use App\Model\Entities\CartItem;
use Nette\Application\UI\Control;
use Nette\Application\UI\Template;
use Nette\Security\User;
use Nette\Http\Session;
use Nette\Http\SessionSection;

/**
 * Class CartControl
 * @package App\FrontModule\Components\CartControl
 */
class CartControl extends Control {
    private CartFacade $cartFacade;
    private User $user;
    private SessionSection $cartSession;
    private ?Cart $cart = null;

    public function __construct(CartFacade $cartFacade, User $user, Session $session) {
        $this->cartFacade = $cartFacade;
        $this->user = $user;
        $this->cartSession = $session->getSection('cart');
        
        // Basic debug
        file_put_contents(__DIR__ . '/debug.txt', 'CartControl constructor called at ' . date('Y-m-d H:i:s') . "\n", FILE_APPEND);
    }

    /**
     * Get or create cart for current user (guest or logged in)
     */
    public function getCurrentCart(): ?Cart {
        // Debug session state
        bdump($this->cartSession->get('cartId'), 'Cart ID before processing');
        
        if ($this->cart !== null) {
            bdump($this->cart->cartId, 'Returning cached cart');
            bdump($this->cart->items, 'Cached cart items');
            return $this->cart;
        }

        // For logged in users
        if ($this->user->isLoggedIn()) {
            $cart = $this->cartFacade->getCartByUser($this->user->getId());
            if ($cart) {
                $this->cart = $cart;
                return $this->cart;
            }

            // If user has no cart but there's a session cart, transfer it
            if ($cartId = $this->cartSession->get('cartId')) {
                bdump($cartId, 'Found cart ID in session for logged user');
                $cart = $this->cartFacade->getCartById((int)$cartId);
                if ($cart && $cart->userId === null) {
                    $cart->userId = $this->user->getId();
                    $this->cartFacade->saveCart($cart);
                    $this->cartSession->remove('cartId');
                    $this->cart = $cart;
                    return $this->cart;
                }
            }

            // Create new cart for logged user
            $cart = new Cart();
            $cart->userId = $this->user->getId();
            $this->cartFacade->saveCart($cart);
            $this->cart = $cart;
            return $this->cart;
        }

        // For guests
        if ($cartId = $this->cartSession->get('cartId')) {
            bdump($cartId, 'Found cart ID in session for guest');
            $cart = $this->cartFacade->getCartById((int)$cartId);
            if ($cart && $cart->userId === null) {
                bdump('Using existing guest cart');
                bdump($cart->cartId, 'Guest cart ID');
                bdump($cart->items, 'Guest cart items');
                $this->cart = $cart;
                return $this->cart;
            }
            // Only remove session if cart was taken by a user
            if ($cart && $cart->userId !== null) {
                bdump('Removing cart ID from session - cart was taken by user');
                $this->cartSession->remove('cartId');
            }
        }

        bdump('Creating new guest cart');
        // Create new cart for guest
        $cart = new Cart();
        $cart->userId = null;
        $this->cartFacade->saveCart($cart);
        bdump($cart->cartId, 'New cart ID');
        $this->cartSession->set('cartId', $cart->cartId);
        bdump($this->cartSession->get('cartId'), 'Cart ID in session after save');
        $this->cart = $cart;
        return $this->cart;
    }

    /**
     * Method to transfer guest cart to user after login
     */
    public function attachCartToUser(int $userId): void {
        if ($cartId = $this->cartSession->get('cartId')) {
            try {
                $guestCart = $this->cartFacade->getCartById((int)$cartId);
                if (!$guestCart || $guestCart->userId !== null) {
                    return;
                }

                // Try to find existing user cart
                $userCart = $this->cartFacade->getCartByUser($userId);
                
                if ($userCart) {
                    // Merge guest cart items into user cart
                    foreach ($guestCart->items as $guestItem) {
                        $existingItem = null;
                        foreach ($userCart->items as $userItem) {
                            if ($userItem->posterSize->posterSizeId === $guestItem->posterSize->posterSizeId) {
                                $existingItem = $userItem;
                                break;
                            }
                        }

                        if ($existingItem) {
                            // Update existing item count
                            $existingItem->count += $guestItem->count;
                            $this->cartFacade->saveCartItem($existingItem);
                        } else {
                            // Create new item in user cart
                            $newItem = new CartItem();
                            $newItem->cart = $userCart;
                            $newItem->posterSize = $guestItem->posterSize;
                            $newItem->count = $guestItem->count;
                            $this->cartFacade->saveCartItem($newItem);
                        }
                    }
                    
                    // Delete guest cart after merging
                    $this->cartFacade->deleteCart($guestCart);
                } else {
                    // No existing user cart, just assign the guest cart to user
                    $guestCart->userId = $userId;
                    $this->cartFacade->saveCart($guestCart);
                }
                
                $this->cartSession->remove('cartId');
                $this->cart = null; // Reset cached cart
            } catch (\Exception $e) {
                // Guest cart not found or other error, nothing to do
            }
        }
    }

    /**
     * Renders the cart control
     */
    public function render(): void {
        $template = $this->getTemplate();
        $template->setFile(__DIR__ . '/templates/default.latte');
        $cart = $this->getCurrentCart();
        $template->cart = $cart;
        
        // Make cart available to parent template
        if ($this->getPresenter()) {
            $this->getPresenter()->template->cart = $cart;
        }
        
        $template->render();
    }

    public function handleAddToCart(int $posterId, int $posterSizeId, int $count = 1): void {
        try {
            $cart = $this->getCurrentCart();
            if (!$cart) {
                throw new \Exception('Cart not found');
            }

            // Check if item already exists in cart
            $existingItem = null;
            foreach ($cart->items as $item) {
                if ($item->posterSize->posterSizeId === $posterSizeId) {
                    $existingItem = $item;
                    break;
                }
            }

            if ($existingItem) {
                // Update existing item count
                $existingItem->count += $count;
                $this->cartFacade->saveCartItem($existingItem);
            } else {
                // Add new item to cart
                $cartItem = new CartItem();
                $cartItem->cart = $cart;
                $cartItem->posterSize = $this->cartFacade->getPosterSizeById($posterSizeId);
                $cartItem->count = $count;
                $this->cartFacade->saveCartItem($cartItem);
            }

            // Force reload cart to get updated items
            $cart->updateCartItems();
            $this->cartFacade->saveCart($cart);
            $this->cart = null; // Clear cache to force reload
            
            $this->flashMessage('Item added to cart', 'success');
        } catch (\Exception $e) {
            $this->flashMessage('Error adding item to cart: ' . $e->getMessage(), 'error');
        }
        
        if ($this->presenter->isAjax()) {
            $this->redrawControl();
            $this->presenter->redrawControl('cartContent');
            $this->presenter->redrawControl('cartBadge');
            $this->presenter->redrawControl('flashes');
        } else {
            $this->redirect('this');
        }
    }

    /**
     * Handle increasing item quantity
     */
    public function handleIncrease(int $cartItemId): void {
        try {
            $this->cartFacade->increaseCartItem($cartItemId);
            $this->cart = null; // Clear cache to force reload

            if ($this->presenter->isAjax()) {
                $this->redrawControl();
                $this->presenter->redrawControl('cartContent');
                $this->presenter->redrawControl('cartBadge');
            }
        } catch (\Exception $e) {
            $this->flashMessage('Error updating cart', 'error');
        }
    }

    /**
     * Handle decreasing item quantity
     */
    public function handleDecrease(int $cartItemId): void {
        try {
            $this->cartFacade->decreaseCartItem($cartItemId);
            $this->cart = null; // Clear cache to force reload

            if ($this->presenter->isAjax()) {
                $this->redrawControl();
                $this->presenter->redrawControl('cartContent');
                $this->presenter->redrawControl('cartBadge');
            }
        } catch (\Exception $e) {
            $this->flashMessage('Error updating cart', 'error');
        }
    }

    /**
     * Handle removing item from cart
     */
    public function handleRemove(int $cartItemId): void {
        try {
            $cart = $this->getCurrentCart();
            if (!$cart) {
                throw new \Exception('Cart not found');
            }

            foreach ($cart->items as $item) {
                if ($item->cartItemId === $cartItemId) {
                    $this->cartFacade->deleteCartItem($item);
                    break;
                }
            }

            $cart->updateCartItems();
            $this->cartFacade->saveCart($cart);
            $this->cart = null; // Clear cache to force reload

            if ($this->presenter->isAjax()) {
                $this->redrawControl();
                $this->presenter->redrawControl('cartContent');
                $this->presenter->redrawControl('cartBadge');
            }
        } catch (\Exception $e) {
            $this->flashMessage('Error removing item from cart', 'error');
        }
    }
}
