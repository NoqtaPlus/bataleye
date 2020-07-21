<?php

namespace Modules\Backend\ChampionDescription\Http\Controllers;

use App\Entities\ChampionDesc;
use App\Repositories\ChampionDescRepository;
use App\Http\Controllers\Controller;
use App\Entities\BlogCategory;
use Modules\Backend\ChampionDescription\Requests\ChampoinDescRequest;
use DB;
/**
 * Class SliderController
 * @package App\Http\Controllers
 */
class ChampionshipController extends Controller
{

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(ChampionDescRepository $champoins)
    {
        $champoins = $champoins->getAllChampionDescription();
       
        return view('backend.champoinsDesc.all_champoinsDesc', compact('champoins'));
    }
    public function create()
    {
        $categories = DB::table('categories')->where([
            ['category_id','!=',1],
            ['category_id','!=',6],
            ['category_id','!=',7],
            ['category_id','!=',8],
            ['category_id','!=',9],
        ])->get();
        
        return view('backend.champoinsDesc.add_champoinsDesc',compact('categories'));
    }
    public function store(ChampoinDescRequest $request, ChampionDesc $champoins ,ChampionDescRepository $champoinsrepo)
    {
        $champoinsrepo->postAddChampionDescription($request, $champoins);
        
        return redirect()->route('getAllChampionDesc');
    }
    public function edit($chmpoinId, ChampionDescRepository $champoinsrepo)
    {
        $champoins   = $champoinsrepo->getAChampionDescriptionById($chmpoinId);
        $categories = DB::table('categories')->where([
            ['category_id','!=',6],
            ['category_id','!=',7],
            ['category_id','!=',8],
            ['category_id','!=',9],
        ])->get();
        return view('backend.champoinsDesc.champoinsDesc',compact('champoins','categories'));
    }
    public function update($chmpoinId, ChampoinDescRequest $request, ChampionDescRepository $champoinsrepo)
    {
       
        $champoinsrepo->updateChampionDescriptionById($chmpoinId,$request);

        return redirect()->route('getAllChampionDesc');
    }
    
    public function delete($chmpoinId, ChampionDescRepository $champoinsrepo)
    {
        $champoinsrepo->deleteChampionDescriptionById($chmpoinId);
        return redirect()->route('getAllChampionDesc');
    }
}
