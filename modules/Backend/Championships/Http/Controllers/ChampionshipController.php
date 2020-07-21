<?php

namespace Modules\Backend\Championships\Http\Controllers;

use App\Entities\Championship;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Modules\Backend\Championships\Requests\ChampionshipRequest;
use Modules\Backend\Championships\Models\Championship as ChampionshipModel;
use File;

/**
 * Class ChampionshipController
 * @package Modules\Backend\Championships\Http\Controllers
 */
class ChampionshipController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(ChampionshipModel $championshipModel)
    {
        $championships = $championshipModel->get();
        return view('backend.championships.all_championships', compact('championships'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        return view('backend.championships.add_championship');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(ChampionshipRequest $request, ChampionshipModel $championshipModel)
    {
        $data          = $request->all();
        $image         = $championshipModel->uploadChampionshipImage("image", $request);
        $data["image"] = $image;
        $championshipModel->create($data);
        return redirect()->route('getAllChampionships');
    }

    /**
     * @param $championshipId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($championshipId, ChampionshipModel $championshipModel)
    {
        $championship = $championshipModel->find($championshipId);
        return view('backend.championships.championship', compact('championship'));
    }

    /**
     * @param $championshipId
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update($championshipId, ChampionshipRequest $request, ChampionshipModel $championshipModel)
    {
        $data          = $request->all();
        $championship  = $championshipModel->find($championshipId);
        $image         = $championshipModel->uploadChampionshipImage("image", $request);
        if ($image) {
            File::delete(base_path("uploads/championships/$championship->image"));
            $data["image"] = $image;
        }
        $championship->update($data);
        return redirect()->route('getAllChampionships');
    }

    /**
     * @param $championshipId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($championshipId, ChampionshipModel $championshipModel)
    {
        $championship = $championshipModel->find($championshipId);
        File::delete(base_path("uploads/championships/$championship->image"));
        $championship->delete();
        return redirect()->route('getAllChampionships');
    }
    
    public function championshipImage($id, ChampionshipModel $championshipModel)
    {
        $championship  = $championshipModel->find($id);
        $imagePath = base_path('uploads/championships/'.$championship->image);
        ob_end_clean();
        return response()->file($imagePath);
    }
}
