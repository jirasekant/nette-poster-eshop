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
        $categoriesArr = [];
        foreach ($categories as $category){
            $categoriesArr[$category->categoryId] = $category->title;
        }
        $this->addMultiSelect('categoryIds', 'Categories', $categoriesArr)
            ->setRequired('Please select a category');
        #endregion categories

        $this->addInteger('stock', 'Stock')
            ->setDefaultValue(0)
            ->addRule(Form::MIN, 'Stock cannot be negative', 0);

        $this->addCheckbox('available', 'Available')
            ->setDefaultValue(true);

        // Add file upload field
        $this->addUpload('image', 'Poster Image')
            ->setRequired(false)
            ->addCondition(Form::FILLED)
            ->addRule(Form::IMAGE, 'Only images are allowed.') // Validates the file type
            ->addRule(Form::MAX_FILE_SIZE, 'Max file size is 5MB.', 5 * 1024 * 1024);

        $this->addSubmit('ok', 'Save')
            ->onClick[] = function(SubmitButton $button) {
            $values = $this->getValues('array');

            if (!empty($values['posterId'])) {
                try {
                    $poster = $this->postersFacade->getPoster($values['posterId']);
                } catch (\Exception $e) {
                    $this->onFailed('Requested poster was not found.');
                    return;
                }
            } else {
                $poster = new Poster();
            }

            $poster->assign($values, ['title', 'url', 'description', 'stock', 'available']);

            // Save the poster
            $this->postersFacade->savePoster($poster);

            // At this point, the posterId is set
            $posterId = $poster->getPosterId();

            // Handle image upload and save to poster_image table
            $image = $values['image'];
            if ($image && $image->isOk()) {
                $imageName = Nette\Utils\Strings::webalize($values['title']) . '_' . time() . '.png';
                $imagePath = __DIR__ . '/../../../../www/images/posters/' . $imageName;

                try {
                    $image->move($imagePath); // Save the image to the filesystem
                    $this->postersFacade->savePosterImage($poster, "/images/posters/" . $imageName); // Save to poster_image table
                } catch (\Exception $e) {
                    $this->onFailed('Failed to save the image: ' . $e->getMessage());
                    return;
                }
            }

            // Update the categories mapping
            $this->postersFacade->updatePosterCategories($poster, $values['categoryIds']);

            $this->onFinished('Poster was saved.');
        };
    }


    /**
     * Method for setting default values
     * @param Poster|array|object $values
     * @param bool $erase = false
     * @return $this
     */
    public function setDefaults($values, bool $erase = false): self {
        if ($values instanceof Poster) {
            $values = [
                'posterId' => $values->posterId,
                'categoryIds' => array_map(fn($category) => $category->categoryId, $values->categories),
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