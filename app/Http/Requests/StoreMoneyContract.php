<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreMoneyContract extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {  
        return [
            'company' => 'required|exists:companies,id',
            'packet' => 'required|exists:packets,id',
            'start_of_contract' => 'required|date_format:"Y-m-d"',
            'status' => 'required|exists:contract_statuses,id',
            'date_of_payment' => 'required|date_format:"Y-m-d"'
        ];
    }
}
