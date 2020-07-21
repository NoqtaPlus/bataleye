<?php

namespace Modules\Frontend\Blogs\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\JsonResponse;

class SubscriptRequest extends FormRequest
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
     * Get the failed validation response for the request.
     *
     * @param array $errors
     * @return JsonResponse
     */
    public function rules()
    {
        return [
            'fullname'            => 'required|max:150',
            'email'               => 'required|max:255|string',
            'membership_no'       => 'required|max:255',
        ];
    }
}
