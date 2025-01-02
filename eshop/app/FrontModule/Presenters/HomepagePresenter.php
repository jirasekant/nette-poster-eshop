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

        // Get main categories (those without parent)
        $this->template->mainCategories = $this->categoryRepository->findBy([
            'parent_category_id' => null
        ]);

        // Get 20 random posters for the Popular section carousel
        $this->template->popularPosters = $this->posterRepository->findRandom(20);
    }
}
