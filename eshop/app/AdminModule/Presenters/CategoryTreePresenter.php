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
        $categoryMap = [];

        // Map categories by their ID
        foreach ($categories as $category) {
            $categoryMap[$category->categoryId] = $category;
        }

        // Initialize the tree structure
        $tree = [];

        // Initialize a structure to keep track of children
        $categoryChildren = [];

        // Loop through categories and assign them to their parents
        foreach ($categories as $category) {
            // Initialize children array for each category in the structure
            $categoryChildren[$category->categoryId] = [];

            if ($category->parentCategory) {
                // If category has a parent, add it as a child to its parent in the structure
                $categoryChildren[$category->parentCategory->categoryId][] = $category;
            } else {
                // If the category has no parent, it's a root category, add it to the tree
                // This allows for multiple root categories
                $tree[] = [
                    'category' => $category,
                    'children' => [] // Placeholder for children
                ];
            }
        }

        // Now attach the children structure back to the categories
        foreach ($tree as &$node) {
            $node['children'] = $categoryChildren[$node['category']->categoryId]; // Populate children
        }

        return $tree;
    }
}