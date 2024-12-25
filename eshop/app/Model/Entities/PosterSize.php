<?php

namespace App\Model\Entities;

use LeanMapper\Entity;

/**
 * @property-read int $posterSizeId
 * @property-read int $posterId
 * @property string $size m:enum(self::SIZE_*)
 * @property float $price
 * @property-read Poster $poster m:belongsToOne(posterId)
 */
class PosterSize extends Entity
{
    public const SIZE_SMALL = 'small';
    public const SIZE_MEDIUM = 'medium';
    public const SIZE_LARGE = 'large';
}