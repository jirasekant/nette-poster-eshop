<?php

namespace App\FrontModule\Components\PosterCartForm;

use App\Model\Facades\CartFacade;
use App\Model\Repositories\PosterSizeRepository;
use App\Model\Repositories\CartItemRepository;
use Nette\SmartObject;

/**
 * Class PosterCartFormFactory
 * @package App\FrontModule\Components\PosterCartForm
 */
class PosterCartFormFactory {
    use SmartObject;

    private CartFacade $cartFacade;
    private PosterSizeRepository $posterSizeRepository;
    private CartItemRepository $cartItemRepository;

    public function __construct(
        CartFacade $cartFacade,
        PosterSizeRepository $posterSizeRepository,
        CartItemRepository $cartItemRepository
    ) {
        $this->cartFacade = $cartFacade;
        $this->posterSizeRepository = $posterSizeRepository;
        $this->cartItemRepository = $cartItemRepository;
    }

    public function create(): PosterCartForm {
        return new PosterCartForm(
            $this->cartFacade,
            $this->posterSizeRepository,
            $this->cartItemRepository
        );
    }
} 