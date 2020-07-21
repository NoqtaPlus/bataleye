<?php

namespace Modules\Backend\Landing\Http\Controllers;

use App\Repositories\LandingRepository;
use App\Repositories\contactRepository;
use App\Entities\Landing;
use Illuminate\Http\Request;
use App\Entities\Contact;
use App\Http\Controllers\Controller;
use Modules\Backend\Landing\Requests\LandingRequest;

class LandingController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(LandingRepository $LandingRepo)
    {
        $Landing = $LandingRepo->getAllLanding();
        return view('backend.Landing.all_Landing', compact('Landing'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getcontactLanding()
    {    
          $contacts=Contact::OrderBy('created_at','DESC')->where('contact_from','book_of_landingpage')->get();
        return view('backend.Landing.contactLanding', compact('contacts'));
    }
    /**
     * 
     * Show the form for editing the specified resource.
     *
     * @param  int  $PreviouseventId
     * @return \Illuminate\Http\Response
     */
    public function deleteLanding($contactId)
    {
        Contact::where('contact_id',$contactId)->delete();
        return redirect()->route('getAllcontactLanding');
    }
    public function edit($LandingId, LandingRepository $LandingRepo)
    {
        $Landing  = $LandingRepo->getLandingById($LandingId);
        return view('backend.Landing.Landing', compact('Landing'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  int  $PreviouseventId
     * @return \Illuminate\Http\Response
     */
    public function update($LandingId, LandingRequest $request, LandingRepository $LandingRepo)
    {
        $LandingRepo->updateLandingById($LandingId, $request);
        return redirect()->route('getAllLanding');
    }
    public function complete(Request $request)
    {
        $complete=Contact::find($request->id);
        $complete->complete=1;
      
        $complete->save();
        return redirect()->route('getAllcontactLanding');
    }
    public function readmess(Request $request)
    {
        $complete=Contact::find($request->id);
        $complete->readmess=1;
      
        $complete->save();
        return redirect()->route('getAllcontactLanding');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $PreviouseventId
     * @return \Illuminate\Http\Response
     */
    
    
}
