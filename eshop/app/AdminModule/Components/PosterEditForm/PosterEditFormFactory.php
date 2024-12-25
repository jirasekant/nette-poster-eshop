<?php

namespace App\AdminModule\Components\PosterEditForm;

/**
 * Interface PosterEditFormFactory
 * @package App\AdminModule\Components\PosterEditForm
 */
interface PosterEditFormFactory {
    public function create(): PosterEditForm;
} 