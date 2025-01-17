<?php

declare(strict_types=1);

namespace App\FrontModule\Components\OrderForm;

use App\Model\Facades\CartFacade;
use App\Model\Facades\OrderFacade;
use Nette\Application\UI\Control;
use Nette\Application\UI\Form;
use Nette\Security\User;

class OrderForm extends Control {
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
        $form->addHidden('shipping_method')
            ->setDefaultValue('Dedicated Line');

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
        try {
            if (!$this->user->isLoggedIn()) {
                $form->addError('You must be logged in to create an order.');
                return;
            }

            $cart = $this->cartFacade->getCartByUser($this->user->getId());
            if (!$cart || empty($cart->items)) {
                $form->addError('Your cart is empty.');
                return;
            }

            $order = $this->orderFacade->createOrder(
                (array)$values, 
                $this->user->getId(),
                $values->remember_me
            );

            $this->getPresenter()->redirect(':Front:Order:confirmed', ['id' => $order->shopOrderId]);
        } catch (\Nette\Application\AbortException $e) {
            throw $e;
        } catch (\Exception $e) {
            $form->addError('Failed to create order: ' . $e->getMessage());
        }
    }

    public function render(): void {
        $form = $this['form'];
        
        if (!$form->isSubmitted()) {
            // First try to load data from saved user information
            $userInfo = $this->orderFacade->getUserInformation($this->user->getId());
            if ($userInfo) {
                $form->setDefaults([
                    'email' => $this->user->getIdentity()->email,
                    'first_name' => $userInfo->firstName,
                    'last_name' => $userInfo->lastName,
                    'street' => $userInfo->street,
                    'apartment' => $userInfo->apartment,
                    'city' => $userInfo->city,
                    'postal_code' => $userInfo->postalCode,
                    'country' => $userInfo->country,
                    'phone' => $userInfo->phone,
                ]);
            }
            // If no saved info and user is logged in, pre-fill with user data
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