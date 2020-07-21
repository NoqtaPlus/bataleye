<?php

namespace Modules\Backend\Settings\Http\Controllers;

use App\Entities\Facebook;
use Illuminate\Http\Request;
use App\Repositories\FacebookRepository;
use App\Http\Controllers\Controller;
/**
 * Class SettingController
 * @package App\Http\Controllers
 */
class FacebookController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(FaceBookRepository $facebookRepo)
    {
        $facebook = Facebook::first();
       return view('backend.settings.facebook', compact('facebook'));
    }
    
   
    public function update(Request $request)
    {
       
        $facebook = Facebook::first();
        $facebook->fill($request->all());
        $facebook->save();
        return redirect()->route('getFacebook');
    }

    /**
     * @param $settingId
     * @return \Illuminate\Http\RedirectResponse
     */
   
    
}
