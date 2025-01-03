<?php

namespace App\FrontModule\Components\CartControl;

use App\Model\Facades\CartFacade;
use Nette\Security\User;
use Nette\Http\Session;

/**
 * Class CartControlFactory
 * @package App\FrontModule\Components\CartControl
 */
class CartControlFactory {
    private CartFacade $cartFacade;
    private User $user;
    private Session $session;

    public function __construct(CartFacade $cartFacade, User $user, Session $session) {
        $this->cartFacade = $cartFacade;
        $this->user = $user;
        $this->session = $session;
    }

    public function create(): CartControl {
        return new CartControl($this->cartFacade, $this->user, $this->session);
    }
}