<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreCompany extends FormRequest
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
            'name' => 'required|max:191',
            'address' => 'required|max:191',
            'city' => 'required|max:191',
            'postal_code' => 'required|numeric',
            'country' => 'required',
            'bank_account' => 'required',
            'pib' => 'required|numeric',
            'phone' => 'required',
            'email' => 'required|email',
            'logo' => 'required|image',
            'first_name' => 'required|string',
            'last_name' => 'required|string',
            'contact_phone' => 'required',
            'contact_email' => 'required|email',
        ];
    }
}
