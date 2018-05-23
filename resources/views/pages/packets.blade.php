@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-md-8 mx-auto">
        <div>
            <div class="d-flex justify-content-around">
                @include('pages.partials._filters') 
            </div>
            @if (count(array_intersect(array_keys(request()->query()), array_keys($mappings))))
                <p class="text-center">
                    <a href="{{ route('packet.item') }}">Clear all filters</a>
                </p>
            @endif
        </div>
        <p>У добром духу сарадње академских институција и привреде, Електротехнички факултет у Београду жели да заинтересованим компанијама понуди сарадњу и контакт са студентима, дипломцима и запосленима у виду партнерских пакета.</p>    
        <div class="strana-body">
            @foreach ($packets as $packet)
            <h2 class="my-4">{{$packet->name}}</h2>
            <h3>Цена на годишњем нивоу {{$packet->value}}€</h3>
            <ul>
                @foreach ($packet->items as $item)
                    <li>{{$item->description}}</li>
                @endforeach
            </ul>
            @endforeach
        </div>
    </div>
</div>
@endsection
