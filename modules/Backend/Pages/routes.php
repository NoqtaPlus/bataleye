<?php

Route::group(['middleware'=>'auth'],function()
{
    Route::group(['prefix'=>'backend-pages'],function (){
        //Pages
        Route::get('/',['uses'=>'PageController@index','as'=>'getAllPages']);
        Route::get('/add-page',['uses'=>'PageController@create','as'=>'getAddPage']);
        Route::post('/add-page',['uses'=>'PageController@store','as'=>'postAddPage']);
        Route::get('/page/{pageId}',['uses'=>'PageController@edit','as'=>'getPageById']);
        Route::put('/page/{pageId}',['uses'=>'PageController@update','as'=>'updatePageById']);
        Route::post('/page/{pageId}',['uses'=>'PageController@delete','as'=>'deletePageById']);
    });
});