<?php

namespace App\FrontModule\Presenters;

use App\Model\Repositories\PosterRepository;
use App\Model\Repositories\CategoryRepository;

class HomepagePresenter extends BasePresenter
{
    private PosterRepository $posterRepository;
    private CategoryRepository $categoryRepository;

    public function __construct(
        PosterRepository $posterRepository,
        CategoryRepository $categoryRepository
    ) {
        parent::__construct();
        $this->posterRepository = $posterRepository;
        $this->categoryRepository = $categoryRepository;
    }

    public function renderDefault(): void
    {
        // Get 20 newest posters for the carousel
        $this->template->newArrivals = $this->posterRepository->findNewest(20);

        // Get categories
        $categories = $this->categoryRepository->findAll();
        // Build category tree structure
        $categoryTree = $this->buildCategoryTree($categories);
        // Pass the tree to the template
        $this->template->categoryTree = $categoryTree;

        // Get 20 random posters for the Popular section carousel
        $this->template->popularPosters = $this->posterRepository->findRandom(20);
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
