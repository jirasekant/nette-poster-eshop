<?php

namespace App\AdminModule\Components\PosterEditForm;

use App\Model\Entities\Poster;
use App\Model\Facades\CategoriesFacade;
use App\Model\Facades\PostersFacade;
use Nette;
use Nette\Application\UI\Form;
use Nette\Forms\Controls\SubmitButton;
use Nette\SmartObject;
use Nextras\FormsRendering\Renderers\Bs4FormRenderer;
use Nextras\FormsRendering\Renderers\FormLayout;

/**
 * Class PosterEditForm
 * @package App\AdminModule\Components\PosterEditForm
 *
 * @method onFinished(string $message = '')
 * @method onFailed(string $message = '')
 * @method onCancel()
 */
class PosterEditForm extends Form {

    use SmartObject;

    /** @var callable[] $onFinished */
    public array $onFinished = [];
    /** @var callable[] $onFailed */
    public array $onFailed = [];
    /** @var callable[] $onCancel */
    public array $onCancel = [];

    private CategoriesFacade $categoriesFacade;
    private PostersFacade $postersFacade;

    /**
     * PosterEditForm constructor
     * @param CategoriesFacade $categoriesFacade
     * @param PostersFacade $postersFacade
     * @param Nette\ComponentModel\IContainer|null $parent
     * @param string|null $name
     */
    public function __construct(CategoriesFacade $categoriesFacade, PostersFacade $postersFacade, Nette\ComponentModel\IContainer $parent = null, string $name = null) {
        parent::__construct($parent, $name);
        $this->setRenderer(new Bs4FormRenderer(FormLayout::VERTICAL));
        $this->categoriesFacade = $categoriesFacade;
        $this->postersFacade = $postersFacade;
        $this->createSubcomponents();
    }

    private function createSubcomponents(): void {
        $posterId = $this->addHidden('posterId');
        
        $this->addText('title', 'Poster Title')
            ->setRequired('Please enter the poster title')
            ->setMaxLength(100);

        $this->addText('url', 'URL')
            ->setMaxLength(100)
            ->addFilter(function(string $url){
                return Nette\Utils\Strings::webalize($url);
            });

        $this->addTextArea('description', 'Description')
            ->setRequired('Please enter the description');

        #region categories
        $categories = $this->categoriesFacade->findCategories(['order'=>'title']);
        $categoriesArr = [''=>''];
        foreach ($categories as $category){
            $categoriesArr[$category->categoryId]=$category->title;
        }
        $this->addSelect('categoryId','Category',$categoriesArr)
            ->setPrompt('Select category');
        #endregion categories

        $this->addInteger('stock', 'Stock')
            ->setDefaultValue(0)
            ->addRule(Form::MIN, 'Stock cannot be negative', 0);

        $this->addCheckbox('available', 'Available')
            ->setDefaultValue(true);

        $this->addSubmit('ok', 'Save')
            ->onClick[]=function(SubmitButton $button){
                $values=$this->getValues('array');
                if (!empty($values['posterId'])){
                    try{
                        $poster=$this->postersFacade->getPoster($values['posterId']);
                    }catch (\Exception $e){
                        $this->onFailed('Requested poster was not found.');
                        return;
                    }
                }else{
                    $poster=new Poster();
                }
                
                $poster->assign($values,['title','url','description','stock','available']);
                
                if (!empty($values['categoryId'])){
                    try{
                        $poster->category = $this->categoriesFacade->getCategory($values['categoryId']);
                    }catch (\Exception $e){
                        //ignore the error
                    }
                }else{
                    $poster->category = null;
                }
                
                $this->postersFacade->savePoster($poster);
                $this->onFinished('Poster was saved.');
            };

        $this->addSubmit('storno', 'Cancel')
            ->setValidationScope([])
            ->onClick[]=function(SubmitButton $button){
                $this->onCancel();
            };
    }

    /**
     * Method for setting default values
     * @param Poster|array|object $values
     * @param bool $erase = false
     * @return $this
     */
    public function setDefaults($values, bool $erase = false): self {
        if ($values instanceof Poster){
            $values = [
                'posterId' => $values->posterId,
                'categoryId' => $values->category ? $values->category->categoryId : null,
                'title' => $values->title,
                'url' => $values->url,
                'description' => $values->description,
                'stock' => $values->stock,
                'available' => $values->available
            ];
        }
        parent::setDefaults($values, $erase);
        return $this;
    }
} 