<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Filters\Packet\SubjectFilters;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class Packet extends Model
{
    public function scopeFilter(Builder $builder, Request $request)
    {
        return (new SubjectFilters($request))->filter($builder);
    }

    public function items()
    {
        return $this->hasMany(PacketItem::class);
    }

    public function moneyContracts()
    {
        return $this->hasMany(MoneyContract::class);
    }
}
