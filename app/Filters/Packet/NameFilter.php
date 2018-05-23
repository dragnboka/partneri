<?php

namespace App\Filters\Packet;

use App\Filters\FilterAbstract;
use Illuminate\Database\Eloquent\Builder;

class NameFilter extends FilterAbstract
{
    public function filter(Builder $builder, $direction)
    {
        return $builder->orderBy('name', $this->resolveOrderDirection($direction));
    }
}
