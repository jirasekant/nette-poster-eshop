<?php

namespace App\AdminModule\Presenters;

use Nette;
use App\Model\Repositories\OrderRepository;
use App\Model\Repositories\PosterRepository;

class DashboardPresenter extends Nette\Application\UI\Presenter
{
    private OrderRepository $orderRepository;
    private PosterRepository $posterRepository;

    public function __construct(OrderRepository $orderRepository, PosterRepository $posterRepository)
    {
        parent::__construct();
        $this->orderRepository = $orderRepository;
        $this->posterRepository = $posterRepository;
    }

    public function renderDefault(): void
    {
        // Sales in the last month
        $this->template->salesLastMonth = $this->orderRepository->getSalesForLastMonth();

        // Best-selling posters
        $this->template->bestSellingPosters = $this->posterRepository->getBestSellingPosters();

        // Open orders
        $this->template->openOrdersCount = $this->orderRepository->getOpenOrdersCount();
    }
}
