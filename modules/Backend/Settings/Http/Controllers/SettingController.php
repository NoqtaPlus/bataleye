<?php

namespace Modules\Backend\Settings\Http\Controllers;

use App\Entities\Setting;
use Illuminate\Http\Request;
use App\Repositories\SettingRepository;
use App\Http\Controllers\Controller;
use Modules\Backend\Settings\Models\Setting as SettingModel;
use Modules\Backend\Settings\Requests\SettingRequest as SettingRequest;
/**
 * Class SettingController
 * @package App\Http\Controllers
 */
class SettingController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(SettingRepository $settingRepo)
    {
        $setting = Setting::first();
       return view('backend.settings.settings', compact('setting'));
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
     * @param $settingId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($settingId)
    {
       $setting = Setting::find($settingId);
       return view('backend.settings.setting', compact('setting'));
    }
    /**
     * @param $settingId
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(SettingRequest $request, SettingModel $settingModel)
    {
       
        $setting = Setting::first();
        $data = $request->all();
        $logo_ar = $settingModel->imageUpload('logo_ar', $request);
        if($logo_ar != null) {
            $data["logo_ar"] = $logo_ar;
        }
        $logo_en = $settingModel->imageUpload('logo_en', $request);
        if($logo_en != null) {
            $data["logo_en"] = $logo_en;
        }
        $site_map = $settingModel->fileUpload('site_map', $request);
        if($site_map != null) {
            $data["site_map"] = $site_map;
        }

        $setting->fill($data);
        $setting->save();
        return redirect()->route('getSettings');
    }

    /**
     * @param $settingId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($settingId, SettingRepository $settingRepo)
    {
        $settingRepo->deleteSettingById($settingId);
        return redirect()->route('getAllsettings');
    }
    public function map()
	{
        // Return a static map from the Google maps api
        $setting = Setting::first();
		$map = 'http://maps.googleapis.com/maps/api/staticmap?zoom=12&format=png&maptype=roadmap&style=element:geometry|color:0xf5f5f5&style=element:labels.icon|visibility:off&style=element:labels.text.fill|color:0x616161&style=element:labels.text.stroke|color:0xf5f5f5&style=feature:administrative.land_parcel|element:labels.text.fill|color:0xbdbdbd&style=feature:poi|element:geometry|color:0xeeeeee&style=feature:poi|element:labels.text.fill|color:0x757575&style=feature:poi.business|visibility:off&style=feature:poi.park|element:geometry|color:0xe5e5e5&style=feature:poi.park|element:labels.text|visibility:off&style=feature:poi.park|element:labels.text.fill|color:0x9e9e9e&style=feature:road|element:geometry|color:0xffffff&style=feature:road.arterial|element:labels|visibility:off&style=feature:road.arterial|element:labels.text.fill|color:0x757575&style=feature:road.highway|element:geometry|color:0xdadada&style=feature:road.highway|element:labels|visibility:off&style=feature:road.highway|element:labels.text.fill|color:0x616161&style=feature:road.local|visibility:off&style=feature:road.local|element:labels.text.fill|color:0x9e9e9e&style=feature:transit.line|element:geometry|color:0xe5e5e5&style=feature:transit.station|element:geometry|color:0xeeeeee&style=feature:water|element:geometry|color:0xc9c9c9&style=feature:water|element:labels.text.fill|color:0x9e9e9e&size=640x250&scale=4&center='.urlencode(trim(preg_replace('/\s\s+/', ' ', $setting->address)));
		$con = curl_init($map);
		curl_setopt($con, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($con, CURLOPT_HEADER, 0);
		curl_setopt($con, CURLOPT_RETURNTRANSFER, 1);
		return response(curl_exec($con))->header('Content-Type', 'image/png');
	}
}
