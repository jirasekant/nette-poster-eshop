<?php

namespace App\Model\Repositories;

use LeanMapper\Repository;
use LeanMapper\Entity;

class PosterRepository extends BaseRepository
{
    public function findAll(): array
    {
        $result = $this->connection->select('DISTINCT p.*')
            ->from('[poster] p')
            ->fetchAll();
            
        return $this->createEntities($result);
    }

    public function findByCategory(int $categoryId): array
    {
        $result = $this->connection->select('DISTINCT p.*')
            ->from('[poster] p')
            ->join('[poster_category] pc')->on('p.poster_id = pc.poster_id')
            ->where('pc.category_id = %i', $categoryId)
            ->fetchAll();
            
        return $this->createEntities($result);
    }

    public function findNewest(int $limit = 4): array
    {
        $result = $this->connection->select('DISTINCT p.*')
            ->from('[poster] p')
            ->orderBy('p.created_at DESC')
            ->limit($limit)
            ->fetchAll();
        
        return $this->createEntities($result);
    }

    public function findRandom(int $limit = 4): array
    {
        $result = $this->connection->select('DISTINCT p.*')
            ->from('[poster] p')
            ->orderBy('RAND()')
            ->limit($limit)
            ->fetchAll();
            
        return $this->createEntities($result);
    }

    public function findPopular(int $limit = 4): array
    {
        $result = $this->connection->select('DISTINCT p.*')
            ->from('[poster] p')
            ->orderBy('RAND()')
            ->limit($limit)
            ->fetchAll();
            
        return $this->createEntities($result);
    }

    public function findRelated(int $posterId, int $limit = 4): array
    {
        $result = $this->connection->select('DISTINCT p.*')
            ->from('[poster] p')
            ->where('p.poster_id != %i', $posterId)
            ->orderBy('RAND()')
            ->limit($limit)
            ->fetchAll();
            
        return $this->createEntities($result);
    }

    public function findByAuthor(int $authorId): array
    {
        $result = $this->connection->select('DISTINCT p.*')
            ->from('[poster] p')
            ->where('p.author_id = %i', $authorId)
            ->fetchAll();
            
        return $this->createEntities($result);
    }
    public function getBestSellingPosters(): array
    {
        $result = $this->connection->select('p.title, SUM(oi.count) AS total_sold')
            ->from('[order_item] oi')
            ->innerJoin('[poster_size] ps ON oi.poster_size_id = ps.poster_size_id')
            ->innerJoin('[poster] p ON ps.poster_id = p.poster_id')
            ->groupBy('ps.poster_id')
            ->orderBy('total_sold DESC')
            ->limit(5)
            ->fetchAll();

        return $this->createEntities($result);
    }

    public function updatePosterCategories(\App\Model\Entities\Poster $poster, mixed $categoryIds): void
    {
        // First, delete the existing categories for this poster to avoid duplicates
        $this->connection->delete('poster_category')
            ->where('poster_id = ?', $poster->getPosterId())
            ->execute();

        // Now, insert the new categories for the poster
        foreach ($categoryIds as $categoryId) {
            $this->connection->insert('poster_category', [
                'poster_id' => $poster->getPosterId(),
                'category_id' => $categoryId
            ])
                ->execute();
        }
    }
} 