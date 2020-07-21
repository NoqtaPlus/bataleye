<?php

namespace Modules\Backend\Journey\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\JourneyRepository;
use App\Entities\Journey;


class JourneyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(JourneyRepository $journeyRepo)
    {
        $journeies  = $journeyRepo->getAllJourney();
        return view('backend.journey.all_journey',compact('journeies'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return view('backend.journey.add_journey');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
     public function store(Request $request, Journey $journey ,JourneyRepository $journeyrepo)
    {
        $journeyrepo->postAddjourney($request, $journey);
        
        return redirect()->route('getAllJourney');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   

    public function destroy($id,JourneyRepository $journeyRepo , DataCard $dataCard)
    {
        $data = $journeyRepo->deleteDataCardById($id,$dataCard);
        if($data){
            return redirect()->route('getAllData');
        }else{
            return redirect()->back();
        }
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($Id, JourneyRepository $journeyRepo)
    {
        $journey   = $journeyRepo->getJourneyById($Id);
        return view('backend.journey.edit',compact('journey'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update($Id, Request $request, JourneyRepository $journeyRepo)
    {
       
        $journeyRepo->updateJourneyById($Id,$request);

        return redirect()->route('getAllJourney');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   
    public function journeyImage($id, Journey $journeyModel)
    {
        $image  = $journeyModel->find($id);
        $imagePath = public_path('assets/images/journey'.$image->journey_img);
        ob_end_clean();
        return response()->file($imagePath);
    }
    
   
}
