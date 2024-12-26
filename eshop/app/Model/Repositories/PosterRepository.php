<?php

namespace App\Model\Repositories;

use LeanMapper\Repository;

class PosterRepository extends Repository
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
            ->orderBy('p.poster_id DESC')
            ->limit($limit)
            ->fetchAll();
        
        return $this->createEntities($result);
    }

    public function findPopular(int $limit = 4): array
    {
        $result = $this->connection->select('DISTINCT p.*')
            ->from('[poster] p')
            ->limit($limit)
            ->fetchAll();
            
        return $this->createEntities($result);
    }
} 