@component('mail::message')
# Welcome to our site

Your profile has been creatd 

username: {{$username}}

password: {{$password}}

@component('mail::button', ['url' => 'http://localhost:8000/login'])
Sign in
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
