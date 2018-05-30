<?php

namespace App\Http\Controllers;

use App\Models\{Company, CompanyContact};
use Illuminate\Http\Request;
use App\Http\Requests\StoreCompany;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if (!empty($request->input('name')) && !empty($request->input('packet'))) {
            $name = $request->input('name');
            $packet = $request->input('packet');
            if ($request->has('active')) {
                $companies = Company::
                whereHas('moneyContracts', function ($query) use ($packet)
                {
                    $query->where('active', 1)->where('name', 'like',"%$packet%");
                })
                ->where('name', 'like',"%$name%")
                ->orWhereHas('donatigContracts', function ($query) use ($packet)
                {
                    $query->where('active', 1)->where('name', 'like',"%$packet%");
                })
                ->where('name', 'like',"%$name%")
                ->paginate(20);
            } else {
                $companies = Company::
                whereHas('moneyContracts', function ($query) use ($packet)
                {
                    $query->where('name', 'like',"%$packet%");
                })
                ->where('name', 'like',"%$name%")
                ->orWhereHas('donatigContracts', function ($query) use ($packet)
                {
                    $query->where('name', 'like',"%$packet%");
                })
                ->where('name', 'like',"%$name%")
                ->paginate(20);
            }
                        
        } elseif (!empty($request->input('name'))) {
            $name = $request->input('name');
            if ($request->has('active')) {
                $companies = Company::
                whereHas('moneyContracts', function ($query)
                {
                    $query->where('active', 1);
                })
                ->where('name', 'like',"%$name%")
                ->orWhereHas('donatigContracts', function ($query)
                {
                    $query->where('active', 1);
                })
                ->where('name', 'like',"%$name%")
                ->paginate(20);
            } else {
                $companies = Company::has('moneyContracts')->where('name', 'like',"%$name%")->orHas('donatigContracts')
                ->where('name', 'like',"%$name%")
                ->paginate(20);
            }
        }
        elseif (!empty($request->input('packet'))) {
            $packet = $request->input('packet');
            if ($request->has('active')) {
                $companies = Company::
                whereHas('moneyContracts', function ($query) use ($packet)
                {
                    $query->where('active', 1)->where('name', 'like',"%$packet%");
                })
                ->orWhereHas('donatigContracts', function ($query) use ($packet)
                {
                    $query->where('active', 1)->where('name', 'like',"%$packet%");
                })
                ->paginate(20);
            } else {
                $companies = Company::
                whereHas('moneyContracts', function ($query) use ($packet)
                {
                    $query->where('name', 'like',"%$packet%");
                })
                ->orWhereHas('donatigContracts', function ($query) use ($packet)
                {
                    $query->where('name', 'like',"%$packet%");
                })
                ->paginate(20);
            }
        }
        else {
            $companies = Company::has('moneyContracts')->orHas('donatigContracts')->paginate(20);
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
    public function store(StoreCompany $request)
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
        $company = $company->where('id', $company->id)->with(['moneyContracts','donatigContracts','contact'])->firstOrFail();
        //dd($company);
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
        $company = $company->load('contact');
    
        return view('company.edit', compact('company'));
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
        $company = Company::findOrFail($company->id);
    
        $company->name = $request->name;
        $company->address = $request->address;
        $company->city = $request->city;
        $company->postal_code = $request->postal_code;
        $company->country = $request->country;
        $company->bank_account = $request->bank_account;
        $company->pib = $request->pib;
        $company->phone = $request->phone;
        $company->email = $request->email;
        //$company->logo = $request->logo;

        $company->save();
        
        $company->contact()->update([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'phone' => $request->contact_phone,
            'email' => $request->contact_email
        ]);

        return back();
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
