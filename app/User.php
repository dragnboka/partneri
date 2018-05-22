<?php

namespace App;

use App\Permissions\HasPermissionsTrait;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Models\Company;

class User extends Authenticatable
{
    use Notifiable, HasPermissionsTrait;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username','firstname','lastname','phone','dob', 'email', 'password','active',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function companies()
    {
        return $this->belongsToMany(Company::class);
    }
}
