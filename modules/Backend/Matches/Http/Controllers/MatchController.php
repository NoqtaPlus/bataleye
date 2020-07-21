<?php

namespace Modules\Backend\Matches\Http\Controllers;

use App\Entities\Match;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Modules\Backend\Matches\Requests\MatchRequest;
use Modules\Backend\Matches\Models\Match as MatchModel;
use File;
/**
 * Class MatchController
 * @package Modules\Backend\Matches\Http\Controllers
 */
class MatchController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(MatchModel $matchModel)
    {
        $matches = $matchModel->get();
        return view('backend.matches.all_matches', compact('matches'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        return view('backend.matches.add_match');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(MatchRequest $request, MatchModel $matchModel)
    {
        $data          = $request->all();
        $image         = $matchModel->uploadMatchImage("logo", $request);
        $data["logo"] = $image;
        if (empty($data['result'])) {
            unset($data['result']);
        }
        $matchModel->create($data);
        return redirect()->route('getAllMatches');
    }

    /**
     * @param $matchId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($matchId, MatchModel $matchModel)
    {
        $match = $matchModel->find($matchId);
        return view('backend.matches.match', compact('match'));
    }

    /**
     * @param $matchId
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update($matchId, MatchRequest $request, MatchModel $matchModel)
    {
        $data  = $request->all();
        $match = $matchModel->find($matchId);
        $image = $matchModel->uploadMatchImage("logo", $request);
        if ($image) {
            File::delete(base_path("uploads/matches/$match->logo"));
            $data["logo"] = $image;
        }
        if (empty($data['result'])) {
            unset($data['result']);
        }
        $match->update($data);
        return redirect()->route('getAllMatches');
    }

    /**
     * @param $matchId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($matchId, MatchModel $matchModel)
    {
        $match = $matchModel->find($matchId);
        File::delete(base_path("uploads/matches/$match->logo"));
        $match->delete();
        return redirect()->route('getAllMatches');
    }
    
    public function matchImage($id, MatchModel $matchModel)
    {
        $match  = $matchModel->find($id);
        $imagePath = base_path('uploads/matches/'.$match->logo);
        ob_end_clean();
        return response()->file($imagePath);
    }
}
