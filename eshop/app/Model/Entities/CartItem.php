<?php

namespace App\Model\Entities;

use LeanMapper\Entity;

/**
 * Class CartItem
 * @package App\Model\Entities
 * @property int $cartItemId
 * @property PosterSize $posterSize m:hasOne
 * @property Cart $cart m:hasOne
 * @property int $count = 0
 * 
 * @method float getTotalPrice()
 */
class CartItem extends Entity {
    public function getTotalPrice(): float {
        return $this->posterSize->price * $this->count;
    }

    public function getPoster(): ?Poster {
        return $this->posterSize->poster;
    }

    public function getQuantity(): int {
        return $this->count;
    }
}