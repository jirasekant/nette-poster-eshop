<?php

namespace App\FrontModule\Components\OrderForm;

use App\FrontModule\Components\ProductCartForm\ProductCartForm;

/**
 * Interface ProductCartFormFactory
 * @package App\FrontModule\Components\ProductCartForm
 */
interface OrderFormFactory{

  public function create():OrderForm;

}