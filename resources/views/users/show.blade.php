@extends('layouts.master')

@section('content')
<a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
    <div class="container">
        <div class="row">
            <div class="col-sm-10 mx-auto">
                <h2 class="my-4">Informacije o korisniku</h2>
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
                
                <h3 class="mb-3">Promeni rolu</h3>
                <form action="{{ route('user.update', $user) }}" method="POST">
                    @csrf
                    @method('put')

                    @foreach ($roles as $role)
                    <div class="custom-control custom-radio mb-3">
                        <input type="radio" id="role{{$role->id}}" name="roles" class="custom-control-input" value="{{$role->id}}" {{$user->roles->contains($role->id)  ? 'checked' : ''}}>
                        <label class="custom-control-label" for="role{{$role->id}}">{{$role->name}}</label>
                    </div>
                    @endforeach 

                    <button class="btn btn-outline-primary" type="submit">Promeni rolu</button>
                </form>
            </div>
        </div>
    </div>
@endsection