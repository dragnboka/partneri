<?php

use Carbon\Carbon;

if (!function_exists('expiring_in_two_months')) {
    function expiring_in_two_months($date) 
    { 
        Carbon::useMonthsOverflow(false);
        $first = Carbon::now();
        $second = $first->copy()->addMonths(2);  
        return Carbon::createFromFormat('Y-m-d', $date)->between($first, $second);
    } 
}