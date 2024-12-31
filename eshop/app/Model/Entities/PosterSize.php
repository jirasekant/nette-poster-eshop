<?php

namespace App\Model\Entities;

use LeanMapper\Entity;

/**
 * Class PosterSize
 * @package App\Model\Entities
 * @property int $posterSizeId
 * @property Poster $poster m:hasOne
 * @property string $size m:enum(self::SIZE_*)
 * @property float $price
 */
class PosterSize extends Entity
{
    public const SIZE_SMALL = 'small';   // A4 (21 x 29.7 cm)
    public const SIZE_MEDIUM = 'medium'; // A3 (29.7 x 42 cm)
    public const SIZE_LARGE = 'large';   // B2 (50 x 70 cm)

    public function getWidth(): float
    {
        return match($this->size) {
            self::SIZE_SMALL => 21.0,
            self::SIZE_MEDIUM => 29.7,
            self::SIZE_LARGE => 50.0,
        };
    }

    public function getHeight(): float
    {
        return match($this->size) {
            self::SIZE_SMALL => 29.7,
            self::SIZE_MEDIUM => 42.0,
            self::SIZE_LARGE => 70.0,
        };
    }

    public function getDisplayName(): string
    {
        return match($this->size) {
            self::SIZE_SMALL => 'A4',
            self::SIZE_MEDIUM => 'A3',
            self::SIZE_LARGE => 'B2',
        };
    }
}