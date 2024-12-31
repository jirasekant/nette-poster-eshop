<?php

namespace App\Model\Entities;

use LeanMapper\Entity;

/**
 * Class Poster
 * @package App\Model\Entities
 * @property int $posterId
 * @property string $title
 * @property string $url
 * @property string $description
 * @property Author|null $author m:hasOne
 * @property int $stock
 * @property bool $available
 * @property PosterImage[] $posterImages m:hasMany(:poster_image)
 * @property PosterSize[] $posterSizes m:hasMany(:poster_size)
 * @property Category[] $categories m:hasMany(:poster_category)
 */
class Poster extends Entity
{
} 