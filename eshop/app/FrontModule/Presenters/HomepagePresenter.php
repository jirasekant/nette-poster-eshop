<?php

namespace App\FrontModule\Presenters;

use App\Model\Facades\PostersFacade;

class HomepagePresenter extends BasePresenter {
    private PostersFacade $postersFacade;

    public function renderDefault(): void {
        $this->template->posters = $this->postersFacade->findPosters([
            'order' => 'title',
            'available' => true
        ]);
    }

    public function injectPostersFacade(PostersFacade $postersFacade): void {
        $this->postersFacade = $postersFacade;
    }
}
