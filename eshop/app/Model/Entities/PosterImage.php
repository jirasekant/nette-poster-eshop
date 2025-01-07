<?php

namespace App\Model\Entities;

use LeanMapper\Entity;

/**
 * @property-read int $posterImageId
 * @property int $posterId
 * @property string $imageUrl
 * @property Poster $poster m:belongsToOne(posterId)
 */
class PosterImage extends Entity
{
}