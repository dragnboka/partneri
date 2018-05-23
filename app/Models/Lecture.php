<?php

namespace App\Models;

//use DateTime;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Lecture extends Model
{
    protected $dates = [
        // 'vreme',
        //'date',
    ];

    public function day($date)
    {
        return Carbon::createFromFormat('Y-m-d', $date)->format('j'); 
    }

    public function month($date)
    {
        return Carbon::createFromFormat('Y-m-d', $date)->format('M'); 
    }
    
    public function view($vreme)
    {    
        return \Carbon\Carbon::createFromTimeString($vreme)->format('H:i'); 
        //return DateTime::createFromFormat('H:i:s', $vreme)->format('H:i');  
    }
   
    public function company()
    {
        return $this->belongsTo(Company::class);
    }
}
