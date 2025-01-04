<?php

namespace App\FrontModule\Components\PosterCartForm;

use App\FrontModule\Components\CartControl\CartControl;
use App\Model\Facades\CartFacade;
use App\Model\Entities\Cart;
use App\Model\Entities\CartItem;
use App\Model\Repositories\PosterSizeRepository;
use App\Model\Repositories\CartItemRepository;
use Nette;
use Nette\Application\UI\Form;
use Nette\SmartObject;
use Nette\Utils\ArrayHash;
use Nextras\FormsRendering\Renderers\Bs4FormRenderer;
use Nextras\FormsRendering\Renderers\FormLayout;

/**
 * Class PosterCartForm
 * @package App\FrontModule\Components\PosterCartForm
 */
class PosterCartForm extends Form {
    use SmartObject;

    private CartControl $cartControl;
    private CartFacade $cartFacade;
    private PosterSizeRepository $posterSizeRepository;
    private CartItemRepository $cartItemRepository;

    /**
     * PosterCartForm constructor
     * @param CartFacade $cartFacade
     * @param PosterSizeRepository $posterSizeRepository
     * @param CartItemRepository $cartItemRepository
     * @param Nette\ComponentModel\IContainer|null $parent
     * @param string|null $name
     */
    public function __construct(
        CartFacade $cartFacade,
        PosterSizeRepository $posterSizeRepository,
        CartItemRepository $cartItemRepository,
        Nette\ComponentModel\IContainer $parent = null,
        string $name = null
    ) {
        parent::__construct($parent, $name);
        $this->cartFacade = $cartFacade;
        $this->posterSizeRepository = $posterSizeRepository;
        $this->cartItemRepository = $cartItemRepository;
        $this->setRenderer(new Bs4FormRenderer(FormLayout::VERTICAL));
        $this->createSubcomponents();
    }

    private function createSubcomponents(): void {
        $this->addRadioList('size', 'Size')
            ->setRequired('Please select a size')
            ->setHtmlAttribute('class', 'size-radio-list');

        $this->addInteger('count', 'Quantity')
            ->setDefaultValue(1)
            ->addRule(Form::MIN, 'Quantity must be at least 1', 1)
            ->setRequired('Please enter quantity')
            ->setHtmlAttribute('min', 1);

        $this->addSubmit('add', 'Add to Cart')
            ->setHtmlAttribute('class', 'btn btn-dark flex-grow-1 rounded-0 py-3')
            ->setHtmlAttribute('data-naja-history', 'off');

        $this->onSuccess[] = [$this, 'submitSucceeded'];
    }

    /**
     * Method for setting the cart control as a dependency
     * @param CartControl $cartControl
     */
    public function setCartControl(CartControl $cartControl): void {
        $this->cartControl = $cartControl;
    }

    public function submitSucceeded(Form $form, ArrayHash $values): void {
        try {
            if (!isset($this->cartControl)) {
                throw new \Exception('Cart control not set');
            }

            // Let CartControl handle cart creation/retrieval
            $this->cartControl->handleAddToCart(
                $this->getPresenter()->getParameter('id'), // poster ID
                $values->size,
                $values->count
            );

        } catch (\Exception $e) {
            $this->getPresenter()->flashMessage('Error adding item to cart: ' . $e->getMessage(), 'error');
            if ($this->getPresenter()->isAjax()) {
                $this->getPresenter()->redrawControl('flashes');
            }
        }
    }
} 