<?php

namespace Modules\Backend\Settings\Http\Controllers;

use App\Entities\Instagram;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
/**
 * Class SettingController
 * @package App\Http\Controllers
 */
class InstagramController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $Instagram = Instagram::first();
       return view('backend.settings.Instagram', compact('Instagram'));
    }
    
   
    public function update(Request $request)
    {
       
        $Instagram = Instagram::first();
        $Instagram->accesstoken=($request->accesstoken);
        $Instagram->update();
        return redirect()->route('getInstagram');
    }

    /**
     * @param $settingId
     * @return \Illuminate\Http\RedirectResponse
     */
   
    
}
