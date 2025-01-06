<?php

namespace App\AdminModule\Presenters;

use App\AdminModule\Components\PosterEditForm\PosterEditForm;
use App\AdminModule\Components\PosterEditForm\PosterEditFormFactory;
use App\Model\Facades\PostersFacade;
use Nette\Application\UI\Multiplier;
/**
 * Class PosterPresenter
 * @package App\AdminModule\Presenters
 */
class PosterPresenter extends BasePresenter{
  private PostersFacade $postersFacade;
  private PosterEditFormFactory $posterEditFormFactory;

  /**
   * Akce pro vykreslení seznamu produktů
   */
  public function renderDefault():void {
    $this->template->posters=$this->postersFacade->findAllBy(['order'=>'title']);
  }

  /**
   * Akce pro úpravu jednoho produktu
   * @param int $id
   * @throws \Nette\Application\AbortException
   */
  public function renderEdit(int $id):void {
    try{
      $poster=$this->postersFacade->getPoster($id);
    }catch (\Exception $e){
      $this->flashMessage('Požadovaný produkt nebyl nalezen.', 'error');
      $this->redirect('default');
    }
    if (!$this->user->isAllowed($poster,'edit')){
      $this->flashMessage('Požadovaný produkt nemůžete upravovat.', 'error');
      $this->redirect('default');
    }

    $form=$this->getComponent('posterEditForm');
    $form->setDefaults($poster);
    $this->template->poster=$poster;
  }

  /**
   * Formulář na editaci produktů
   * @return PosterEditForm
   */
  public function createComponentPosterEditForm():PosterEditForm {
    $form = $this->posterEditFormFactory->create();
    $form->onCancel[]=function(){
      $this->redirect('default');
    };
    $form->onFinished[]=function($message=null){
      if (!empty($message)){
        $this->flashMessage($message);
      }
      $this->redirect('default');
    };
    $form->onFailed[]=function($message=null){
      if (!empty($message)){
        $this->flashMessage($message,'error');
      }
      $this->redirect('default');
    };
    return $form;
  }

  #region injections
  public function injectPostersFacade(PostersFacade $postersFacade):void {
    $this->postersFacade=$postersFacade;
  }
  public function injectPosterEditFormFactory(PosterEditFormFactory $posterEditFormFactory):void {
    $this->posterEditFormFactory=$posterEditFormFactory;
  }
  #endregion injections
}
