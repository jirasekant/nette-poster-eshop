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
        // Get 4 newest posters
        $this->template->newArrivals = $this->posterRepository->findNewest();

        // Get main categories (those without parent)
        $this->template->mainCategories = $this->categoryRepository->findBy([
            'parent_category_id' => null
        ]);

        // Get 4 popular posters (for now just random ones)
        $this->template->popularPosters = $this->posterRepository->findPopular();
    }
}
