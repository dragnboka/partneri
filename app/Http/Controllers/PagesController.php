<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ad;

class PagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function ads()
    {
        $ads = Ad::with('company')->latest()->paginate(20);
        
        return view('pages.ads', compact('ads'));
    }

   

    
}
