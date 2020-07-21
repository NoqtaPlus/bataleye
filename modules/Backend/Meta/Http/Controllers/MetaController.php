<?php

namespace Modules\Backend\Meta\Http\Controllers;

use App\Repositories\MetaRepository;
use App\Entities\Meta;
use App\Entities\Link;
use App\Entities\Language;
use App\Entities\type_of_content;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Modules\Backend\Meta\Request\MetaRequest;
use Illuminate\Support\Facades\Route;

class MetaController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(MetaRepository $MetaRepo)
    {
        
        $meta = $MetaRepo->getAllMeta();
      
        return view('backend.Meta.all_meta', compact('meta'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(MetaRepository $MetaRepo)
    {
        $meta = $MetaRepo->getAllMeta();
        $links=Link::all();
        $items=Language::all();
        $contents=type_of_content::all();      
        return view('backend.Meta.add_meta', compact('meta','contents','items','links'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(MetaRequest $request, MetaRepository $MetaRepo, Meta $meta)
    {
        $MetaRepo->postAddMeta($request, $meta);
        return redirect()->route('getAllMeta')->with('sucess', 'add sucessfully');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $serviceId
     * @return \Illuminate\Http\Response
     */
    public function edit($metaId, MetaRepository $MetaRepo)
    {
        $meta  = $MetaRepo->getMetaById($metaId);
        $links=Link::all();
        $items=Language::all();
        $contents=type_of_content::all();
        $selectedlink=$meta->link_id;
        $selectedcontent=$meta->content_id;
        $selecteditem=$meta->lang_id;
      return view('backend.Meta.edit_meta', compact('meta','links','items','contents','selectedlink','selectedcontent','selecteditem'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  int  $serviceId
     * @return \Illuminate\Http\Response
     */
    public function update($metaId, MetaRequest $request, MetaRepository $MetaRepo)
    {
      
       $MetaRepo->updateMetaById($metaId, $request);
         return redirect()->route('getAllMeta')->with('sucess', 'update sucessfully');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $serviceId
     * @return \Illuminate\Http\Response
     */
    public function delete($metaId, MetaRepository $MetaRepo)
    {
        $MetaRepo->deleteMetaById($metaId);
        return redirect()->route('getAllMeta')->with('sucess', 'delete sucessfully');
    }
    public function deleteAll(Request $request)
    {
        $ids = $request->ids; 
        Meta::whereIn('id',explode(",",$ids))->delete(); 
       return redirect()->back()->with('status','Items Successfully deleted!');

    }
    
}

