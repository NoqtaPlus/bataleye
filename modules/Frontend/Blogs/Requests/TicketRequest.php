<?php

namespace Modules\Frontend\Blogs\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\JsonResponse;

class TicketRequest extends FormRequest
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
            'full_name'            =>'required|max:150',
            'email'                =>'max:255|string|unique:ticket',
            'ticket_name'          =>'required|max:1000'
        ];
    }
}
