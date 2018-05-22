<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Company extends Model
{
    public function contact()
    {
        return $this->hasOne(CompanyContact::class);
    }

    public function users()
    {
        return $this->belongsToMany(User::class);
    }

    public function ads()
    {
        return $this->hasMany(Ad::class);
    }
}
