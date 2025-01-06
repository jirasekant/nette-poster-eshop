<?php

declare(strict_types=1);

namespace App\FrontModule\Components\OrderForm;

use App\Model\Facades\CartFacade;
use Nette\Application\UI\Control;
use Nette\Application\UI\Form;
use Nette\Security\User;

class OrderForm extends Control {
    private User $user;
    private CartFacade $cartFacade;

    public function __construct(User $user, CartFacade $cartFacade) {
        $this->user = $user;
        $this->cartFacade = $cartFacade;
    }

    protected function createComponentForm(): Form {
        $form = new Form();

        // Contact
        $form->addGroup('Contact');
        $form->addEmail('email', 'Email')
            ->setRequired('Please enter your email');

        // Delivery
        $form->addGroup('Delivery');
        $form->addSelect('country', 'Country/Region')
            ->setPrompt('Select country')
            ->setItems([
                'CZ' => 'Czechia',
                'PL' => 'Poland'
            ])
            ->setRequired('Please select your country');

        $form->addText('first_name', 'First name')
            ->setRequired('Please enter your first name');
        $form->addText('last_name', 'Last name')
            ->setRequired('Please enter your last name');

        $form->addText('street', 'Address')
            ->setRequired('Please enter your street address');
        $form->addText('apartment', 'Apartment, suite, etc. (optional)');

        $form->addText('postal_code', 'Postal code')
            ->setRequired('Please enter your postal code')
            ->addRule(Form::PATTERN, 'Please enter a valid postal code', '^\d{3}\s?\d{2}$');
        $form->addText('city', 'City')
            ->setRequired('Please enter your city');

        $form->addText('phone', 'Phone')
            ->setRequired('Please enter your phone number')
            ->addRule(Form::PATTERN, 'Please enter a valid phone number', '^[+]?[0-9]{9,}$');

        // Shipping Method
        $form->addGroup('Shipping method');
        $form->addText('shipping_method', '')
            ->setDefaultValue('Dedicated Line')
            ->setDisabled(true)
            ->setHtmlAttribute('data-price', '20.00');

        // Payment
        $form->addGroup('Payment');
        $form->addRadioList('payment_method', '', [
            'credit_card' => 'Credit card'
        ])
            ->setDefaultValue('credit_card');

        // Remember me
        $form->addCheckbox('remember_me', 'Save my information for a faster checkout');

        $form->addSubmit('submit', 'Pay now')
            ->setHtmlAttribute('class', 'btn btn-dark w-100 rounded-0 py-3');

        $form->onSuccess[] = [$this, 'processForm'];

        return $form;
    }

    public function processForm(Form $form, \stdClass $values): void {
        // Store form data in session
        $session = $this->getPresenter()->getSession('orderForm');
        $session->orderData = $values;

        // Redirect directly to confirmation
        $this->getPresenter()->redirect('Order:confirmed');
    }

    public function render(): void {
        $form = $this['form'];
        
        if (!$form->isSubmitted()) {
            // First try to load data from session if available
            $session = $this->getPresenter()->getSession('orderForm');
            if (isset($session->orderData)) {
                $form->setDefaults((array)$session->orderData);
            }
            // If no session data and user is logged in, pre-fill with user data
            elseif ($this->user->isLoggedIn()) {
                $identity = $this->user->getIdentity();
                $form->setDefaults([
                    'email' => $identity->email,
                ]);
            }
        }

        $this->template->cart = $this->cartFacade->getCartByUser($this->user->getId());
        $this->template->setFile(__DIR__ . '/templates/default.latte');
        $this->template->render();
    }
} 