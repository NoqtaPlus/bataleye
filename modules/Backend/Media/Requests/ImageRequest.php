<?php

namespace Modules\Backend\Media\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ImageRequest extends FormRequest
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
                $rules = [
                    'album_title' => 'required|max:70',
                    'images' => 'required',
                ];
                // $images = count($this->input('images'));
                // foreach(range(0, $images) as $index) {
                //     $rules['images.' . $index] = 'image|mimes:jpeg,png,jpg,gif,svg|max:5120';
                // }
                return $rules;
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'album_title'=>'required|max:70',
                    'image'=>'mimes:jpeg,png,jpg,gif,svg|max:5120',
                ];
            }
            default:break;
        }
    }
}
