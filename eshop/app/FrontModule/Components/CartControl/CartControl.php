<?php

namespace App\FrontModule\Components\CartControl;

use App\Model\Facades\CartFacade;
use App\Model\Entities\Cart;
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

    public function __construct(CartFacade $cartFacade, User $user, Session $session) {
        $this->cartFacade = $cartFacade;
        $this->user = $user;
        $this->cartSession = $session->getSection('cart');
    }

    /**
     * Get or create cart for current user (guest or logged in)
     */
    public function getCurrentCart(): ?Cart {
        try {
            if ($this->user->isLoggedIn()) {
                try {
                    return $this->cartFacade->getCartByUser($this->user->getId());
                } catch (\Exception $e) {
                    // Cart doesn't exist for user, will create new one
                }
            } else if ($cartId = $this->cartSession->get('cartId')) {
                try {
                    return $this->cartFacade->getCartById((int)$cartId);
                } catch (\Exception $e) {
                    // Session cart not found, will create new one
                }
            }

            // Create new cart
            $cart = new Cart();
            if ($this->user->isLoggedIn()) {
                $cart->userId = $this->user->getId();
            }
            $this->cartFacade->saveCart($cart);
            
            // Save cart ID to session for guests
            if (!$this->user->isLoggedIn()) {
                $this->cartSession->set('cartId', $cart->cartId);
            }

            return $cart;
        } catch (\Exception $e) {
            return null;
        }
    }

    /**
     * Renders the cart control
     */
    public function render(): void {
        $template = $this->getTemplate();
        $template->setFile(__DIR__ . '/templates/default.latte');
        $template->cart = $this->getCurrentCart();
        $template->render();
    }

    /**
     * Handler for removing items from cart
     */
    public function handleRemove(int $cartItemId): void {
        try {
            $cart = $this->getCurrentCart();
            if (!$cart) {
                throw new \Exception('Cart not found');
            }

            $this->cartFacade->deleteCartItem($cartItemId);
            $cart->updateCartItems();
            $this->cartFacade->saveCart($cart);
            
            $this->flashMessage('Item removed from cart', 'success');
        } catch (\Exception $e) {
            $this->flashMessage('Error removing item from cart', 'error');
        }
        
        if ($this->presenter->isAjax()) {
            $this->redrawControl();
        } else {
            $this->redirect('this');
        }
    }

    /**
     * Handler for increasing item quantity
     */
    public function handleIncrease(int $cartItemId): void {
        try {
            $cart = $this->getCurrentCart();
            if (!$cart) {
                throw new \Exception('Cart not found');
            }

            $this->cartFacade->increaseCartItem($cartItemId);
            $cart->updateCartItems();
            $this->cartFacade->saveCart($cart);
            
            $this->flashMessage('Item quantity increased', 'success');
        } catch (\Exception $e) {
            $this->flashMessage('Error increasing item quantity', 'error');
        }
        
        if ($this->presenter->isAjax()) {
            $this->redrawControl();
        } else {
            $this->redirect('this');
        }
    }

    /**
     * Handler for decreasing item quantity
     */
    public function handleDecrease(int $cartItemId): void {
        try {
            $cart = $this->getCurrentCart();
            if (!$cart) {
                throw new \Exception('Cart not found');
            }

            $this->cartFacade->decreaseCartItem($cartItemId);
            $cart->updateCartItems();
            $this->cartFacade->saveCart($cart);
            
            $this->flashMessage('Item quantity decreased', 'success');
        } catch (\Exception $e) {
            $this->flashMessage('Error decreasing item quantity', 'error');
        }
        
        if ($this->presenter->isAjax()) {
            $this->redrawControl();
        } else {
            $this->redirect('this');
        }
    }

    /**
     * Method to transfer guest cart to user after login
     */
    public function attachCartToUser(int $userId): void {
        if ($cartId = $this->cartSession->get('cartId')) {
            try {
                $guestCart = $this->cartFacade->getCartById((int)$cartId);
                
                // Try to get existing user cart
                try {
                    $userCart = $this->cartFacade->getCartByUser($userId);
                    // Merge guest cart items into user cart
                    foreach ($guestCart->items as $item) {
                        $item->cartId = $userCart->cartId;
                        $this->cartFacade->saveCartItem($item);
                    }
                    $userCart->updateCartItems();
                    $this->cartFacade->saveCart($userCart);
                    
                    // Delete guest cart
                    $this->cartFacade->deleteCartByUser($guestCart->cartId);
                } catch (\Exception $e) {
                    // User has no cart, just update guest cart
                    $guestCart->userId = $userId;
                    $this->cartFacade->saveCart($guestCart);
                }
                
                // Clear session cart ID
                $this->cartSession->remove('cartId');
            } catch (\Exception $e) {
                // Guest cart not found, nothing to do
            }
        }
    }
}
