@extends('layouts.master')

@section('content')
<a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
    <div class="container">
        <div class="row">
            <div class="col-sm-10 mx-auto">
                @if(count($users))
                <h2 class="my-2">Clanovi koji cekaju odobrenje</h2>
                <table class="table">
                    <tr>
                        <th>Username</th>
                        <th>Ime</th>
                        <th>Prezime</th>
                    </tr>
                    @foreach ($users as $user)
                        <tr>
                            <td>{{$user->username}}</td>
                            <td>{{$user->firstname}}</td>
                            <td>{{$user->lastname}}</td>
                        </tr>
                    @endforeach
                </table>
                @else
                    <h2 class="my-2">Trenutno nema clanova koji cekaju odobrenje</h2>
                @endif
            </div>
        </div>
    </div>
@endsection