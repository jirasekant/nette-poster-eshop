<?php

namespace App\FrontModule\Presenters;

use App\Model\Repositories\PosterRepository;
use App\Model\Repositories\CategoryRepository;
use App\Model\Repositories\AuthorRepository;
use App\FrontModule\Components\CartControl\CartControl;
use App\FrontModule\Components\CartControl\CartControlFactory;
use App\FrontModule\Components\UserLoginControl\UserLoginControl;
use App\FrontModule\Components\UserLoginControl\UserLoginControlFactory;
use Nette\Application\AbortException;
use Nette\Application\ForbiddenRequestException;

/**
 * Class BasePresenter
 * @package App\FrontModule\Presenters
 */
abstract class BasePresenter extends \Nette\Application\UI\Presenter {
  private UserLoginControlFactory $userLoginControlFactory;
  private CartControlFactory $cartControlFactory;
  private PosterRepository $posterRepository;
  private CategoryRepository $categoryRepository;
  private AuthorRepository $authorRepository;

  public function injectPosterRepository(PosterRepository $posterRepository): void {
    $this->posterRepository = $posterRepository;
  }

  public function injectCategoryRepository(CategoryRepository $categoryRepository): void {
    $this->categoryRepository = $categoryRepository;
  }

  public function injectAuthorRepository(AuthorRepository $authorRepository): void {
    $this->authorRepository = $authorRepository;
  }

  /**
   * @throws ForbiddenRequestException
   * @throws AbortException
   */
  protected function startup(){
    parent::startup();
    $presenterName = $this->request->presenterName;
    $action = !empty($this->request->parameters['action'])?$this->request->parameters['action']:'';

    if (!$this->user->isAllowed($presenterName,$action)){
      if ($this->user->isLoggedIn()){
        throw new ForbiddenRequestException();
      }else{
        $this->flashMessage('Pro zobrazení požadovaného obsahu se musíte přihlásit!','warning');
        //uložíme původní požadavek - předáme ho do persistentní proměnné v UserPresenteru
        $this->redirect('User:login', ['backlink' => $this->storeRequest()]);
      }
    }
  }

  /**
   * Komponenta pro zobrazení údajů o aktuálním uživateli (přihlášeném či nepřihlášeném)
   * @return UserLoginControl
   */
  public function createComponentUserLogin():UserLoginControl {
    return $this->userLoginControlFactory->create();
  }

  /**
   * Komponenta košíku
   * @return CartControl
   */
  public function createComponentCart():CartControl {
    return $this->cartControlFactory->create();
  }

  #region injections
  public function injectUserLoginControlFactory(UserLoginControlFactory $userLoginControlFactory):void {
    $this->userLoginControlFactory=$userLoginControlFactory;
  }

  public function injectCartControlFactory(CartControlFactory $cartControlFactory):void {
    $this->cartControlFactory=$cartControlFactory;
  }
  #endregion injections

  protected function beforeRender(): void
  {
    parent::beforeRender();
    
    // Add cart data to template
    $cartControl = $this->getComponent('cart');
    if ($cartControl instanceof CartControl) {
        $this->template->cart = $cartControl->getCurrentCart();
    }
    
    // Add categories and authors to template for navigation
    $this->template->categories = $this->categoryRepository->findAll();
    $this->template->authors = $this->authorRepository->findAuthorsWithPosters();
    
    // Add user info to template
    $this->template->user = $this->getUser();
  }
}