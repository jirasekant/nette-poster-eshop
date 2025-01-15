<?php

namespace App\FrontModule\Presenters;

use App\Model\Repositories\PosterRepository;
use App\Model\Repositories\CategoryRepository;
use App\Model\Facades\CategoriesFacade;

class HomepagePresenter extends BasePresenter
{
    private PosterRepository $posterRepository;
    private CategoryRepository $categoryRepository;
    private CategoriesFacade $categoryFacade;

    public function __construct(
        PosterRepository $posterRepository,
        CategoryRepository $categoryRepository,
        CategoriesFacade $categoryFacade
    ) {
        parent::__construct();
        $this->posterRepository = $posterRepository;
        $this->categoryRepository = $categoryRepository;
        $this->categoryFacade = $categoryFacade;
    }

    public function renderDefault(): void
    {
        // Get 20 newest posters for the carousel
        $this->template->newArrivals = $this->posterRepository->findNewest(20);

        // Get categories
        $categories = $this->categoryRepository->findAll();
        // Build category tree structure
        $categoryTree = $this->categoryFacade->buildCategoryTree();
        // Pass the tree to the template
        $this->template->categoryTree = $categoryTree;

        // Get 20 random posters for the Popular section carousel
        $this->template->popularPosters = $this->posterRepository->findRandom(20);
    }
}
