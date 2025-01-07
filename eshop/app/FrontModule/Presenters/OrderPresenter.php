<?php

declare(strict_types=1);

namespace App\FrontModule\Presenters;

use App\FrontModule\Components\OrderForm\OrderFormFactory;
use App\Model\Facades\OrderFacade;

class OrderPresenter extends BasePresenter {
    private OrderFormFactory $orderFormFactory;
    private OrderFacade $orderFacade;

    public function __construct(
        OrderFormFactory $orderFormFactory,
        OrderFacade $orderFacade
    ) {
        parent::__construct();
        $this->orderFormFactory = $orderFormFactory;
        $this->orderFacade = $orderFacade;
    }

    public function actionDefault(): void {
        if (!$this->getUser()->isLoggedIn()) {
            $this->redirect('User:login', ['backlink' => $this->storeRequest()]);
        }
    }

    public function actionConfirmed(int $id): void {
        try {
            $order = $this->orderFacade->getOrder($id);
            if ($order->user->userId !== $this->getUser()->getId()) {
                $this->flashMessage('You do not have permission to view this order', 'error');
                $this->redirect('Homepage:default');
            }
            $this->template->order = $order;
        } catch (\Exception $e) {
            $this->flashMessage('Order not found', 'error');
            $this->redirect('Homepage:default');
        }
    }

    protected function createComponentOrderForm() {
        return $this->orderFormFactory->create();
    }
} 