@extends('layouts.master')

@section('content')
    <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
    <div class="row">
        <div class="col-sm-10 mx-auto">
            <div class="card">
                <div class="card-header">{{ __('Kreiraj Predavanje') }}</div>
        
                <div class="card-body">
                    <form method="POST" action="{{ route('lecture.store') }}" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group">
                            <label for="name" class="col-form-label">{{ __('Naslov') }}</label>
                            <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" autofocus>
    
                            @if ($errors->has('name'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('name') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="description" class="col-form-label">{{ __('Opis') }}</label>
                            <textarea id="description" class="form-control{{ $errors->has('description') ? ' is-invalid' : '' }}" name="description">{{ old('description') }}</textarea>
    
                            @if ($errors->has('description'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('description') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="classroom" class="col-form-label">{{ __('Sala') }}</label>
                            <input id="classroom" type="text" class="form-control{{ $errors->has('classroom') ? ' is-invalid' : '' }}" name="classroom" value="{{ old('classroom') }}" >
    
                            @if ($errors->has('classroom'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('classroom') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="date" class="col-form-label">{{ __('Datum') }}</label>
                            <input id="date" type="date" class="form-control{{ $errors->has('date') ? ' is-invalid' : '' }}" name="date" value="{{ old('date') }}" >
    
                            @if ($errors->has('date'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('date') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="time" class="col-form-label">{{ __('Vreme') }}</label>
                            <input id="time" type="time" class="form-control{{ $errors->has('time') ? ' is-invalid' : '' }}" name="time" value="{{ old('time') }}" >
    
                            @if ($errors->has('time'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('time') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="row">
                           <div class="col-md-6">
                                <div class="form-group">
                                    <label for="first_name" class="col-form-label">{{ __('Ime') }}</label>
                                    <input id="first_name" type="text" class="form-control{{ $errors->has('first_name') ? ' is-invalid' : '' }}" name="first_name" value="{{ old('first_name') }}" >
            
                                    @if ($errors->has('first_name'))
                                        <span class="invalid-feedback">
                                            <strong>{{ $errors->first('first_name') }}</strong>
                                        </span>
                                    @endif
                                </div>
                           </div>
                           <div class="col-md-6">
                                <div class="form-group">
                                    <label for="last_name" class="col-form-label">{{ __('Prezime') }}</label>
                                    <input id="last_name" type="text" class="form-control{{ $errors->has('last_name') ? ' is-invalid' : '' }}" name="last_name" value="{{ old('last_name') }}" >
            
                                    @if ($errors->has('last_name'))
                                        <span class="invalid-feedback">
                                            <strong>{{ $errors->first('last_name') }}</strong>
                                        </span>
                                    @endif
                                </div>
                           </div>
                        </div>

                        <div class="form-group">
                            <label for="cv" class="col-form-label">{{ __('Biografija') }}</label>
                            <textarea id="cv" class="form-control{{ $errors->has('cv') ? ' is-invalid' : '' }}" name="cv">{{ old('cv') }}</textarea>
    
                            @if ($errors->has('cv'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('cv') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="file">Upload file</label>
                                    <input type="file" name="file" class="form-control-file" id="file">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="picture">Upload picture</label>
                                    <input type="file" name="picture" class="form-control-file" id="picture">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <select name="company" class="form-control{{ $errors->has('company') ? ' is-invalid' : '' }} mb-3">
                                <option disabled selected>Select company</option>
                                @foreach ($companies as $company)
                                    <option {{ old('company') == $company->name ? 'selected' : '' }} value="{{$company->id}}">{{$company->name}}</option>
                                @endforeach
                            </select>
                            
                            
                            @if ($errors->has('company'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('company') }}</strong>
                                </span>
                            @endif
                        </div>
                                                
                        <button type="submit" class="btn btn-primary">
                            {{ __('Kreiraj Predavanje') }}
                        </button>
                           
                    </form>
                </div>
            </div>
        </div>
    </div>
    
@endsection
