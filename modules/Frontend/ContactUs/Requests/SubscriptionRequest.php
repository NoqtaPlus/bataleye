<?php

namespace Modules\Frontend\ContactUs\Requests;
use Illuminate\Foundation\Http\FormRequest;

class SubscriptionRequest extends FormRequest
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
        return [
            'name'                 =>'required|max:150',
            'email'                =>'max:255|string|unique:subscription',
        
        ];
    }
}
