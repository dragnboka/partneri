<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{Company, Lecture};
use App\Http\Requests\StoreLecture;
use Illuminate\Support\Facades\Storage;

class LectureController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lectures = Lecture::latest()->get();

        return view('lectures.index', compact('lectures'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $companies = auth()->user()->companies;

        return view('lectures.create', compact('companies'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreLecture $request)
    {
        $company = Company::findOrFail($request->company);

        $lecture = new Lecture;
        $lecture->name = $request->name;
        $lecture->description = $request->description;
        $lecture->classroom = $request->classroom;
        $lecture->date = $request->date;
        $lecture->time = $request->time;
        $lecture->first_name = $request->first_name;
        $lecture->last_name = $request->last_name;
        $lecture->cv = $request->cv;
        if ($request->has('file') && !empty($request->file)) {
            $lecture->file = $request->file->getClientOriginalName();
        }
        if ($request->has('picture') && !empty($request->picture)) {
            $lecture->picture = $request->picture->getClientOriginalName();
        }

        $extension = $request->file('file')->getClientOriginalExtension();
        $name = pathinfo($request->file('file')->getClientOriginalName(), PATHINFO_FILENAME);
            
        Storage::disk('public')->putFileAs(
            'lectures/'.$company->name.'/file', $request->file('file'), $name.'.'.$extension
        );

        $extension1 = $request->file('picture')->getClientOriginalExtension();
        $name1 = pathinfo($request->file('picture')->getClientOriginalName(), PATHINFO_FILENAME);
            
        Storage::disk('public')->putFileAs(
            'lectures/'.$company->name.'/picture', $request->file('picture'), $name1.'.'.$extension1
        );

        $company->lectures()->save($lecture);

        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Lecture  $lecture
     * @return \Illuminate\Http\Response
     */
    public function show(Lecture $lecture)
    {
        return view('lectures.show', ['lecture' => $lecture->load('company')] );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Lecture  $lecture
     * @return \Illuminate\Http\Response
     */
    public function edit(Lecture $lecture)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Lecture  $lecture
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Lecture $lecture)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Lecture  $lecture
     * @return \Illuminate\Http\Response
     */
    public function destroy(Lecture $lecture)
    {
        //
    }
}
