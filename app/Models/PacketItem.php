<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PacketItem extends Model
{
    public function company()
    {
        return $this->belongsTo(Packet::class);
    }
}
