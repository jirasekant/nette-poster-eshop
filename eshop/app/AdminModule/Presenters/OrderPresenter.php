<?php

namespace App\AdminModule\Presenters;

use App\Model\Facades\OrderFacade;
use Nette\Application\UI\Form;

/**
 * Class OrderPresenter
 * @package App\AdminModule\Presenters
 */
class OrderPresenter extends BasePresenter
{
    private OrderFacade $orderFacade;

    /**
     * Render list of order.
     */
    public function renderDefault(): void
    {
        $this->template->orders = $this->orderFacade->findOrders(['order' => 'created DESC']);
    }

    /**
     * Render specific order details.
     * @param int $id
     */
    public function renderDetail(int $id): void
    {
        try {
            $order = $this->orderFacade->getOrder($id);
            $orderItems = $this->orderFacade->getOrderItems($id);
            $this->template->order = $order;
            $this->template->orderItems = $orderItems;
            dump($orderItems);
        } catch (\Exception $e) {
            $this->flashMessage('Order not found.', 'error');
            $this->redirect('default');
        }
    }

    /**
     * Handle order status update.
     * @param int $id
     */
    public function actionUpdateStatus(int $id, string $status): void
    {
        try {
            $order = $this->orderFacade->getOrder($id);
            $order->status = $status;
            $this->orderFacade->updateOrderStatus($order, $status);
            $this->flashMessage("Stav objednávky aktualizován na: '{$status}'.", 'success');
        } catch (\Exception $e) {
            $this->flashMessage('Nepodařilo se aktualizovat stav objednávky', 'error');
        }

        $this->redirect('default');
    }

    #region injections
    public function injectOrdersFacade(OrderFacade $orderFacade): void
    {
        $this->orderFacade = $orderFacade;
    }
    #endregion
}
