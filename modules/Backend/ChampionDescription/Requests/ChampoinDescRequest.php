<?php

namespace Modules\Backend\ChampionDescription\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ChampoinDescRequest extends FormRequest
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
                    'category'=>'required|max:70',
                    'desc'=>'required',
                    
                ];
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'category'=>'required|max:70',
                    'desc'=>'required',
                ];
            }
            default:break;
        }
    }
}
