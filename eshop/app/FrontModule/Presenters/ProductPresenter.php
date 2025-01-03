<?php

namespace App\FrontModule\Presenters;

use App\Model\Repositories\PosterRepository;
use App\Model\Repositories\CategoryRepository;
use App\Model\Repositories\AuthorRepository;
use App\FrontModule\Components\PosterCartForm\PosterCartFormFactory;
use App\FrontModule\Components\PosterCartForm\PosterCartForm;
use Nette\Application\UI\Multiplier;

class ProductPresenter extends BasePresenter
{
    private PosterRepository $posterRepository;
    private CategoryRepository $categoryRepository;
    private AuthorRepository $authorRepository;
    private PosterCartFormFactory $posterCartFormFactory;

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

    public function injectPosterCartFormFactory(PosterCartFormFactory $posterCartFormFactory): void {
        $this->posterCartFormFactory = $posterCartFormFactory;
    }

    protected function createComponentPosterCartForm(): Multiplier {
        return new Multiplier(function (string $posterId) {
            $form = $this->posterCartFormFactory->create();
            
            // Get the poster and set available sizes
            $poster = $this->posterRepository->find((int)$posterId);
            if ($poster && $poster->posterSizes) {
                $sizes = [];
                foreach ($poster->posterSizes as $size) {
                    $sizes[$size->posterSizeId] = sprintf('%s (%s × %s cm) - $%s', 
                        $size->getDisplayName(), 
                        $size->getWidth(), 
                        $size->getHeight(),
                        number_format($size->price, 2)
                    );
                }
                $form['size']->setItems($sizes);
                
                // Set medium size as default if available
                foreach ($poster->posterSizes as $size) {
                    if ($size->size === 'medium') {
                        $form['size']->setDefaultValue($size->posterSizeId);
                        break;
                    }
                }
            }
            
            return $form;
        });
    }

    public function renderList(): void
    {
        // Get filters from query params
        $categoryId = $this->getParameter('categoryId');
        $authorId = $this->getParameter('authorId');
        $filter = $this->getParameter('filter');
        
        // Get all categories for the sidebar
        $this->template->categories = $this->categoryRepository->findAll();
        
        // Get all authors for the sidebar
        $this->template->authors = $this->authorRepository->findAuthorsWithPosters();
        
        // Get posters based on filters
        if ($categoryId) {
            $this->template->posters = $this->posterRepository->findByCategory($categoryId);
            $this->template->currentAuthorId = null;
            $this->template->filter = null;
        } elseif ($authorId) {
            $this->template->posters = $this->posterRepository->findByAuthor($authorId);
            $this->template->currentCategoryId = null;
            $this->template->filter = null;
        } elseif ($filter === 'new') {
            $this->template->posters = $this->posterRepository->findNewest(50);
            $this->template->currentCategoryId = null;
            $this->template->currentAuthorId = null;
        } elseif ($filter === 'popular') {
            $this->template->posters = $this->posterRepository->findPopular(50);
            $this->template->currentCategoryId = null;
            $this->template->currentAuthorId = null;
        } else {
            $this->template->posters = $this->posterRepository->findAll();
        }
        
        // Pass the current filter states to the template
        $this->template->currentCategoryId = $categoryId;
        $this->template->currentAuthorId = $authorId;
        $this->template->filter = $filter;
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