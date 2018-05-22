@extends('layouts.master')

@section('content')
    <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
    <div class="row">
        <div class="col-sm-10 mx-auto">
            <div class="card">
                <div class="card-header">{{ __('Kreiraj Paket') }}</div>
        
                <div class="card-body">
                    <form method="POST" action="{{ route('packet.store') }}">
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
                            <label for="value" class="col-form-label">{{ __('Cena') }}</label>
                            <input id="value" type="number" class="form-control{{ $errors->has('value') ? ' is-invalid' : '' }}" name="value" value="{{ old('value') }}" >
    
                            @if ($errors->has('value'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('value') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="duration" class="col-form-label">{{ __('Trajanje u mesecima') }}</label>
                            <input id="duration" type="number" class="form-control{{ $errors->has('duration') ? ' is-invalid' : '' }}" name="duration" value="{{ old('duration') }}" >
    
                            @if ($errors->has('duration'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('duration') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="number_of_partners" class="col-form-label">{{ __('max Broj partnera') }}</label>
                            <input id="number_of_partners" type="text" class="form-control{{ $errors->has('number_of_partners') ? ' is-invalid' : '' }}" name="number_of_partners" value="{{ old('number_of_partners') }}" >
    
                            @if ($errors->has('number_of_partners'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('number_of_partners') }}</strong>
                                </span>
                            @endif
                        </div>
                                                  
                        <button type="submit" class="btn btn-primary">
                            {{ __('Kreiraj Paket') }}
                        </button>
                           
                    </form>
                </div>
            </div>
        </div>
    </div>
    
@endsection
