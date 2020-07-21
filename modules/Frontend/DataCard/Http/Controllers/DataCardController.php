<?php

namespace Modules\Frontend\DataCard\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\DataCardRepository;
use App\Entities\DataCard;
use App\Http\Controllers\Controller;
use Modules\Frontend\DataCard\Requests\DataCardRequest;
use Session;

class DataCardController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(DataCardRepository $dataRepo)
    {
        $cities = $dataRepo->getTheCities();
        return view('front.dataCard.all_data',compact('cities'));
    }
     public function PostDataCard(Request $request,DataCard $card ,DataCardRepository $dataRepo){
        $dataRepo->postAddDataCard($request,$card);
         Session::flash('dataCard','تم اشتراكك بنجاح');
        return redirect()->back();
    }
   
}

