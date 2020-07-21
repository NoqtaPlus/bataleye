<?php
require 'define.php';
Route::get('lang/{lang}', ['as'=>'lang.switch', 'uses'=>'LanguageController@switchLang']);
Route::get('/403',function(){ return view('errors.403');})->name('unauthorised');
Route::get('/getFile/{name}',['uses'=>'HomeController@getFile']);
Route::get('/siteMap',['uses'=>'HomeController@getSiteMap']);

Route::group(['prefix' => 'admin'],function ()
{
    Auth::routes();
});

Route::group(['prefix' => 'admin', 'middleware'=>['auth','laguageChooser']],function ()
{
    Route::get('/',function(){ return view('backend.layouts.statistics_layout');})->name('getBackendHome');

    Route::group(['prefix'=>'contacts'],function (){
        // Links
        Route::get('/contactus',['uses'=>'ContactController@index','as'=>'getAllContacts']);
        Route::get('/contact/{contactId}',['uses'=>'ContactController@show','as'=>'getContactById']);
        Route::post('/contact/{contactId}',['uses'=>'ContactController@delete','as'=>'deleteContactById']);
        Route::post('/contactDeleteAll',['uses'=>'ContactController@deleteAll','as'=>'DeleteAll']);
          Route::put('/contact',['uses'=>'ContactController@complete','as'=>'confirmcomplete']);
        Route::put('/contactread',['uses'=>'ContactController@readmess','as'=>'confirmread']);
    });
});
/*
Route::group(['prefix'=>App::getLocale()],function(){
    Route::get('/',['uses'=>'HomeController@index','as'=>'getFrontHome']);
});
*/
/*
Route::get('/contactus', function(){
    $blogRepo = new App\Repositories\BlogRepository();
    $breakingNews = $blogRepo->breakingNews();
    $mostReadable = $blogRepo->mostReadableNews();
    
    return view('front.tersana.contact-us',compact('breakingNews', 'mostReadable'));
})->name("contactUsPage");
*/
Route::get('/history', function(){
    $blogRepo = new App\Repositories\BlogRepository();
    $breakingNews = $blogRepo->breakingNews();
    $history = App\Entities\History::where("year", "<>", "0")->get();
    $content = App\Entities\History::where("year", "0")->get()[0];
    return view('front.tersana.history',compact('history', 'content', 'breakingNews'));
})->name("historyPage");

Route::get('/search', ['uses'=>'SearchController@search','as'=>'search']);
