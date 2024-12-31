<?php

namespace App\FrontModule\Presenters;

use App\Model\Repositories\PosterRepository;
use App\Model\Repositories\CategoryRepository;

class ProductPresenter extends BasePresenter
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

    public function renderList(): void
    {
        // Get category filter from query params
        $categoryId = $this->getParameter('categoryId');
        
        // Get all categories for the sidebar
        $this->template->categories = $this->categoryRepository->findAll();
        
        // Get posters, filtered by category if specified
        if ($categoryId) {
            $this->template->posters = $this->posterRepository->findByCategory($categoryId);
        } else {
            $this->template->posters = $this->posterRepository->findAll();
        }
        
        // Pass the current category ID to the template
        $this->template->currentCategoryId = $categoryId;
    }

    public function renderShow(int $id): void
    {
        $poster = $this->posterRepository->find($id);
        if (!$poster) {
            $this->error('Poster not found');
        }
        
        // Get related posters (for now, just get 4 random posters excluding current one)
        $this->template->relatedPosters = $this->posterRepository->findRelated($id, 4);
        
        $this->template->poster = $poster;
    }
}