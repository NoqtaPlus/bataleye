<?php

namespace Modules\Backend\Matches\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MatchRequest extends FormRequest
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
                    'opposing_team'=>'required|max:70',
                    'logo'=>'required|mimes:jpeg,png,jpg,gif,svg|max:5120',
                    'championship'=>'required|max:70',
                    'stadium'=>'required|max:70',
                    'date'=>'required',
                    'time'=>'required',
                ];
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'opposing_team'=>'required|max:70',
                    'logo'=>'mimes:jpeg,png,jpg,gif,svg|max:5120',
                    'championship'=>'required|max:70',
                    'stadium'=>'required|max:70',
                    'date'=>'required',
                    'time'=>'required',
                ];
            }
            default:break;
        }
    }
}
