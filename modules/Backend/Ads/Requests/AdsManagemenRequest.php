<?php

namespace Modules\Backend\Ads\Requests;
use Illuminate\Foundation\Http\FormRequest;

class AdsManagemenRequest extends FormRequest
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
                    'image'=>'required|image|mimes:jpg,jpeg,png,gif',
                    'link'=>'required',
                    'position_id'=>'required'
                    
                ];
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'image'=>'image|mimes:jpg,jpeg,png,gif',
                    'link'=>'required',
                    'position_id'=>'required'
                ];
            }
            default:break;
        }
    }
    }

