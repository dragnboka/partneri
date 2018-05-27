<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Company;
use Illuminate\Http\Request;
use App\Models\MoneyContract;

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
        $first = \DB::table('companies')
            ->join('money_contract','companies.id', '=', 'money_contract.company_id')
            ->leftJoin('company_user','companies.id', '=', 'company_user.company_id')
            ->select('companies.id','companies.name','companies.address','companies.city','companies.country','companies.pib','company_user.user_id', 'money_contract.company_id', 'money_contract.packet_id', 'money_contract.start_of_contract', 'money_contract.end_of_contract', 'money_contract.active')
            ->where('active',1);
        
        $companies = \DB::table('companies')
            ->join('donating_contract','companies.id', '=', 'donating_contract.company_id')
            ->leftJoin('company_user','companies.id', '=', 'company_user.company_id')
            ->select('companies.id','companies.name','companies.address','companies.city','companies.country','companies.pib','company_user.user_id', 'donating_contract.company_id', 'donating_contract.packet_id', 'donating_contract.start_of_contract', 'donating_contract.end_of_contract', 'donating_contract.active')
            ->union($first)
            ->where('active',1)
            ->orderBy('start_of_contract', 'desc')
            ->take(5)
            ->get();

        $companiesExpiring = \DB::table('companies')
            ->join('donating_contract','companies.id', '=', 'donating_contract.company_id')
            ->leftJoin('company_user','companies.id', '=', 'company_user.company_id')
            ->select('companies.id','companies.name','companies.address','companies.city','companies.country','companies.pib','company_user.user_id', 'donating_contract.company_id', 'donating_contract.packet_id', 'donating_contract.start_of_contract','donating_contract.end_of_contract', 'donating_contract.active')
            ->union($first)
            ->where('active',1)
            ->orderBy('end_of_contract', 'asc')
            ->take(5)
            ->get();
        
            $second = \DB::table('companies')
            ->join('money_contract','companies.id', '=', 'money_contract.company_id')
            ->select('companies.id','companies.name','companies.address','companies.city','companies.country','companies.pib', 'money_contract.company_id', 'money_contract.packet_id', 'money_contract.start_of_contract', 'money_contract.end_of_contract', 'money_contract.active')
            ->where('active',1)
            ->whereRaw('money_contract.end_of_contract BETWEEN now() AND DATE_ADD(now(), INTERVAL 6 MONTH)  ');

            $inSixMonths = \DB::table('companies')
            ->join('donating_contract','companies.id', '=', 'donating_contract.company_id')
            ->select('companies.id','companies.name','companies.address','companies.city','companies.country','companies.pib', 'donating_contract.company_id', 'donating_contract.packet_id', 'donating_contract.start_of_contract','donating_contract.end_of_contract', 'donating_contract.active')
            ->union($second)
            ->where('active',1)
            ->whereRaw('donating_contract.end_of_contract BETWEEN now() AND DATE_ADD(now(), INTERVAL 6 MONTH)')
            ->take(20)
            ->get();

            $third = \DB::table('companies')
            ->join('money_contract','companies.id', '=', 'money_contract.company_id')
            ->select('companies.id','companies.name','companies.address','companies.city','companies.country','companies.pib', 'money_contract.company_id', 'money_contract.packet_id', 'money_contract.start_of_contract', 'money_contract.end_of_contract', 'money_contract.active')
            ->where('active',1)
            ->whereRaw('money_contract.end_of_contract BETWEEN  DATE_SUB(now(), INTERVAL 6 MONTH)  AND now()');

            $expiredLastSixMonth = \DB::table('companies')
            ->join('donating_contract','companies.id', '=', 'donating_contract.company_id')
            ->select('companies.id','companies.name','companies.address','companies.city','companies.country','companies.pib', 'donating_contract.company_id', 'donating_contract.packet_id', 'donating_contract.start_of_contract','donating_contract.end_of_contract', 'donating_contract.active')
            ->union($third)
            ->where('active',1)
            ->whereRaw('donating_contract.end_of_contract BETWEEN  DATE_SUB(now(), INTERVAL 6 MONTH)  AND now()')
            ->take(20)
            ->get();
            
        return view('home', compact('companies','companiesExpiring','inSixMonths','expiredLastSixMonth'));
    }
}
