<?php

namespace App\Http\Controllers;

use App\Models\Ad;
use App\Models\Company;
use Illuminate\Http\Request;
use App\Http\Requests\StoreAd;
use Illuminate\Support\Facades\Storage;

class AdController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ads = Ad::with('company')->latest()->paginate(20);
        
        return view('ads.index', compact('ads'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $companies = auth()->user()->companies;

        return view('ads.create', compact('companies'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreAd $request)
    {
        $company = Company::findOrFail($request->company);

        $ad = new Ad;
        $ad->name = $request->name;
        $ad->description = $request->description;
        if ($request->has('practice')) {
            $ad->practice = $request->practice;
        }
        if ($request->has('job')) {
            $ad->job = $request->job;
        }
        if ($request->has('file') && !empty($request->file)) {
            $ad->file = $request->file->getClientOriginalName();

            $extension = $request->file('file')->getClientOriginalExtension();
            $name = pathinfo($request->file('file')->getClientOriginalName(), PATHINFO_FILENAME);
            
            Storage::disk('public')->putFileAs(
                'ads/'.$company->name, $request->file('file'), $name.'.'.$extension
            );
        }

        $company->ads()->save($ad);

        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Ad  $ad
     * @return \Illuminate\Http\Response
     */
    public function show(Ad $ad)
    {
        $ad = Ad::where('id', $ad->id)->with('company')->firstOrFail();

        return view('ads.show', compact('ad'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Ad  $ad
     * @return \Illuminate\Http\Response
     */
    public function edit(Ad $ad)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Ad  $ad
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Ad $ad)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Ad  $ad
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ad $ad)
    {
        //
    }
}
