@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-md-8 mx-auto">
        @foreach ($lectures as $lecture)
        <article class="najava najava-naslovna najava-bez-slike">
            <div class="najava-index-levo"><span class="najava-datum-dan">{{$lecture->day($lecture->date)}}</span><span class="najava-datum-mesec">{{$lecture->month($lecture->date)}}</span><span class="najava-datum-vreme">{{$lecture->view($lecture->time)}} </span>
            </div>
            <div class="najava-index-desno">
                <h3 class="najava-naslov">
                    <a href="#">{{$lecture->name}}</a>
                </h3>
                <div class="najava-ukratko"></div>
            </div>
        </article>
        @endforeach  
    </div>
</div>
@endsection