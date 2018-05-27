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

    public function moneyContracts()
    {
        return $this->belongsToMany(Packet::class, 'money_contract')->using(MoneyContract::class)->withPivot('start_of_contract', 'end_of_contract');
    }

    public function donatigContracts()
    {
        return $this->belongsToMany(Packet::class, 'donating_contract')->using(DonatingContract::class)->withPivot('start_of_contract', 'end_of_contract');
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
