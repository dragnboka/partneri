@extends('layouts.master')

@section('content')
    <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
    <div class="card">
        <div class="card-header">Dashboard</div>

        @role('clan')
        <div class="card-body">
            <h2>пет компанија са најскорије потписаним уговорима </h2>
            <table class="table">
                <tr>
                    <th>Name</th>
                    <th>Country</th>
                    <th>City</th>
                </tr>
                @foreach ($companies as $company)
                    <tr class="{{$company->user_id == auth()->user()->id ? 'bg-danger' : ''}}">
                        <td><a href="{{ route('company.show', $company->id) }}">{{$company->name}}</a></td>
                        <td>{{$company->country}}</td>
                        <td>{{$company->city}}</td>
                    </tr>
                @endforeach
            </table>

            <h2>пет компанија којима у наредном периоду истичу уговори</h2>
            <table class="table">
                <tr>
                    <th>Name</th>
                    <th>Country</th>
                    <th>City</th>
                </tr>
                @foreach ($companiesExpiring as $company)
                    <tr class="{{$company->user_id == auth()->user()->id ? 'bg-danger' : ''}}">
                        <td><a href="{{ route('company.show', $company->id) }}">{{$company->name}}</a></td>
                        <td>{{$company->country}}</td>
                        <td>{{$company->city}}</td>
                    </tr>
                @endforeach
            </table>
        </div>
        @endrole

        @role('it manager','admin')
        <h2 class="my-4 p-2">Kompanije kojima istice ugovor u naredna 6 meseca</h2>
        
        <timeline></timeline>

        <table class="table my-2">
            <tr>
                <th>Name</th>
                <th>Country</th>
                <th>City</th>
                <th>Email</th>
            </tr>
            @foreach ($inSixMonths as $company)
                <tr>
                    <td><a href="{{ route('company.show', $company->id) }}">{{$company->name}}</a></td>
                    <td>{{$company->country}}</td>
                    <td>{{$company->city}}</td>
                    @if (expiring_in_two_months($company->end_of_contract))
                    <td><a class="btn btn-outline-primary" href="{{ route('email.expiring.in.two', $company->id) }}">Email</a></td>   
                    @endif 
                </tr>
            @endforeach
        </table>

        <h2 class="my-4 p-2">Kompanije kojima je istekao ugovor prethodnih 6 meseci</h2>
        <table class="table">
            <tr>
                <th>Name</th>
                <th>Country</th>
                <th>City</th>
                <th>email</th>
            </tr>
            @foreach ($expiredLastSixMonth as $company)
                <tr>
                    <td><a href="{{ route('company.show', $company->id) }}">{{$company->name}}</a></td>
                    <td>{{$company->country}}</td>
                    <td>{{$company->city}}</td>
                    <td><a class="btn btn-outline-primary" href="{{ route('email.expired', $company->id) }}">Email</a></td>
                </tr>
            @endforeach
        </table>
        @endrole
    </div>
@endsection
