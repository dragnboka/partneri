@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-md-8 mx-auto">
        @foreach ($lectures as $lecture)
        <article class="najava najava-naslovna najava-bez-slike">
            <div class="najava-index-levo">
                <span class="najava-datum-dan">{{$lecture->date->format('j')}}</span><span class="najava-datum-mesec">{{$lecture->date->format('M')}}</span><span class="najava-datum-vreme">{{$lecture->time($lecture->time)}} </span>
            </div>
            <div class="najava-index-desno">
                <h3 class="najava-naslov">
                    <a href="{{ route('lecture.show', $lecture) }}">{{$lecture->name}}</a>
                </h3>
                <div class="najava-ukratko"></div>
            </div>
        </article>
        @endforeach  
    </div>
</div>
@endsection