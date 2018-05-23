<?php

namespace App\Filters\Packet;

use App\Filters\FilterAbstract;
use Illuminate\Database\Eloquent\Builder;

class ValueFilter extends FilterAbstract
{
    public function filter(Builder $builder, $direction)
    {
        return $builder->orderBy('value', $this->resolveOrderDirection($direction));
    }
}
