<?php

namespace App\Model\Entities;

use LeanMapper\Entity;

/**
 * @property-read int $posterImageId
 * @property-read int $posterId
 * @property string $imageUrl
 * @property-read Poster $poster m:belongsToOne(posterId)
 */
class PosterImage extends Entity
{
}