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
        $row = $this->connection->select('c.*')
            ->from('[cart] c')
            ->leftJoin('[cart_item] ci')->on('c.cart_id = ci.cart_id')
            ->where('c.user_id = %i', $userId)
            ->orderBy('c.last_modified DESC')
            ->fetch();

        return $row ? $this->createEntity($row) : null;
    }

    /**
     * Find cart by ID with items
     */
    public function find($id): Cart {
        $row = $this->connection->select('c.*')
            ->from('[cart] c')
            ->leftJoin('[cart_item] ci')->on('c.cart_id = ci.cart_id')
            ->where('c.cart_id = %i', $id)
            ->fetch();

        if (!$row) {
            throw new \Exception('Cart not found.');
        }

        return $this->createEntity($row);
    }

    /**
     * Delete old carts
     */
    public function deleteOldCarts(): void {
        $this->connection->nativeQuery('DELETE FROM `cart` WHERE (user_id IS NULL AND last_modified < (NOW() - INTERVAL 30 DAY)) OR (last_modified < (NOW() - INTERVAL 3 DAY))');
    }
}