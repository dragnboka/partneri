<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ad extends Model
{
    public function practice($value)
    {
        return $value = $value ? 'praksa' : '';
    }

    public function job($value)
    {
        return $value = $value ? 'posao' : '';
    }

    public function company()
    {
        return $this->belongsTo(Company::class);
    }
}
