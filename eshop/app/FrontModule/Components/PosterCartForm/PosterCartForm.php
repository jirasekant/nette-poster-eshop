<?php

namespace App\FrontModule\Components\PosterCartForm;

use App\FrontModule\Components\CartControl\CartControl;
use Nette;
use Nette\Application\UI\Form;
use Nette\SmartObject;
use Nextras\FormsRendering\Renderers\Bs4FormRenderer;
use Nextras\FormsRendering\Renderers\FormLayout;

/**
 * Class PosterCartForm
 * @package App\FrontModule\Components\PosterCartForm
 */
class PosterCartForm extends Form {
    use SmartObject;

    private CartControl $cartControl;

    /**
     * PosterCartForm constructor
     * @param Nette\ComponentModel\IContainer|null $parent
     * @param string|null $name
     */
    public function __construct(Nette\ComponentModel\IContainer $parent = null, string $name = null) {
        parent::__construct($parent, $name);
        $this->setRenderer(new Bs4FormRenderer(FormLayout::VERTICAL));
        $this->createSubcomponents();
    }

    private function createSubcomponents(): void {
        $this->addHidden('posterId');
        $this->addInteger('count', 'Count')
            ->setDefaultValue(1)
            ->addRule(Form::MIN, 'Count must be at least 1', 1);
        $this->addSubmit('add', 'Add to Cart');
    }

    /**
     * Method for setting the cart control as a dependency
     * @param CartControl $cartControl
     */
    public function setCartControl(CartControl $cartControl): void {
        $this->cartControl = $cartControl;
    }
} 