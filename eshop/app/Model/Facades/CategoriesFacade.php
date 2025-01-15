<?php

namespace App\Model\Facades;

use App\Model\Entities\Category;
use App\Model\Repositories\CategoryRepository;

/**
 * Class CategoriesFacade - fasáda pro využívání kategorií z presenterů
 * @package App\Model\Facades
 */
class CategoriesFacade{
  private CategoryRepository $categoryRepository;

  public function __construct(CategoryRepository $categoryRepository){
    $this->categoryRepository=$categoryRepository;
  }

  /**
   * Metoda pro načtení jedné kategorie
   * @param int $id
   * @return Category
   * @throws \Exception
   */
  public function getCategory(int $id):Category {
    return $this->categoryRepository->find($id); //buď počítáme s možností vyhození výjimky, nebo ji ošetříme už tady a můžeme vracet např. null
  }

  /**
   * Metoda pro vyhledání kategorií
   * @param array|null $params = null
   * @param int $offset = null
   * @param int $limit = null
   * @return Category[]
   */
  public function findCategories(?array $params=null,?int $offset=null,?int $limit=null):array {
    return $this->categoryRepository->findAllBy($params,$offset,$limit);
  }

  /**
   * Metoda pro zjištění počtu kategorií
   * @param array|null $params
   * @return int
   */
  public function findCategoriesCount(?array $params=null):int {
    return $this->categoryRepository->findCountBy($params);
  }

  /**
   * Metoda pro uložení kategorie
   * @param Category &$category
   * @return bool - true, pokud byly v DB provedeny nějaké změny
   */
  public function saveCategory(Category &$category):bool {
    return (bool)$this->categoryRepository->persist($category);
  }

  /**
   * Metoda pro smazání kategorie
   * @param Category $category
   * @return bool
   */
  public function deleteCategory(Category $category):bool {
    try{
      return (bool)$this->categoryRepository->delete($category);
    }catch (\Exception $e){
      return false;
    }
  }
    /**
     * Builds a nested tree structure of categories without modifying the Category entity.
     *
     * @return array
     */
    public function buildCategoryTree(): array {
        // Initialize a structure to hold the tree and a map for category references
        $tree = [];
        $categoryMap = [];
        $categoryChildren = [];

        $categories = $this->categoryRepository->findAll();
        // Map categories by their ID and ensure an array to hold child references
        foreach ($categories as $category) {
            $categoryMap[$category->categoryId] = $category;
            $categoryChildren[$category->categoryId] = [];
        }

        // Build the children mapping by associating categories with their parents
        foreach ($categories as $category) {
            if ($category->parentCategory) {
                $parentId = $category->parentCategory->categoryId;
                $categoryChildren[$parentId][] = $category;
            } else {
                $tree[] = ['category' => $category, 'children' => []];
            }
        }

        // Attach children to the correct parent node in the tree
        foreach ($tree as &$node) {
            $node['children'] = $this->populateChildren($node['category'], $categoryChildren);
        }

        return $tree;
    }

    private function populateChildren($parent, $categoryChildren): array {
        $childrenList = [];

        foreach ($categoryChildren[$parent->categoryId] as $childCategory) {
            $childrenList[] = [
                'category' => $childCategory,
                'children' => $this->populateChildren($childCategory, $categoryChildren)
            ];
        }

        return $childrenList;
    }

}