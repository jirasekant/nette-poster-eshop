<?php

declare(strict_types=1);

namespace App\AdminModule\Presenters;

use App\Model\Repositories\ShopOrderRepository;
use App\Model\Repositories\UserRepository;
use Nette;

class DashboardPresenter extends BasePresenter {
    private ShopOrderRepository $shopOrderRepository;
    private UserRepository $userRepository;

    public function __construct(
        ShopOrderRepository $shopOrderRepository,
        UserRepository $userRepository
    ) {
        parent::__construct();
        $this->shopOrderRepository = $shopOrderRepository;
        $this->userRepository = $userRepository;
    }

    public function renderDefault(): void {
        $this->template->salesLastMonth = $this->shopOrderRepository->getSalesForLastMonth();
        $this->template->openOrdersCount = $this->shopOrderRepository->getOpenOrdersCount();
        $this->template->usersCount = $this->userRepository->findCountBy();
    }
}
