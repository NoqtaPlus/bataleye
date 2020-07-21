<?php

namespace Modules\Backend\Championships\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ChampionshipRequest extends FormRequest
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
                    'name'=>'required|max:70',
                    'image'=>'required|mimes:jpeg,png,jpg,gif,svg|max:5120',
                    'years'=>'required',
                ];
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'name'=>'required|max:70',
                    'image'=>'mimes:jpeg,png,jpg,gif,svg|max:5120',
                    'years'=>'required',

                ];
            }
            default:break;
        }
    }
}
