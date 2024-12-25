<?php

namespace App\FrontModule\Components\PosterCartForm;

/**
 * Interface PosterCartFormFactory
 * @package App\FrontModule\Components\PosterCartForm
 */
interface PosterCartFormFactory {
    public function create(): PosterCartForm;
} 