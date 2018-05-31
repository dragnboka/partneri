<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Requests\StoreDonatingContract;
use App\Models\{Packet, Company, ContractStatus, DonatingContract};

class DonatingContractController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $packets = Packet::all();
        $companies = Company::all();
        $statuses = ContractStatus::all();
        
        return view('contracts.donation.create', compact('packets','companies','statuses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreDonatingContract $request)
    {
        $company = Company::findOrFail($request->company);
        $packet = Packet::findOrFail($request->packet);

        if($packet->all->count() >= $packet->number_of_partners){
            return back()->with('danger', 'Ne moze taj paket');
        }
            
        $contract = new DonatingContract;

        $contract->packet_id = $packet->id;
        $contract->company_id = $company->id;
        $contract->description = $request->description;
        $contract->amount = $request->amount;
        $contract->start_of_contract = $request->start_of_contract;
        switch ($packet->name) {
            case 'zlatni':
            case 'srebrni':
                $contract->end_of_contract = Carbon::createFromFormat('Y-m-d', $request->start_of_contract)->addMonths(24);
                break;
            default:
            $contract->end_of_contract = Carbon::createFromFormat('Y-m-d', $request->start_of_contract)->addMonths(12);
        }     
        $contract->status = $request->status;
        $contract->active = ($request->status == 6 ? true : false);
     
        $contract->date_of_delivery = $request->date_of_delivery;
        $contract->comment = $request->comment;    

        $contract->save();

        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\DonatingContract  $donatingContract
     * @return \Illuminate\Http\Response
     */
    public function show(DonatingContract $donatingContract)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\DonatingContract  $donatingContract
     * @return \Illuminate\Http\Response
     */
    public function edit(DonatingContract $donatingContract)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\DonatingContract  $donatingContract
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, DonatingContract $donatingContract)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\DonatingContract  $donatingContract
     * @return \Illuminate\Http\Response
     */
    public function destroy(DonatingContract $donatingContract)
    {
        //
    }
}
