<?php

namespace App\Model\Entities;

use LeanMapper\Entity;

/**
 * Class Category
 * @package App\Model\Entities
 * @property int $categoryId
 * @property string $title
 * @property string $description
 * @property Category|null $parentCategory m:hasOne(parent_category_id)
 * @property Category[] $childCategories m:hasMany
 * @property Poster[] $posters m:hasMany(#poster_category)
 */
class Category extends Entity implements \Nette\Security\Resource{

  /**
   * @inheritDoc
   */
  function getResourceId():string{
    return 'Category';
  }
}