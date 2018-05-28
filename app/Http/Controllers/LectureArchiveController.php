<?php

namespace App\Http\Controllers;

use App\Models\Lecture;
use Illuminate\Http\Request;

class LectureArchiveController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lectures = Lecture::whereRaw('now() >= CONCAT_WS(" ",date,time)')
        ->get();

        return view('lectures.archive.index', compact('lectures'));
    }

}
