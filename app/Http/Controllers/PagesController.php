<?php

namespace App\Http\Controllers;

use App\Models\{Ad, Packet};
use Illuminate\Http\Request;
use App\Filters\Packet\SubjectFilters;

class PagesController extends Controller
{
    
    public function packet(Request $request)
    {
        $mappings = SubjectFilters::mappings();

        $packets = Packet::filter($request)->with('items')->get();
        
        return view('pages.packets', compact('packets','mappings'));
    }

    public function home()
    {
        $packets = Packet::with('moneyContracts', 'donatigContracts')->find([1,2,3,4,5]);
        
        return view('welcome', compact('packets'));
    }


    
}
