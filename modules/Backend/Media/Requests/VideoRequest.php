<?php

namespace Modules\Backend\Media\Requests;

use Illuminate\Foundation\Http\FormRequest;

class VideoRequest extends FormRequest
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
                return  [
                    'title' => 'string|max:70',
                    'description' => 'string|max:250',
                    'type' => array('required', 'string', 'regex:(file|youtube)'),
                    'video_link' => array('required_if:type,youtube', 'nullable', 'regex:/http(?:s?):\/\/(?:www\.)?youtu(?:be\.com\/watch\?v=|\.be\/)([\w\-\_]*)(&(amp;)?‌​[\w\?‌​=]*)?/u'),
                    'video_file' => 'required_if:type,file|mimes:flv,mp4,mov,avi,x-ms-wmv|max:51200',
                    'thumbnail' => 'required_if:type,file|image|mimes:jpeg,png,jpg,gif,svg|max:5120'
                ];
            }
            case 'PUT':
            case 'PATCH':
            {
                return [
                    'title' => 'string|max:70',
                    'description' => 'string|max:250',
                    'type' => array('required', 'string', 'regex:(file|youtube)'),
                    'video_link' => array('nullable', 'regex:/http(?:s?):\/\/(?:www\.)?youtu(?:be\.com\/watch\?v=|\.be\/)([\w\-\_]*)(&(amp;)?‌​[\w\?‌​=]*)?/u'),
                    'video_file' => 'required_with:thumbnail|mimes:flv,mp4,mov,avi,x-ms-wmv|max:51200',
                    'thumbnail' => 'required_with:video_file|image|mimes:jpeg,png,jpg,gif,svg|max:5120'
                ];
            }
            default:break;
        }
    }
}
