@foreach ($mappings as $key => $map)
    <div class="btn-group mb-4">
            <button type="button" class="btn btn-outline-primary btn-square dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                {{-- {{request()->input($key) ?? $key}} --}}
                {{$key}}
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                @foreach($map as $value => $name)
                    <a class="dropdown-item" href="{{route('packet.item', array_merge(request()->query(), [$key => $value]))}}">{{$name}}</a>
                @endforeach
            </div> 
            @if(request($key))
                <a href="{{ route('packet.item', array_except(request()->query(), [$key])) }}" class="btn btn-danger">X</a>
            @endif 
    </div>
@endforeach
