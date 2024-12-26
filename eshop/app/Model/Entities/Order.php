<?php

namespace App\Model\Entities;

use Dibi\DateTime;
use LeanMapper\Entity;

/**
 * Class Order
 * @package App\Model\Entities
 * @property int $orderId
 * @property User $user m:hasOne
 * @property Cart $cart m:hasOne
 * @property float $totalAmount
 * @property string $status m:enum(self::STATUS_*)
 * @property DateTime $created
 * @property OrderItem[] $orderItems m:hasMany
 */
class Order extends Entity
{
    const STATUS_PENDING = 'pending';
    const STATUS_COMPLETED = 'completed';
    const STATUS_CANCELLED = 'cancelled';
} 