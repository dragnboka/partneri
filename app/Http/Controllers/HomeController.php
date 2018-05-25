<?php

namespace App\Http\Controllers;

use App\Models\MoneyContract;
use App\Models\Company;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $companies = \DB::table('companies')
        ->join('money_contracts','companies.id', '=', 'money_contracts.company_id')
        ->leftJoin('company_user','companies.id', '=', 'company_user.company_id')
        ->orderBy('start_of_contract', 'desc')
        ->select('companies.id','companies.name','companies.address','companies.city','companies.country','companies.pib','company_user.user_id')
        ->take(5)
        ->get();
        
        $companiesExpiring = \DB::table('companies')
        ->join('money_contracts','companies.id', '=', 'money_contracts.company_id')
        ->leftJoin('company_user','companies.id', '=', 'company_user.company_id')
        ->orderBy('end_of_contract', 'asc')
        ->select('companies.id','companies.name','companies.address','companies.city','companies.country','companies.pib','company_user.user_id')
        ->take(5)
        ->get();
        
        // $contracts = MoneyContract::orderBy('start_of_contract', 'desc')
        // ->with('company')
        // ->take(5)
        // ->get();
        
        return view('home', compact('companies','companiesExpiring'));
    }
}
