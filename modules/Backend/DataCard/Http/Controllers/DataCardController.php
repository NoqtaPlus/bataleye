<?php

namespace Modules\Backend\DataCard\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\DataCardRepository;
use App\Entities\DataCard;
use PDF;
use Mpdf;

class DataCardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(DataCardRepository $dataRepo)
    {
        $datas  = $dataRepo->getAllDataCard();
        return view('backend.dataCard.all_data',compact('datas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id,DataCardRepository $dataRepo , DataCard $dataCard )
    {
       $data =  $dataRepo->getDatayById($id,$dataCard);
       return view('backend.dataCard.show',compact('data'));
    }

    public function destroy($id,DataCardRepository $dataRepo , DataCard $dataCard)
    {
        $data = $dataRepo->deleteDataCardById($id,$dataCard);
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
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   
    public function dataImage($id, DataCard $dataModel)
    {


        $image  = $dataModel->find($id);
      
        $imagePath = public_path('assets/images/dataCard'.$image->Membershipphoto);
        ob_end_clean();
        return response()->file($imagePath);
    }
    public function personal($id, DataCard $dataModel)
    {
        $image  = $dataModel->find($id);
      
        $imagePath = public_path('assets/images/dataCard'.$image->personalPhoto);
        ob_end_clean();
        return response()->file($imagePath);
    }

     public function exportdata($id,DataCardRepository $dataRepo , DataCard $dataCard){
         $data = $dataRepo->getDatayById($id,$dataCard);

         $pdf = PDF::loadView('backend.dataCard.pdf',compact('data'));
         return $pdf->download($data->fullname.'.pdf');


     }
    public function exportpersonalPhoto($id,DataCardRepository $dataRepo , DataCard $dataCard){
        $data = $dataRepo->getDatayById($id,$dataCard);
        $pdf = PDF::loadView('backend.dataCard.personalPhoto',compact('data'));
        return $pdf->download($data->fullname.'/صوره شخصية.pdf');


    }
    public function exportIdPhoto($id,DataCardRepository $dataRepo , DataCard $dataCard){
        $data = $dataRepo->getDatayById($id,$dataCard);
        $pdf = PDF::loadView('backend.dataCard.IdCard',compact('data'));
        return $pdf->download($data->fullname.'/صوره الرقم القومى.pdf');

    }
    public function exportBarthdayphoto($id,DataCardRepository $dataRepo , DataCard $dataCard){
        $data = $dataRepo->getDatayById($id,$dataCard);
        $pdf = PDF::loadView('backend.dataCard.barthDayPhoto',compact('data'));
        return $pdf->download($data->fullname.'/صوره شهاده الميلاد.pdf');

    }
    public function exportMembershepPhoto($id,DataCardRepository $dataRepo , DataCard $dataCard){
        $data = $dataRepo->getDatayById($id,$dataCard);
        $pdf = PDF::loadView('backend.dataCard.membershep',compact('data'));
        return $pdf->download($data->fullname.'/صوره رقم العضوية.pdf');
    }
    public function alldata($id,DataCardRepository $dataRepo , DataCard $dataCard){
        $data = $dataRepo->getDatayById($id,$dataCard);
        $pdf = PDF::loadView('backend.dataCard.full-data',compact('data'));
        return $pdf->download($data->fullname);
    }
   
}
