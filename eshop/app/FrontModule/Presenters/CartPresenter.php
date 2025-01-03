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

    public function handleIncrease(int $cartItemId): void {
        try {
            $this->cartFacade->increaseCartItem($cartItemId);
            $this->flashMessage('Quantity increased', 'success');
        } catch (\Exception $e) {
            $this->flashMessage('Error increasing quantity', 'error');
        }

        if ($this->isAjax()) {
            $this->redrawControl('cartContent');
            $this->redrawControl('cartBadge');
            $this->redrawControl('flashes');
        } else {
            $this->redirect('this');
        }
    }

    public function handleDecrease(int $cartItemId): void {
        try {
            $this->cartFacade->decreaseCartItem($cartItemId);
            $this->flashMessage('Quantity decreased', 'success');
        } catch (\Exception $e) {
            $this->flashMessage('Error decreasing quantity', 'error');
        }

        if ($this->isAjax()) {
            $this->redrawControl('cartContent');
            $this->redrawControl('cartBadge');
            $this->redrawControl('flashes');
        } else {
            $this->redirect('this');
        }
    }

    public function handleRemove(int $cartItemId): void {
        try {
            $this->cartFacade->deleteCartItem($cartItemId);
            $this->flashMessage('Item removed from cart', 'success');
        } catch (\Exception $e) {
            $this->flashMessage('Error removing item', 'error');
        }

        if ($this->isAjax()) {
            $this->redrawControl('cartContent');
            $this->redrawControl('cartBadge');
            $this->redrawControl('flashes');
        } else {
            $this->redirect('this');
        }
    }

    protected function createComponentCartControl(): CartControl {
        return $this->cartControlFactory->create();
    }
} 