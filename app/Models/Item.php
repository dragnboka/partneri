<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    public function packet()
    {
        return $this->belongsToMany(Packet::class, 'packet_item');
    }
}
