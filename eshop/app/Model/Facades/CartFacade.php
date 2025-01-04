<?php

namespace App\Model\Facades;

use App\Model\Entities\Cart;
use App\Model\Entities\CartItem;
use App\Model\Entities\User;
use App\Model\Repositories\CartItemRepository;
use App\Model\Repositories\CartRepository;
use App\Model\Repositories\PosterSizeRepository;
use Dibi\DateTime;

class CartFacade {
    private CartRepository $cartRepository;
    private CartItemRepository $cartItemRepository;
    private PosterSizeRepository $posterSizeRepository;

    public function __construct(
        CartRepository $cartRepository,
        CartItemRepository $cartItemRepository,
        PosterSizeRepository $posterSizeRepository
    ) {
        $this->cartRepository = $cartRepository;
        $this->cartItemRepository = $cartItemRepository;
        $this->posterSizeRepository = $posterSizeRepository;
    }

    public function getCartByUser($user): ?Cart {
        if ($user instanceof User) {
            $user = $user->userId;
        }
        try {
            return $this->cartRepository->findByUser($user);
        } catch (\Exception $e) {
            return null;
        }
    }

    public function getCartById(int $id): ?Cart {
        try {
            return $this->cartRepository->find($id);
        } catch (\Exception $e) {
            return null;
        }
    }

    public function getPosterSizeById(int $id) {
        return $this->posterSizeRepository->find($id);
    }

    public function saveCartItem(CartItem $cartItem): void {
        $this->cartItemRepository->persist($cartItem);
        if ($cartItem->cart) {
            $cartItem->cart->lastModified = new DateTime();
            $this->cartRepository->persist($cartItem->cart);
        }
    }

    public function saveCart(Cart $cart): void {
        $cart->lastModified = new DateTime();
        $this->cartRepository->persist($cart);
    }

    public function deleteCartItem(CartItem|int $cartItem): void {
        try {
            $this->cartItemRepository->delete($cartItem);
        } catch (\Exception $e) {
            // Handle the error silently or log it if needed
        }
    }

    public function deleteOldCarts(): void {
        try {
            $this->cartRepository->deleteOldCarts();
        } catch (\Exception $e) {
            // Handle the error silently or log it if needed
        }
    }

    public function deleteCart(Cart $cart): void {
        try {
            $this->cartRepository->delete($cart);
        } catch (\Exception $e) {
            // Handle the error silently or log it if needed
        }
    }
}
