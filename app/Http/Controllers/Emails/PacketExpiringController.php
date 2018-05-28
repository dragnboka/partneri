<?php

namespace App\Http\Controllers\Emails;

use App\Models\Company;
use App\Mail\PacketExpiring;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;

class PacketExpiringController extends Controller
{
    public function store(Company $company)
    {
        Mail::to($company->contact->email)->send(new PacketExpiring());

        return back();
    }
}