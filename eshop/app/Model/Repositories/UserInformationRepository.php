<?php

declare(strict_types=1);

namespace App\Model\Repositories;

class UserInformationRepository extends BaseRepository
{
    public function findByUser(int $userId): ?array
    {
        return $this->findAllBy(['user_id' => $userId]);
    }
} 