<?php

namespace Modules\Backend\Settings\Http\Controllers;

use App\Entities\Setting;
use App\Entities\History;
use Illuminate\Http\Request;
use App\Repositories\SettingRepository;
use App\Http\Controllers\Controller;
/**
 * Class SettingController
 * @package App\Http\Controllers
 */
class HistoryController extends Controller
{

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(SettingRepository $settingRepo)
    {
        $settings = $settingRepo->getAllsettings();
        return view('backend.settings.all_settings', compact('settings'));
    }

    public function editHistory()
    {
       $history = History::where("year", "<>", "0")->get();
       $content = History::where("year", "0")->first();
       return view('backend.settings.history.edit', compact('history', 'content'));
    }

    public function updateHistory(Request $request)
    {
        $request->validate([
            "content" => "required"
        ]);
        $content = History::where("year", "0")->first();
        $content->content = $request->content;
        $content->save();
        return redirect()->route('editHistory');
    }

    public function storeYear(Request $request)
    {
        $request->validate([
            "year" => "required|integer|min:1000|max:3000",
            "content" => "required"
        ]);
        $year = new History();
        $year->year = $request->year;
        $year->content = $request->content;
        $year->save();
        return redirect()->route('editHistory');
    }

    public function editYear($id)
    {
        return History::find($id);
    }

    public function updateYear(Request $request, $id)
    {
        $request->validate([
            "year" => "required|integer|min:1000|max:3000",
            "content" => "required"
        ]);
        $year = History::find($id);
        $year->update($request->all());
        return redirect()->route('editHistory');
    }
}

