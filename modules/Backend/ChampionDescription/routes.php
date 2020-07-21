<?php
Route::group(['prefix'=>'backend-championships-desc','middleware'=>['access','auth']],function (){
    Route::group(['middleware' => 'check-permission:writer|admin|superadmin'], function(){
        Route::get('/',['uses'=>'ChampionshipController@index','as'=>'getAllChampionDesc']);
        Route::get('/add-championship-desc',['uses'=>'ChampionshipController@create','as'=>'getAddChampionshipDesc']);
        Route::post('/add-championship-desc',['uses'=>'ChampionshipController@store','as'=>'postAddChampionshipDesc']);
        Route::get('/championship-desc/{championshipId}',['uses'=>'ChampionshipController@edit','as'=>'getChampionshipDescById']);
        Route::put('/championship-desc/{championshipId}',['uses'=>'ChampionshipController@update','as'=>'updateChampionshipDescById']);
        Route::post('/championship-desc/{championshipId}',['uses'=>'ChampionshipController@delete','as'=>'deleteChampionshipDescById']);
    });
  
});

