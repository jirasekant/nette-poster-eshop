<?php

namespace App\Model\Entities;

use LeanMapper\Entity;

/**
 * Class Author
 * @package App\Model\Entities
 * @property int $authorId
 * @property string $name
 * @property Poster[] $posters m:hasMany
 */
class Author extends Entity
{
}