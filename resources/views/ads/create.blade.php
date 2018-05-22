@extends('layouts.master')

@section('content')
    <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
    <div class="row">
        <div class="col-sm-10 mx-auto">
            <div class="card">
                <div class="card-header">{{ __('Create Ad') }}</div>
        
                <div class="card-body">
                    <form method="POST" action="{{ route('ad.store') }}">
                        @csrf

                        <div class="form-group">
                            <label for="name" class="col-form-label">{{ __('Ime') }}</label>
                            <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" >
    
                            @if ($errors->has('name'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('name') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="description" class="col-form-label">{{ __('Opis') }}</label>
                            <input id="description" type="text" class="form-control{{ $errors->has('description') ? ' is-invalid' : '' }}" name="description" value="{{ old('description') }}" >
    
                            @if ($errors->has('description'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('description') }}</strong>
                                </span>
                            @endif
                        </div>
                        
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="practice" name="practice" value="1">
                            <label class="custom-control-label" for="practice">Praksa</label>
                        </div>
                        

                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="job" name="job"  value="1">
                            <label class="custom-control-label" for="job">Posao</label>
                        </div>
                        
                        <div class="form-group">
                            <label for="file">Upload file</label>
                            <input type="file" name="file" class="form-control-file" id="file">
                        </div>

                        <select name="company" class="form-control mb-3">
                            <option disabled selected>Select company</option>
                            @foreach ($companies as $company)
                                <option value="{{$company->id}}">{{$company->name}}</option>
                            @endforeach
                        </select>
                           
                        <button type="submit" class="btn btn-primary">
                            {{ __('Create ad') }}
                        </button>
                           
                    </form>
                </div>
            </div>
        </div>
    </div>
    
@endsection
