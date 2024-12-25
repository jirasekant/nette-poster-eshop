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
 * @property int $stock = 0
 * @property bool $available = true
 * @property Category|null $category m:hasOne
 * @property PosterImage[] $posterImages m:hasMany(:poster_image)
 * @property PosterSize[] $posterSizes m:hasMany(:poster_size)
 */
class Poster extends Entity implements \Nette\Security\Resource {
    /**
     * @inheritDoc
     */
    function getResourceId(): string {
        return 'Poster';
    }
} 