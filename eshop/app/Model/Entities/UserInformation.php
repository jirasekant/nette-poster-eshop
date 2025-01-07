<?php

declare(strict_types=1);

namespace App\Model\Entities;

use LeanMapper\Entity;

/**
 * Class UserInformation
 * @package App\Model\Entities
 * @property int $userInformationId
 * @property User $user m:hasOne
 * @property string $email
 * @property string $firstName
 * @property string $lastName
 * @property string $street
 * @property string|null $apartment
 * @property string $city
 * @property string $postalCode
 * @property string $country
 * @property string $phone
 */
class UserInformation extends Entity
{
} 