<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.js"></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.css">
</head>
<body>
    <div id="app">
        <header id="header">
            <div class="container">
                <h2 class="text-white">Elektrotehnicki fakultet</h2>
                <p class="text-white">Univerzitet u beogradu</p>
            </div>
            @include('layouts.partials._nav')
        </header>
        
        <div class="container-fluid">
            <div class="row d-flex d-md-block flex-nowrap wrapper clearfix">
                @include('layouts.partials._alerts')
                @include('layouts.partials._sidemenu')
                <main class="col-md-9 float-left col px-5 pl-md-2 pt-2 main">   
                    @yield('content')
                </main>
            </div>
        </div>
    </div>
</body>
</html>
