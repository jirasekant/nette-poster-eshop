<?php

namespace App\Model\Repositories;

use LeanMapper\Repository;

class OrderRepository extends Repository
{
    public function getSalesForLastMonth(): float
    {
        $result = $this->connection->select('SUM(o.total_amount) AS total')
            ->from('[order] o')
            ->where('o.status = %s', 'completed')
            ->where('o.created >= DATE_SUB(NOW(), INTERVAL 1 MONTH)')
            ->fetch();

        return $result ? (float)$result->total : 0;
    }

    public function getOpenOrdersCount(): int
    {
        $result = $this->connection->select('COUNT(*) AS count')
            ->from('[order] o')
            ->where('o.status = %s', 'pending')
            ->fetch();

        return $result ? (int)$result->count : 0;
    }
}
