<?php

declare(strict_types=1);

namespace App\Model\Repositories;

class ShopOrderRepository extends BaseRepository
{
    public function persist($entity): void
    {
        parent::persist($entity);
    }

    public function getSalesForLastMonth(): float
    {
        $result = $this->connection->select('SUM(o.total_amount) AS total')
            ->from('shop_order o')
            ->where('o.status = %s', 'completed')
            ->where('o.created >= DATE_SUB(NOW(), INTERVAL 1 MONTH)')
            ->fetch();

        return $result ? (float)$result->total : 0;
    }

    public function getOpenOrdersCount(): int
    {
        $result = $this->connection->select('COUNT(*) AS count')
            ->from('shop_order o')
            ->where('o.status = %s', 'pending')
            ->fetch();

        return $result ? (int)$result->count : 0;
    }

    public function findByUser(int $userId): array
    {
        return $this->findAllBy(['user_id' => $userId], null, null);
    }
} 