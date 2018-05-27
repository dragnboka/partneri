@extends('layouts.master')

@section('content')
    <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
    <div class="row">
        <div class="col-sm-10 mx-auto">
            <form action="{{ route('company.index') }}" method="GET">
                <div class="form-group">
                    <label for="name" class="col-form-label">{{ __('Ime kompanije') }}</label>
                    <input type="text" id="name" class="form-control" name="name" value="{{request()->input('name')}}"> 
                </div>
                <div class="form-group">
                    <label for="packet" class="col-form-label">{{ __('Paketi') }}</label>
                    <input type="text" id="packet" class="form-control" name="packet" value="{{request()->input('packet')}}"> 
                </div>
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="active" name="active" value="1" {{request()->input('active') == "1" ? 'checked' : ''}}>
                    <label class="custom-control-label" for="active">Sa aktivnim ugovorom</label>
                </div> 
            <button class="btn btn-outline-primary my-3" type="submit">Search</button>
            </form>

            <table class="table">
                <tr>
                    <th>Name</th>
                    <th>Country</th>
                    <th>City</th>
                </tr>
                @foreach ($companies as $company)
                    <tr>
                        <td><a href="{{ route('company.show', $company) }}">{{$company->name}}</a></td>
                        <td>{{$company->country}}</td>
                        <td>{{$company->city}}</td>
                    </tr>
                @endforeach
            </table>

            {{ $companies->appends(request()->query())->links() }}
        </div>
    </div>
    
@endsection
