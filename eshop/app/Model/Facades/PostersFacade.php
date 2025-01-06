<?php

namespace App\Model\Facades;

use App\Model\Entities\Poster;
use App\Model\Repositories\PosterRepository;
use Nette\Http\FileUpload;
use Nette\Utils\Strings;

/**
 * Class PostersFacade
 * @package App\Model\Facades
 */
class PostersFacade {
    private PosterRepository $posterRepository;

    /**
     * Method for getting one poster
     * @param int $id
     * @return Poster
     * @throws \Exception
     */
    public function getPoster(int $id): Poster {
        return $this->posterRepository->find($id);
    }

    /**
     * Method for getting poster by URL
     * @param string $url
     * @return Poster
     * @throws \Exception
     */
    public function getPosterByUrl(string $url): Poster {
        return $this->posterRepository->findBy(['url' => $url]);
    }

    /**
     * Method for getting count of posters
     * @param array|null $params
     * @return int
     */
    public function findPostersCount(array $params = null): int {
        return $this->posterRepository->findCountBy($params);
    }

    /**
     * Method for saving poster
     * @param Poster &$poster
     */
    public function savePoster(Poster &$poster): void {
        if (empty($poster->url)) {
            $baseUrl = Strings::webalize($poster->title);
        } else {
            $baseUrl = $poster->url;
        }

        $urlNumber = 1;
        $url = $baseUrl;
        $posterId = isset($poster->posterId) ? $poster->posterId : null;
        try {
            while ($existingPoster = $this->getPosterByUrl($url)) {
                if ($existingPoster->posterId == $posterId) {
                    $poster->url = $url;
                    break;
                }
                $urlNumber++;
                $url = $baseUrl . $urlNumber;
            }
        } catch (\Exception $e) {
            // poster not found => URL is usable
        }
        $poster->url = $url;

        $this->posterRepository->persist($poster);
    }

    public function findPosters(): array {
        return $this->posterRepository->findAll();
    }


    public function __construct(PosterRepository $posterRepository) {
        $this->posterRepository = $posterRepository;
    }

    public function findAllBy(array $array): array {
        return $this->posterRepository->findAllBy($array);
    }

    public function updatePosterCategories(Poster $poster, mixed $categoryIds) {
        $this->posterRepository->updatePosterCategories($poster, $categoryIds);
    }
} 