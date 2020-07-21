<?php

namespace Modules\Backend\Settings\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SettingRequest extends FormRequest
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
                    
                ];
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'logo_ar' => 'mimes:jpeg,png,jpg,gif,svg|max:5120',
                    'logo_en' => 'mimes:jpeg,png,jpg,gif,svg|max:5120',
                ];
            }
            default:break;
        }
    }
}
