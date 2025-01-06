<?php

declare(strict_types=1);

namespace App\FrontModule\Presenters;

use App\FrontModule\Components\OrderForm\OrderForm;
use App\FrontModule\Components\OrderForm\OrderFormFactory;
use Nette\Application\UI\Presenter;

class OrderPresenter extends Presenter {
    private OrderFormFactory $orderFormFactory;

    public function __construct(OrderFormFactory $orderFormFactory) {
        parent::__construct();
        $this->orderFormFactory = $orderFormFactory;
    }

    public function actionDefault(): void {
        if (!$this->getUser()->isLoggedIn()) {
            $this->flashMessage('Please log in to continue with your order.', 'info');
            $this->redirect('User:login', ['backlink' => $this->storeRequest()]);
        }
    }

    public function actionConfirmed(): void {
        if (!$this->getUser()->isLoggedIn()) {
            $this->redirect('default');
        }
    }

    protected function createComponentOrderForm(): OrderForm {
        return $this->orderFormFactory->create();
    }
} 