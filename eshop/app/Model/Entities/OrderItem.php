<?php

namespace App\Model\Entities;

use LeanMapper\Entity;

/**
 * Class OrderItem
 * @package App\Model\Entities
 * @property int $orderItemId
 * @property ShopOrder $order m:hasOne(shop_order_id)
 * @property Poster $poster m:hasOne
 * @property PosterSize $posterSize m:hasOne
 * @property int $count = 1
 * @property float $price
 */
class OrderItem extends Entity
{
} 