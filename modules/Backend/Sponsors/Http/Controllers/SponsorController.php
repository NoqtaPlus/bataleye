<?php

namespace Modules\Backend\Sponsors\Http\Controllers;

use App\Entities\Sponsor;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Modules\Backend\Sponsors\Requests\SponsorRequest;
use Modules\Backend\Sponsors\Models\Sponsor as SponsorModel;
use File;
/**
 * Class SponsorController
 * @package Modules\Backend\Sponsors\Http\Controllers
 */
class SponsorController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(SponsorModel $sponsorModel)
    {
        $sponsors = $sponsorModel->get();
        return view('backend.sponsors.all_sponsors', compact('sponsors'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        return view('backend.sponsors.add_sponsor');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(SponsorRequest $request, SponsorModel $sponsorModel)
    {
        $data          = $request->all();
        $image         = $sponsorModel->uploadSponsorImage("image", $request);
        $data["image"] = $image;
        $sponsorModel->create($data);
        return redirect()->route('getAllSponsors');
    }

    /**
     * @param $sponsorId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($sponsorId, SponsorModel $sponsorModel)
    {
        $sponsor = $sponsorModel->find($sponsorId);
        return view('backend.sponsors.sponsor', compact('sponsor'));
    }

    /**
     * @param $sponsorId
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update($sponsorId, SponsorRequest $request, SponsorModel $sponsorModel)
    {
        $data    = $request->all();
        $sponsor = $sponsorModel->find($sponsorId);
        $image   = $sponsorModel->uploadSponsorImage("image", $request);
        if ($image) {
            File::delete(base_path("uploads/sponsors/$sponsor->image"));
            $data["image"] = $image;
        }
        $sponsor->update($data);
        return redirect()->route('getAllSponsors');
    }

    /**
     * @param $sponsorId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($sponsorId, SponsorModel $sponsorModel)
    {
        $sponsor = $sponsorModel->find($sponsorId);
        File::delete(base_path("uploads/sponsors/$sponsor->image"));
        $sponsor->delete();
        return redirect()->route('getAllSponsors');
    }
    
    public function sponsorImage($id, SponsorModel $sponsorModel)
    {
        $sponsor  = $sponsorModel->find($id);
        $imagePath = base_path('uploads/sponsors/'.$sponsor->image);
        ob_end_clean();
        return response()->file($imagePath);
    }
}
