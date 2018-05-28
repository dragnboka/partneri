@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-md-8 mx-auto">
        <h2>Партнери факултета</h2>
        <div class="strana-body">
            <ul>
                @foreach ($packets as $packet)
                    <li class="border-top-0">
                        <a href="/#{{$packet->name}}">{{$packet->name}}</a>
                    </li>
                @endforeach
            </ul>
            <div>
                @foreach ($packets as $packet)
                    <h2 id="{{$packet->name}}">{{$packet->name}}</h2>
                    <div class="{{$packet->name}}logo">
                        @foreach ($packet->all as $company)
                        <div class="{{$packet->name}} clearfix">
                            <a href=""><img src="{{$company->logo}}" alt="logo kompanije"></a>
                            <p>{{$company->description}}</p>
                        </div>
                        @endforeach
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
@endsection
