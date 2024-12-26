<?php

namespace App\Model\Entities;

use LeanMapper\Entity;

/**
 * Class OrderItem
 * @package App\Model\Entities
 * @property int $orderItemId
 * @property Order $order m:hasOne
 * @property PosterSize $posterSize m:hasOne
 * @property int $count = 1
 * @property float $price
 */
class OrderItem extends Entity
{
} 