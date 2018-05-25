<?php

namespace App\Http\Controllers;

use App\Models\{Company, CompanyContact};
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->has('query')) {
            $query = $request->input('query');
            if ($request->has('active')) {
                $companies = Company::
                whereHas('moneyContract', function ($query)
                {
                    $query->where('status', 6);
                })
                ->where('name', 'like',"%$query%")
                ->paginate(5);
            } else {
                $companies = Company::has('moneyContract')
                    ->where('name', 'like',"%$query%")
                    ->paginate(5);
            }
                        
        } else {
            $companies = Company::has('moneyContract')->paginate(5);
        }
        
        return view('company.index', compact('companies'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('company.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $company = new Company;

        $company->name = $request->name;
        $company->address = $request->address;
        $company->city = $request->city;
        $company->postal_code = $request->postal_code;
        $company->country = $request->country;
        $company->bank_account = $request->bank_account;
        $company->pib = $request->pib;
        $company->phone = $request->phone;
        $company->email = $request->email;
        $company->logo = $request->logo;

        $company->save();
        
        $contact = new CompanyContact;

        $contact->first_name = $request->first_name;
        $contact->last_name = $request->last_name;
        $contact->phone = $request->contact_phone;
        $contact->email = $request->contact_email;

        $company->contact()->save($contact);

        $company->users()->attach($request->user());

        return back();
         
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function show(Company $company)
    {
        return view('company.show', compact('company'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function edit(Company $company)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Company $company)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function destroy(Company $company)
    {
        //
    }
}
