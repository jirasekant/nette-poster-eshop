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
        
        $row = $this->connection->select('*')
            ->from($this->getTable())
            ->where('user_id = %i', $userId)
            ->orderBy('last_modified DESC')
            ->fetch();

        if (!$row) {
            
            return null;
        }

        $cart = $this->createEntity($row);
        return $cart;
    }

    /**
     * Find cart by ID with items
     */
    public function find($id): Cart {
        
        $row = $this->connection->select('*')
            ->from($this->getTable())
            ->where('cart_id = %i', $id)
            ->fetch();

        if (!$row) {
            throw new \Exception('Cart not found.');
        }

        $cart = $this->createEntity($row);
        return $cart;
    }

    /**
     * Delete old carts
     */
    public function deleteOldCarts(): void {
        $this->connection->nativeQuery('DELETE FROM `cart` WHERE (user_id IS NULL AND last_modified < (NOW() - INTERVAL 30 DAY)) OR (last_modified < (NOW() - INTERVAL 3 DAY))');
    }
}