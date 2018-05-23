@extends('layouts.master')

@section('content')
    <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
    <div class="row">
        <div class="col-sm-10 mx-auto">
            <div class="card">
                <div class="card-header">{{ __('Kreiraj Predavanje') }}</div>
        
                <div class="card-body">
                    <form method="POST" action="{{ route('contract.money.store') }}">
                        @csrf

                        <select name="company" class="form-control mb-3">
                            <option disabled selected>Select company</option>
                            @foreach ($companies as $company)
                                <option value="{{$company->id}}">{{$company->name}}</option>
                            @endforeach
                        </select>

                        <select name="packet" class="form-control mb-3">
                            <option disabled selected>Select packet</option>
                            @foreach ($packets as $packet)
                                <option value="{{$packet->id}}">{{$packet->name}}</option>
                            @endforeach
                        </select>

                        <div class="form-group">
                            <label for="start_of_contract" class="col-form-label">{{ __('Datum ugovora') }}</label>
                            <input id="start_of_contract" type="date" class="form-control{{ $errors->has('start_of_contract') ? ' is-invalid' : '' }}" name="start_of_contract" value="{{ old('start_of_contract') }}" >
    
                            @if ($errors->has('start_of_contract'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('start_of_contract') }}</strong>
                                </span>
                            @endif
                        </div>

                        <select name="status" class="form-control mb-3">
                            <option disabled selected>Status ugovora</option>
                            @foreach ($statuses as $status)
                                <option value="{{$status->id}}">{{$status->description}}</option>
                            @endforeach
                        </select>
                        
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="facture_send" name="facture_send" value="1">
                            <label class="custom-control-label" for="facture_send">Faktura poslata</label>
                        </div>
                        

                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="payment_done" name="payment_done"  value="1">
                            <label class="custom-control-label" for="payment_done">Uplata izvrsena</label>
                        </div>
                        
                        <div class="form-group">
                            <label for="date_of_payment" class="col-form-label">{{ __('Datum uplate') }}</label>
                            <input id="date_of_payment" type="date" class="form-control{{ $errors->has('date_of_payment') ? ' is-invalid' : '' }}" name="date_of_payment" value="{{ old('date_of_payment') }}" >
    
                            @if ($errors->has('date_of_payment'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('date_of_payment') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="comment" class="col-form-label">{{ __('Komentar') }}</label>
                            <textarea id="comment" class="form-control{{ $errors->has('comment') ? ' is-invalid' : '' }}" name="comment">{{ old('comment') }}</textarea>
    
                            @if ($errors->has('comment'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('comment') }}</strong>
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
