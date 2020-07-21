<?php

namespace Modules\Backend\Joinus\Http\Controllers;

use App\Repositories\JoinusRepository;
use App\Entities\Joinus;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Modules\Backend\Joinus\Requests\JoinusRequest;

class JoinusController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(JoinusRepository $JoinusRepo)
    {
        $Joinus = $JoinusRepo->getAllJoinus();
        return view('backend.Joinus.all_Joinus', compact('Joinus'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(JoinusRepository $JoinusRepo)
    {
        return view('backend.Joinus.add_Joinus');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(JoinusRequest $request, JoinusRepository $JoinusRepo, Joinus $Joinus)
    {
    $JoinusRepo->postAddJoinus($request, $Joinus);
      return redirect()->route('getAllJoinus');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $PreviouseventId
     * @return \Illuminate\Http\Response
     */
    public function edit($JoinusId, JoinusRepository $JoinusRepo)
    {
        $Joinus  = $JoinusRepo->getJoinusById($JoinusId);
        return view('backend.Joinus.Joinus', compact('Joinus'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  int  $PreviouseventId
     * @return \Illuminate\Http\Response
     */
    public function update($JoinusId, JoinusRequest $request, JoinusRepository $JoinusRepo)
    {
        $JoinusRepo->updateJoinusById($JoinusId, $request);
        return redirect()->route('getAllJoinus');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $PreviouseventId
     * @return \Illuminate\Http\Response
     */
    public function delete($JoinusId,JoinusRepository $JoinusRepo)
    {
        
        $JoinusRepo->deleteJoinusById($JoinusId);
        return redirect()->route('getAllJoinus');
    }
    
}
