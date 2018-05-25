<?php

namespace App\Filters\Company;

use App\Filters\FilterAbstract;
use Illuminate\Database\Eloquent\Builder;

class PacketFilter extends FilterAbstract
{
    public function filter(Builder $builder, $value)
    {
        return $builder->whereHas('studies', function (Builder $builder) use ($value) {
            $builder->where('name', $value);
        });
    }
}
