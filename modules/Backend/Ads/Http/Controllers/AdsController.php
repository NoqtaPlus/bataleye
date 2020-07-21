<?php

namespace Modules\Backend\Ads\Http\Controllers;
use App\Http\Controllers\Controller;
use Modules\Backend\Ads\Models\AdManagement;
use Modules\Backend\Ads\Requests\AdsManagemenRequest;
use function Sodium\add;
use File;

class AdsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ads = AdManagement::all();
        return view('backend.ads.all_ads', compact("ads"));
    }
    public function create()
    {
        $positions = \App\Entities\AdsPosition::all();
        return view('backend.ads.add_ads', compact("positions"));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AdsManagemenRequest $request, AdManagement $adManagementModel)
    {
        $input = $request->all();
        $input['image'] = $adManagementModel->uploadAdsImage('image', $request);
        $save = AdManagement::create($input);
        if ($save){
            return redirect()->route('ads_management.index');
        }else{
            return redirect()->back();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $ads = AdManagement::find($id);
        $positions = \App\Entities\AdsPosition::all();
        return view('backend.ads.edit',compact('ads', 'positions'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AdsManagemenRequest $request, $id, AdManagement $adManagementModel)
    {
        $ads = AdManagement::find($id);
        $ads->link = $request->link;
        $ads->position_id = $request->position_id;

        $newImage = $adManagementModel->uploadAdsImage("image", $request);
        if ($newImage != null) {
            $ads->image = $newImage;
        }

        $ads->save();
        return redirect()->route('ads_management.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ads = AdManagement::find($id);

        File::delete(base_path("uploads/banners/").$ads->image);
        $delete=$ads->delete();
        if ($delete){
            return redirect()->route('ads_management.index');
        }else{
            return redirect()->back();
        }
    }

    public function getImage($id, AdManagement $adManagementModel)
    {
        // $image  = $adManagementModel->find($id);
        // $imagePath = base_path('uploads/banners/'.$image->image);
        // return response()->file($imagePath);


        $image  = $adManagementModel->find($id);
      
        $imagePath = base_path('uploads/banners/'.$image->image);
        ob_end_clean();
        return response()->file($imagePath);
    }
}
