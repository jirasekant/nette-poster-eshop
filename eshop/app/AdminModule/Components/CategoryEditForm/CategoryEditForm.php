<?php

namespace App\AdminModule\Components\CategoryEditForm;

use App\Model\Entities\Category;
use App\Model\Facades\CategoriesFacade;
use Nette;
use Nette\Application\UI\Form;
use Nette\Forms\Controls\SubmitButton;
use Nette\SmartObject;
use Nextras\FormsRendering\Renderers\Bs4FormRenderer;
use Nextras\FormsRendering\Renderers\FormLayout;

/**
 * Class CategoryEditForm
 * @package App\AdminModule\Components\CategoryEditForm
 *
 * @method onFinished(string $message = '')
 * @method onFailed(string $message = '')
 * @method onCancel()
 */
class CategoryEditForm extends Form {

    use SmartObject;

    /** @var callable[] $onFinished */
    public array $onFinished = [];
    /** @var callable[] $onFailed */
    public array $onFailed = [];
    /** @var callable[] $onCancel */
    public array $onCancel = [];

    private CategoriesFacade $categoriesFacade;

    /**
     * CategoryEditForm constructor.
     * @param CategoriesFacade $categoriesFacade
     * @param Nette\ComponentModel\IContainer|null $parent
     * @param string|null $name
     */
    public function __construct(CategoriesFacade $categoriesFacade, Nette\ComponentModel\IContainer $parent = null, string $name = null) {
        parent::__construct($parent, $name);
        $this->setRenderer(new Bs4FormRenderer(FormLayout::VERTICAL));
        $this->categoriesFacade = $categoriesFacade;
        $this->createSubcomponents();
    }

    private function createSubcomponents(): void {
        $categoryId = $this->addHidden('categoryId');

        // Add the category title field
        $this->addText('title', 'Název kategorie')
            ->setRequired('Musíte zadat název kategorie');

        // Add the category description field
        $this->addTextArea('description', 'Popis kategorie')
            ->setRequired(false);

        // Fetch categories for parent category selection
        $parentCategories = $this->categoriesFacade->findCategories(); // Use the findCategories method to get categories
        $parentCategoriesArray = [];

        // Convert the categories to an associative array for the select options
        foreach ($parentCategories as $category) {
            $parentCategoriesArray[$category->categoryId] = $category->title; // Assuming 'categoryId' and 'title' are available
        }

        // Add the parent category select field
        $this->addSelect('parentCategory', 'Rodičovská kategorie', $parentCategoriesArray)
            ->setPrompt('Žádná')
            ->setRequired(false); // Make this optional if needed

        // Submit button to save the form
        $this->addSubmit('ok', 'uložit')
            ->onClick[] = function (SubmitButton $button) {
            $values = $this->getValues('array');
            if (!empty($values['categoryId'])) {
                try {
                    $category = $this->categoriesFacade->getCategory($values['categoryId']);
                } catch (\Exception $e) {
                    $this->onFailed('Požadovaná kategorie nebyla nalezena.');
                    return;
                }
            } else {
                $category = new Category();
            }

            // Assign the form values including the parent category
            $category->assign($values, ['title', 'description']);

            // If a parent category is selected, set it
            if (!empty($values['parentCategory'])) {
                $parentCategory = $this->categoriesFacade->getCategory($values['parentCategory']);
                $category->parentCategory = $parentCategory; // Assuming `parentCategory` field exists in Category entity
            }

            $this->categoriesFacade->saveCategory($category);
            $this->setValues(['categoryId' => $category->categoryId]);
            $this->onFinished('Kategorie byla uložena.');
        };

        // Cancel button
        $this->addSubmit('storno', 'zrušit')
            ->setValidationScope([$categoryId])
            ->onClick[] = function (SubmitButton $button) {
            $this->onCancel();
        };
    }

    /**
     * Metoda pro nastavení výchozích hodnot formuláře
     * @param Category|array|object $values
     * @param bool $erase = false
     * @return $this
     */
    public function setDefaults($values, bool $erase = false): self {
        if ($values instanceof Category) {
            $values = [
                'categoryId' => $values->categoryId,
                'title' => $values->title,
                'description' => $values->description,
                'parentCategory' => $values->parentCategory ? $values->parentCategory->categoryId : null, // Assuming parentCategory is an object
            ];
        }
        parent::setDefaults($values, $erase);
        return $this;
    }

}
