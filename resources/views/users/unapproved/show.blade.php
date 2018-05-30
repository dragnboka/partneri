@extends('layouts.master')

@section('content')
<a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
    <div class="container">
        <div class="row">
            <div class="col-sm-10">
                <h2 class="my-4">Informacije o neodobrenom korisniku</h2>
                <table class="table">
                    <tr>
                        <th>Username</th>
                        <td>{{$user->username}}</td>
                    </tr>
                    <tr>
                        <th>Ime</th> 
                        <td>{{$user->firstname}}</td>
                    </tr>    
                    <tr>    
                        <th>Prezime</th>
                        <td>{{$user->lastname}}</td>
                    </tr>
                    <tr>    
                        <th>Telefon</th>
                        <td>{{$user->phone}}</td>
                    </tr>
                    <tr>    
                        <th>Datum rodjenja</th>
                        <td>{{$user->dob}}</td>
                    </tr>
                </table>
                
                <h3 class="mb-3">Dodaj rolu</h3>
                <form action="{{ route('user.unapproved.update', $user) }}" method="POST">
                    @csrf
                    @method('put')

                    @foreach ($roles as $role)
                    <div class="custom-control custom-radio mb-3">
                        <input type="radio" id="role{{$role->id}}" name="roles" class="custom-control-input" value="{{$role->id}}">
                        <label class="custom-control-label" for="role{{$role->id}}">{{$role->name}}</label>
                    </div>
                    @endforeach 

                    <button class="btn btn-outline-primary" type="submit">Dodaj rolu</button>
                </form>
            </div>
            <div class="col-sm-2">
                <form action="{{ route('user.unapproved.destroy', $user) }}" method="POST"> 
                    @csrf
                    @method('delete')
                    <button class="btn btn-outline-danger my-4">Izbrisi usera</button>
                </form>
            </div>
        </div>
    </div>
@endsection