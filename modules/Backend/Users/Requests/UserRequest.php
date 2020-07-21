<?php

namespace Modules\Backend\Users\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Modules\Backend\Users\Models\User;

class UserRequest extends FormRequest
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
        $user = User::find($this->route('userId'));

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
                    'name'=>'max:70',
                    'role_name'=>'max:70',
                    'email'=>'email|unique:users',
                    'password'=>'',
                ];
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'name'     => 'string|max:255',
                    'role_name'=>'max:70',
                    'email'    => 'email|unique:users,email,'.$user->id,
                ];
            }
            default:break;
        }
    }
}
