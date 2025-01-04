<?php

namespace App\Model\Repositories;

use App\Model\Entities\Cart;

/**
 * Class CartRepository
 * @package App\Model\Repositories
 */
class CartRepository extends BaseRepository {

    /**
     * Find cart by user ID with items
     */
    public function findByUser(int $userId): ?Cart {
        bdump('Finding cart by user ID: ' . $userId);
        $row = $this->connection->select('*')
            ->from($this->getTable())
            ->where('user_id = %i', $userId)
            ->orderBy('last_modified DESC')
            ->fetch();

        if (!$row) {
            bdump('No cart found for user');
            return null;
        }

        $cart = $this->createEntity($row);
        bdump($cart->cartId, 'Found cart ID for user');
        bdump($cart->items, 'Cart items for user');
        return $cart;
    }

    /**
     * Find cart by ID with items
     */
    public function find($id): Cart {
        bdump('Finding cart by ID: ' . $id);
        $row = $this->connection->select('*')
            ->from($this->getTable())
            ->where('cart_id = %i', $id)
            ->fetch();

        if (!$row) {
            bdump('Cart not found by ID');
            throw new \Exception('Cart not found.');
        }

        $cart = $this->createEntity($row);
        bdump($cart->cartId, 'Found cart by ID');
        bdump($cart->items, 'Cart items');
        return $cart;
    }

    /**
     * Delete old carts
     */
    public function deleteOldCarts(): void {
        $this->connection->nativeQuery('DELETE FROM `cart` WHERE (user_id IS NULL AND last_modified < (NOW() - INTERVAL 30 DAY)) OR (last_modified < (NOW() - INTERVAL 3 DAY))');
    }
}