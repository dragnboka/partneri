<?php

namespace App\Http\Controllers;

use App\Models\{Ad, Packet};
use Illuminate\Http\Request;
use App\Filters\Packet\SubjectFilters;

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
