<?php

namespace App\Model\Entities;

use Dibi\DateTime;
use LeanMapper\Entity;

/**
 * Class ShopOrder
 * @package App\Model\Entities
 * @property int $shopOrderId
 * @property User $user m:hasOne
 * @property UserInformation $userInformation m:hasOne
 * @property float $totalAmount
 * @property string $status m:enum(self::STATUS_*)
 * @property DateTime $created
 * @property OrderItem[] $orderItems m:belongsToMany
 * @property string $shippingMethod
 * @property string $paymentMethod
 */
class ShopOrder extends Entity
{
    const STATUS_PENDING = 'pending';
    const STATUS_COMPLETED = 'completed';
    const STATUS_CANCELLED = 'cancelled';

    /**
     * Get delivery information from UserInformation
     * @return array
     */
    public function getDeliveryInformation(): array
    {
        return [
            'email' => $this->user->email,
            'firstName' => $this->userInformation->firstName,
            'lastName' => $this->userInformation->lastName,
            'street' => $this->userInformation->street,
            'apartment' => $this->userInformation->apartment,
            'city' => $this->userInformation->city,
            'postalCode' => $this->userInformation->postalCode,
            'country' => $this->userInformation->country,
            'phone' => $this->userInformation->phone,
        ];
    }
} 