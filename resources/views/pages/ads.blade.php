@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-md-8 mx-auto">
        @foreach ($ads as $ad)
        <div class="media mb-3 border p-3">
            <div class="media-body">
                <h5 class="mt-0 mb-1">{{$ad->name}}</h5>
                <p class="py-2 font-weight-bold">{{$ad->company->name}}</p>
                <p class="pb-4">{{$ad->description}}</p>
                <div class="mb-0 d-flex justify-content-between">
                    <p>Objavljen {{$ad->created_at->toFormattedDateString()  }}</p>
                    <p>
                        @if ($ad->practice)
                        <span class="bg-info text-white p-1">{{$ad->practice($ad->practice) }}</span>
                        @endif
                        @if ($ad->job)
                        <span class="bg-info text-white p-1">{{$ad->job($ad->job) }}</span>
                        @endif
                </div>
            </div>
            <img class="ml-3" src="{{$ad->company->logo}}" alt="company image">
        </div>
        @endforeach
        {{ $ads->links() }}
    </div>
</div>
@endsection
