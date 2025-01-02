<?php

namespace App\Model\Repositories;

use LeanMapper\Repository;
use LeanMapper\Entity;

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

    public function find(int $posterId): ?Entity
    {
        $result = $this->connection->select('p.*')
            ->from('[poster] p')
            ->where('p.poster_id = %i', $posterId)
            ->fetch();
        
        return $result ? $this->createEntity($result) : null;
    }

    public function findByAuthor(int $authorId): array
    {
        $result = $this->connection->select('DISTINCT p.*')
            ->from('[poster] p')
            ->where('p.author_id = %i', $authorId)
            ->fetchAll();
            
        return $this->createEntities($result);
    }
} 