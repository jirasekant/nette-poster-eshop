<?php

declare(strict_types=1);

namespace App\FrontModule\Components\OrderForm;

use App\Model\Facades\CartFacade;
use App\Model\Facades\OrderFacade;
use Nette\Security\User;

class OrderFormFactory {
    private User $user;
    private CartFacade $cartFacade;
    private OrderFacade $orderFacade;

    public function __construct(
        User $user,
        CartFacade $cartFacade,
        OrderFacade $orderFacade
    ) {
        $this->user = $user;
        $this->cartFacade = $cartFacade;
        $this->orderFacade = $orderFacade;
    }

    public function create(): OrderForm {
        return new OrderForm($this->user, $this->cartFacade, $this->orderFacade);
    }
}