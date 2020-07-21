<?php

namespace Modules\Backend\Clients\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\Entities\Client;

class ClientRequest extends FormRequest
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
        $client = Client::find($this->route('clientId'));

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
                    'name'  =>'required|max:150',
                    'opinion' =>'required',
                    'logo' =>'image|mimes:jpeg,jpg,png,gif|max:5120',
                ];
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'name' => 'required|max:150',
                    'opinion' =>'required',
                    'logo' => 'image|mimes:jpeg,jpg,png,gif|max:5120',
                ];
            }
            default:break;
        }
    }
}
