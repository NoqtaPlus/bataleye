<?php

Route::group(['prefix'=>'backend-settings','middleware'=>'auth'],function (){
    // Settings
    Route::get('/',['uses'=>'SettingController@index','as'=>'getSettings']);
    Route::put('/update',['uses'=>'SettingController@update','as'=>'updateSettings']);

    Route::get('/facebook',['uses'=>'FacebookController@index','as'=>'getFacebook']);
    Route::put('/facebook',['uses'=>'FacebookController@update','as'=>'updateFacebook']);

    Route::get('/Instagram',['uses'=>'InstagramController@index','as'=>'getInstagram']);
    Route::put('/Instagram',['uses'=>'InstagramController@update','as'=>'updateInstagram']);

    Route::get('/history',['uses'=>'HistoryController@editHistory','as'=>'editHistory']);
    Route::post('/history/update',['uses'=>'HistoryController@updateHistory','as'=>'updateHistory']);
});

Route::post('api/history/store',['uses'=>'HistoryController@storeYear','as'=>'storeYear']);
Route::get('api/history/{id}/edit',['uses'=>'HistoryController@editYear','as'=>'editYear']);
Route::put('api/history/{id}/update',['uses'=>'HistoryController@updateYear','as'=>'updateYear']);

//Languages
Route::match(['get', 'post'],'/languages', 'LanguageController@languages')->name('backendLanguage');
// Adver
 Route::get('/Advertising',['uses'=>'AdverController@index','as'=>'getAdver']);
 Route::put('/update',['uses'=>'AdverController@update','as'=>'updateAdver']);
Route::post('/Advertising/{id}/delete',['uses'=>'AdverController@deleteSingle','as'=>'deleteSingleImageadver']);
