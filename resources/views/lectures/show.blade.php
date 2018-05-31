@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-md-10 mx-auto">
        <article>
            <header>
                <h1 class="pb-2 ">{{$lecture->name}}</h1>
                <table class="table w-auto">
                    <tr class="table-info">
                        <td>Vreme</td>
                        <td>{{$lecture->date->toFormattedDateString()}} {{$lecture->time}}
                        </td>
                    </tr>
                    <tr class="table-info">
                        <td>Predavac</td>
                        <td>{{$lecture->fullName}}</td>
                    </tr>
                    <tr class="table-info">
                        <td>Mesto</td>
                        <td>{{$lecture->classroom}}</td>
                    </tr>
                </table>
            </header>
            <div>
                <p>{{$lecture->description}}</p>
            </div>

            @if ($lecture->cv)
            <div>
                <h3 class="pb-3">Biografija predavaca</h3>
                <p class="clearfix">
                    @if ($lecture->picture)
                    <img class="float-left pr-2" src="/storage/lectures/{{$lecture->company->name}}/picture/{{$lecture->picture}}" alt="slika">
                    @endif
                    {{$lecture->cv}}  
                </p>
            </div> 
            @endif

            @if ($lecture->file)
            <h3 class="py-2">Fajl sa predavanja</h3>
            <p>
                <i class="fa fa-file mr-2" aria-hidden="true"></i>
                <a download="{{$lecture->file}}" href="/storage/lectures/{{$lecture->company->name}}/file/{{$lecture->file}}">{{$lecture->file}}</a>
            </p>
            @endif
        </article>
      
    </div>
</div>
@endsection