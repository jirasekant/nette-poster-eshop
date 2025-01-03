<?php

declare(strict_types=1);

namespace App\FrontModule\Presenters;

use App\FrontModule\Components\CartControl\CartControl;
use App\FrontModule\Components\CartControl\CartControlFactory;
use App\Model\Facades\CartFacade;
use Nette\Application\UI\Presenter;

class CartPresenter extends BasePresenter {
    private CartFacade $cartFacade;
    private CartControlFactory $cartControlFactory;

    public function __construct(
        CartFacade $cartFacade,
        CartControlFactory $cartControlFactory
    ) {
        parent::__construct();
        $this->cartFacade = $cartFacade;
        $this->cartControlFactory = $cartControlFactory;
    }

    public function renderDefault(): void {
        $cartControl = $this->getComponent('cartControl');
        if ($cartControl instanceof CartControl) {
            $this->template->cart = $cartControl->getCurrentCart();
        }
    }

    protected function createComponentCartControl(): CartControl {
        return $this->cartControlFactory->create();
    }
} 