<?php

namespace Modules\Backend\Settings\Http\Controllers;

use Illuminate\Http\Request;
use Utilities\Files\UploadFiles;
use App\Entities\Language;
use App\Entities\Translation;
use Lang;

use App\Http\Controllers\Controller;

class LanguageController extends Controller
{
    public function languages(Request $request){
		if($request->translation)
		{
			foreach($request->translation as $index=>$translation)
			{
				if($request->id[$index]){
					$trans=Translation::find($request->id[$index]);
					$trans->translation=$translation;
					$trans->save();
				}
				
			}
		}
		
		$translations = Translation::all();
		return view('backend.settings.translations')->with(compact('area','action','l','langs','translations','lang','title'));
	}

	static public function translateWord($word){
		return Translation::where('word',$word)->where('lang',\Lang::getLocale())->first()->translation;
	}

}
