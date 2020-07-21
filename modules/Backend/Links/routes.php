<?php

Route::group(['prefix'=>'backend-links','middleware'=>['auth']],function (){
    // Links
    Route::get('/',['uses'=>'LinkController@index','as'=>'getAllLinks']);
    Route::get('/add-link',['uses'=>'LinkController@create','as'=>'getAddLink']);
    Route::post('/add-link',['uses'=>'LinkController@store','as'=>'postAddLink']);
    Route::get('/link/{linkId}',['uses'=>'LinkController@edit','as'=>'getLinkById']);
    Route::put('/link/{linkId}',['uses'=>'LinkController@update','as'=>'updateLinkById']);
    Route::post('/link/{linkId}',['uses'=>'LinkController@delete','as'=>'deleteLinkById']);
});
