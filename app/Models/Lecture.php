<?php

namespace App\Models;

//use DateTime;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Lecture extends Model
{
    protected $dates = [
        // 'time',
        'date',
    ];

    public function getFullNameAttribute()
    {
        return $this->first_name . ' ' . $this->last_name;
    }
    
    public function time($vreme)
    {    
        return Carbon::createFromTimeString($vreme)->format('H:i'); 
        //return DateTime::createFromFormat('H:i:s', $vreme)->format('H:i');  
    }
   
    public function company()
    {
        return $this->belongsTo(Company::class);
    }
}
