@extends('layouts.master')

@section('content')
    <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
    <div class="row">
        <div class="col-sm-11">
            <img class="w-25 mb-3 d-block mx-auto" src="/storage/{{$company->name}}/{{$company->logo}}" alt="logo kompanije">
            <table class="table table-striped table-bordered table-hover">
               <tr>
                   <th>Ime Kompanije</th>
                   <td>{{$company->name}}</td>
                </tr>
                <tr>
                    <th>Adresa Kompanije</th>
                    <td>{{$company->address}}</td>
                </tr>
                <tr>
                    <th>Grad</th>
                    <td>{{$company->city}}</td>
                </tr>
                <tr>
                    <th>Postanski broj Kompanije</th>
                    <td>{{$company->postal_code}}</td>
                </tr>
                <tr>
                    <th>Drazava Kompanije</th>
                    <td>{{$company->country}}</td>
                </tr>
                <tr>
                    <th>Telefon Kompanije</th>
                    <td>{{$company->phone}}</td>
                </tr>
                <tr>
                    <th>Email Kompanije</th>
                    <td>{{$company->email}}</td>
                </tr>
                <tr>
                    <th>Pib Kompanije</th>
                    <td>{{$company->pib}}</td>
                </tr>
                <tr>
                    <th>Broj racuna Kompanije</th>
                    <td>{{$company->bank_account}}</td>
                </tr>
                <tr>
                    <th>Ime Kontakt Osobe</th>
                    <td>{{$company->contact->first_name}}</td>
                </tr>
                <tr>
                    <th>Prezime Kontakt Osobe</th>
                    <td>{{$company->contact->last_name}}</td>
                </tr>
                <tr>
                    <th>Email Kontakt Osobe</th>
                    <td>{{$company->contact->email}}</td>
                </tr>
                <tr>
                    <th>Telefon Kontakt Osobe</th>
                    <td>{{$company->contact->phone}}</td>
                </tr>
            </table>

            <table class="table">
                <tr>
                    <th>tip</th>
                    <th>paket</th>
                    <th>start</th>
                    <th>end</th>
                </tr>
                @if (count($company->moneyContracts))
                    @foreach ($company->moneyContracts as $packet)
                        <tr>
                            <td>Novcani</td>
                            <td>{{$packet->name}}</td>
                            <td>{{$packet->pivot->start_of_contract}}</td>
                            <td>{{$packet->pivot->end_of_contract}}</td>
                        </tr>
                    @endforeach
                @endif

                @if (count($company->donatigContracts))
                    @foreach ($company->donatigContracts as $packet)
                    <tr>
                        <td>Donatorski</td>
                        <td>{{$packet->name}}</td>
                        <td>{{$packet->pivot->start_of_contract}}</td>
                        <td>{{$packet->pivot->end_of_contract}}</td>
                    </tr>
                    @endforeach 
                @endif
                
            </table>
            
        </div>
        <div class="col-sm-1"> 
            <a class="btn btn-outline-primary" href="{{ route('company.edit', $company) }}">Edit</a>
        </div>
    </div>
    
@endsection
