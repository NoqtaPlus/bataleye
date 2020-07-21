<?php

namespace Modules\Backend\Sliders\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SliderRequest extends FormRequest
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
                    'title:ar'=>'max:100',
                    'short_description:ar'=>'max:255',
                    'title:en'=>'max:100',
                    'short_description:en'=>'max:255',
                ];
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'title:ar'=>'max:100',
                    'short_description:ar'=>'max:255',
                    'title:en'=>'max:100',
                    'short_description:en'=>'max:255',
                ];
            }
            default:break;
        }
    }
}
