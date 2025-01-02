<?php

namespace App\FrontModule\Presenters;

use App\Model\Repositories\PosterRepository;
use App\Model\Repositories\CategoryRepository;
use App\Model\Repositories\AuthorRepository;

class ProductPresenter extends BasePresenter
{
    private PosterRepository $posterRepository;
    private CategoryRepository $categoryRepository;
    private AuthorRepository $authorRepository;

    public function __construct(
        PosterRepository $posterRepository,
        CategoryRepository $categoryRepository,
        AuthorRepository $authorRepository
    ) {
        parent::__construct();
        $this->posterRepository = $posterRepository;
        $this->categoryRepository = $categoryRepository;
        $this->authorRepository = $authorRepository;
    }

    public function renderList(): void
    {
        // Get category and author filters from query params
        $categoryId = $this->getParameter('categoryId');
        $authorId = $this->getParameter('authorId');
        
        // Get all categories for the sidebar
        $this->template->categories = $this->categoryRepository->findAll();
        
        // Get all authors for the sidebar
        $this->template->authors = $this->authorRepository->findAuthorsWithPosters();
        
        // Get posters, filtered by category or author if specified
        if ($categoryId) {
            $this->template->posters = $this->posterRepository->findByCategory($categoryId);
            $this->template->currentAuthorId = null;
        } elseif ($authorId) {
            $this->template->posters = $this->posterRepository->findByAuthor($authorId);
            $this->template->currentCategoryId = null;
        } else {
            $this->template->posters = $this->posterRepository->findAll();
        }
        
        // Pass the current filter IDs to the template
        $this->template->currentCategoryId = $categoryId;
        $this->template->currentAuthorId = $authorId;
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