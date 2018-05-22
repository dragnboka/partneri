<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    public function contact()
    {
        return $this->hasOne(CompanyContact::class);
    }
}
