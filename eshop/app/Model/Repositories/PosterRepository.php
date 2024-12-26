<?php

namespace App\Model\Repositories;

use LeanMapper\Repository;
use Tracy\Debugger;

class PosterRepository extends Repository
{
    public function findNewest(int $limit = 4): array
    {
        $result = $this->connection->select('DISTINCT p.*')
            ->from('[poster] p')
            ->orderBy('p.poster_id DESC')
            ->limit($limit)
            ->fetchAll();
        
        Debugger::barDump($result, 'Raw SQL Result');
        
        $entities = $this->createEntities($result);
        Debugger::barDump($entities, 'Created Entities');
        
        return $entities;
    }

    public function findPopular(int $limit = 4): array
    {
        $result = $this->connection->select('DISTINCT p.*')
            ->from('[poster] p')
            ->limit($limit)
            ->fetchAll();
            
        Debugger::barDump($result, 'Raw SQL Result - Popular');
        
        $entities = $this->createEntities($result);
        Debugger::barDump($entities, 'Created Entities - Popular');
        
        return $entities;
    }
} 