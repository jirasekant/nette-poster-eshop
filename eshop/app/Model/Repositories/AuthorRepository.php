<?php

namespace App\Model\Repositories;

use LeanMapper\Repository;

class AuthorRepository extends Repository
{
    public function findAll(): array
    {
        return $this->createEntities(
            $this->connection->select('*')
                ->from($this->getTable())
                ->fetchAll()
        );
    }

    public function findAuthorsWithPosters(): array
    {
        return $this->createEntities(
            $this->connection->select('DISTINCT a.*')
                ->from('[author] a')
                ->join('[poster] p')->on('p.author_id = a.author_id')
                ->orderBy('a.name')
                ->fetchAll()
        );
    }
} 