<?php

namespace Modules\Backend\Links\Requests;

use Illuminate\Foundation\Http\FormRequest;

class LinkRequest extends FormRequest
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
                    'title:ar'=>'required|max:100',
                    'title:en'=>'required|max:100',
                ];
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'title:ar'=>'required|max:100',
                    'title:en'=>'required|max:100',
                ];
            }
            default:break;
        }
    }
}
