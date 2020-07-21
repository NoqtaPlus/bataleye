<?php

namespace Modules\Backend\Services\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ServiceTypeRequest extends FormRequest
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
                    'name:ar'=>'required|max:100',
                    'name:en'=>'max:100',

                ];
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'name:ar'=>'max:100',
                    'name:en'=>'max:100',
                ];
            }
            default:break;
        }
    }
}
