<?php
/*
Route::group(['prefix'=>"poject_doctor_batal"],function(){
    Route::get('/',['uses'=>'PageController@landingpage','as'=>'getFrontlandingpage']);
    Route::get('/Home',['uses'=>'PageController@index','as'=>'getFrontHome']);
    Route::get('/page/{pageId}/{title}',['uses'=>'PageController@show','as'=>'getFrontPageById']);
    Route::get('/aboutus',['uses'=>'PageController@getAboutusPage','as'=>'getAboutusPage']);
    Route::get('/joinus',['uses'=>'PageController@getjoinusPage','as'=>'getjoinusPage']);
    Route::post('/joinus',['uses'=>'PageController@store','as'=>'postAddjoinus']);
});*/
/*
Route::get('/',['uses'=>'PageController@landingpage','as'=>'getFrontlandingpage']);*/

Route::get('/',['uses'=>'PageController@index','as'=>'getFrontHome']);
  
    Route::get('/page/{pageId}/{title}',['uses'=>'PageController@show','as'=>'getFrontPageById']);
    Route::get('/about_en.php',['uses'=>'PageController@getAboutusPage','as'=>'getAboutusPage']);
    Route::get('/joinus',['uses'=>'PageController@getjoinusPage','as'=>'getjoinusPage']);
    Route::post('/joinus',['uses'=>'PageController@store','as'=>'postAddjoinus']);
    Route::get('/pres-byond',['uses'=>'PageController@landingpage','as'=>'getFrontlandingpage']);
