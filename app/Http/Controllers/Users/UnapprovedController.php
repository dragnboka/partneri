<?php

namespace App\Http\Controllers\Users;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UnapprovedController extends Controller
{
    public function index()
    {
        $users = User::where('active', 0)->paginate(20);
        
        return view('users.unapproved.index', compact('users'));
    }

    public function show(User $user)
    {
        $user = $user->where('id', $user->id)->doesntHave('roles')->firstOrFail();

        $roles = \DB::table('roles')->get();

        return view('users.unapproved.show', compact('user', 'roles'));
    }

    public function update(Request $request, User $user)
    {
        $user->active = 1;
        $user->save();

        $user->roles()->sync($request->roles);

        return redirect()->route('user.index')->with('success', "Korisnik $user->username je registrovan");
    }

    public function destroy(Request $request, User $user)
    {
        $username = $user->username;
        $user->delete();

        return redirect()->route('user.unapproved')->with('danger', "Korisnik $username je izbrisan");
    }
}
