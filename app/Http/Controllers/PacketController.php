<?php

namespace App\Http\Controllers;

use App\Models\Packet;
use Illuminate\Http\Request;

class PacketController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('packet.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $packet = new Packet;
        $packet->name = $request->name;
        $packet->value = $request->value;
        $packet->duration = $request->duration;
        $packet->number_of_partners = $request->number_of_partners;
       
        $packet->save();

        return back()->with('success', "$packet->name Paket upravo je kreiran");
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Packet  $packet
     * @return \Illuminate\Http\Response
     */
    public function show(Packet $packet)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Packet  $packet
     * @return \Illuminate\Http\Response
     */
    public function edit(Packet $packet)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Packet  $packet
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Packet $packet)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Packet  $packet
     * @return \Illuminate\Http\Response
     */
    public function destroy(Packet $packet)
    {
        //
    }
}
