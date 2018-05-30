<?php

namespace App\Http\Controllers\Users;

use App\User;
use App\Mail\UserCreated;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;

class UserController extends Controller
{
    public function index()
    {
        $users = User::where('active', 1)->paginate(20);

        return view('users.index', compact('users'));
    }

    public function unapproved()
    {
        $users = User::where('active', 0)->get();
        
        return view('users.unapproved.index', compact('users'));
    }

    public function create()
    {
        $roles = \DB::table('roles')->get();

        return view('users.create', compact('roles'));
    }
    
    public function store(Request $request)
    {
        $request->validate([
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
        
        $user =  User::create([
            'username' => $request['username'],
            'firstname' => $request['firstName'],
            'lastname' => $request['lastName'],
            'phone' => $request['phone'],
            'dob' => $request['dob'],
            'email' => $request['email'],
            'password' => bcrypt($request['password']),
            'active' => true,
        ]);
        
        $user->roles()->attach($request->roles);  

        Mail::to($user->email)->send(new UserCreated($request['password'],$request['username']));

        return back()->with('success', "Korisnik $user->username upravo je registrovan");
        
    }

    public function show(User $user)
    {
        $user = $user->where('id', $user->id)->has('roles')->firstOrFail();
       
        $roles = \DB::table('roles')->get();

        return view('users.show', compact('user', 'roles'));
    }

    public function update(Request $request, User $user)
    {
        $user->roles()->sync($request->roles);

        return back()->with('success', "Korisniku $user->username je promenjena rola");
    }
}
