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
        
        // Debug session
        bdump($session->getId(), 'Session ID');
        bdump($this->cartSession->get('cartId'), 'Cart ID in session');
    }

    /**
     * Get or create cart for current user (guest or logged in)
     */
    public function getCurrentCart(): ?Cart {
        // Debug session state
        bdump($this->cartSession->get('cartId'), 'Cart ID before processing');
        
        if ($this->cart !== null) {
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
        $this->cartSession->set('cartId', $cart->cartId);
        bdump($cart->cartId, 'New cart ID saved to session');
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

                $guestCart->userId = $userId;
                $this->cartFacade->saveCart($guestCart);
                $this->cartSession->remove('cartId');
            } catch (\Exception $e) {
                // Guest cart not found, nothing to do
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
            
            $cart->updateCartItems();
            $this->cartFacade->saveCart($cart);
            
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
}
