<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/login';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'username' => 'required|max:191|unique:users',
            'firstName' => 'required|max:191',
            'lastName' => 'required|max:191',
            'phone' => 'required|max:191|unique:users',
            'dob' => 'required|date',
            'email' => 'required|email|max:191|unique:users',
            'password' => [
                'required',
                'confirmed',
                'regex:/^(?=[a-zA-z])(?=\S*[a-z]{4,})(?=\S*[A-Z])(?=\S*[\d]{2,})(?!.*(.)\1{1})[0-9A-Za-z]{8,12}$/'
            ]
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(array $data)
    {
        return User::create([
            'username' => $data['username'],
            'firstname' => $data['firstName'],
            'lastname' => $data['lastName'],
            'phone' => $data['phone'],
            'dob' => $data['dob'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'active' => false,
        ]);
    }

    /**
     * The user has been registered.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  mixed  $user
     * @return mixed
     */
    protected function registered(Request $request, $user)
    {
        $this->guard()->logout();

        return redirect($this->redirectPath())
            ->withSuccess('Registered. Please wait for admin to acctivate your account');
    }
}
