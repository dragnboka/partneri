<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
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
        return $inSixMonths;
    }

    
}
