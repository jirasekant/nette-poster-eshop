<?php

namespace App\AdminModule\Presenters;

use App\Model\Facades\CategoriesFacade;
use Nette;
use Nette\Application\UI\Presenter;

class CategoryTreePresenter extends Presenter {

    private CategoriesFacade $categoriesFacade;

    public function __construct(CategoriesFacade $categoriesFacade) {
        parent::__construct();
        $this->categoriesFacade = $categoriesFacade;
    }

    public function renderDefault(): void {
        // Fetch all categories
        $categories = $this->categoriesFacade->findCategories();

        // Build category tree structure
        $categoryTree = $this->buildCategoryTree($categories);

        // Pass the tree to the template
        $this->template->categoryTree = $categoryTree;
    }

    /**
     * Builds a nested tree structure of categories without modifying the Category entity.
     *
     * @param array $categories
     * @return array
     */
    private function buildCategoryTree(array $categories): array {
        // Initialize a structure to hold the tree and a map for category references
        $tree = [];
        $categoryMap = [];
        $categoryChildren = [];

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