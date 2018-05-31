<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreLecture extends FormRequest
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
            'description' => 'required',
            'classroom' => 'required',
            'date' => 'required|date_format:"Y-m-d"',
            'time' => 'required|date_format:"H:i"',
            'first_name' => 'required',
            'last_name' => 'required',
            'file' => 'file',
            'picture' => 'mimes:jpeg,png,tiff|max:1000'       
        ];
    }
}
