<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Filters\Company\CompaniesFilters;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class Company extends Model
{
    public function scopeFilter(Builder $builder, Request $request)
    {
        return (new CompaniesFilters($request))->filter($builder);
    }

    public function contact()
    {
        return $this->hasOne(CompanyContact::class);
    }

    public function moneyContract()
    {
        return $this->hasOne(MoneyContract::class);
    }

    public function users()
    {
        return $this->belongsToMany(User::class);
    }

    public function ads()
    {
        return $this->hasMany(Ad::class);
    }

    public function lectures()
    {
        return $this->hasMany(Lecture::class);
    }
}
