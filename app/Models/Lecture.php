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

    public function passed($date, $time)
    {
        $y =$date->format('Y');
        $m =$date->format('m');
        $d =$date->format('d');
        $part = Carbon::createFromTimeString($time); 
        $h = $part->format('H'); 
        $i = $part->format('i'); 
        $lectureTime = Carbon::create($y,$m,$d,$h,$i);
    
        return Carbon::now()->gte($lectureTime);

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
