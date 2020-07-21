<?php

namespace Modules\Backend\Persons\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PersonRequest extends FormRequest
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

        switch($this->method())
        {
            case 'GET':
            case 'DELETE':
            {
                return [];
            }
            case 'POST':
            {
                return [
                    'name:ar'=>'required|max:70',
                    'image'=>'required|mimes:jpeg,png,jpg,gif,svg|max:5120',
                    'name:en'=>'required|max:70',
                ];
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'name:ar'=>'max:70',
                    'image'=>'mimes:jpeg,png,jpg,gif,svg|max:5120',
                    'name:en'=>'max:70',
                ];
            }
            default:break;
        }
    }
}
