<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MoneyContract extends Model
{
    public function company()
    {
        return $this->belongsTo(Company::class);
    }

    public function packet()
    {
        return $this->belongsTo(Packet::class);
    }
}
