<?php

namespace Modules\Backend\Settings\Http\Controllers;

use App\Entities\Adver;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use File;
use Modules\Backend\Settings\Models\Setting as SettingModel;
/**
 * Class AdverController
 * @package App\Http\Controllers
 */
class AdverController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $Adver = Adver::first();
       return view('backend.settings.adversiting', compact('Adver'));
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
    }

    /**
     * @param $AdverId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($AdverId)
    {
       $Adver = Adver::find($AdverId);
       return view('backend.settings.adversiting', compact('Adver'));
    }
    /**
     * @param $AdverId
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request, SettingModel $settingModel)
    {
        $data = $request->all();
        $adver = Adver::first();
        $desktopImage = $settingModel->imageUpload('desktop_image', $request);
        $mobileImage = $settingModel->imageUpload('mobile_image', $request);
        if(isset($desktopImage) && $desktopImage != null){
            $adver->fill(['desktop_image'=>$desktopImage]);
        }
        if(isset($mobileImage) && $mobileImage != null){
            $adver->fill(['mobile_image'=>$mobileImage]);
        }

        $adver->url = $data['url'];
        $adver->enableAds = isset($data['enableAds']) && $data['enableAds'] != null ? 1 : 0;
        $adver->save();
        return redirect()->route('getAdver');
    }
  public function deleteSingle(){
        $adver = Adver::first();
        $photoName=$adver->image;
            File::delete(public_path('assets/images/dataCard/').$photoName);
            $adver->fill(['image'=>null]);
    
        $adver->save();
        return redirect()->route('getAdver');
    }
   
}
