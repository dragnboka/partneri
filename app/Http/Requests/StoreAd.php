<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreAd extends FormRequest
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
            'name' => 'required',
            'practice' => 'required_unless:job,1',
            'job' => 'required_unless:practice,1',
            'description' => 'required',
            'file' => 'mimes:jpeg,pdf,png,tiff|max:3000'       
        ];
    }
}
