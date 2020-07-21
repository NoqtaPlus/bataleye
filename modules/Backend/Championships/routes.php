<?php
Route::group(['prefix'=>'backend-championships','middleware'=>'auth'],function (){
    Route::group(['middleware' => 'check-permission:writer|admin|superadmin'], function(){
        Route::get('/',['uses'=>'ChampionshipController@index','as'=>'getAllChampionships']);
        Route::get('/add-championship',['uses'=>'ChampionshipController@create','as'=>'getAddChampionship']);
        Route::post('/add-championship',['uses'=>'ChampionshipController@store','as'=>'postAddChampionship']);
        Route::get('/championship/{championshipId}',['uses'=>'ChampionshipController@edit','as'=>'getChampionshipById']);
        Route::put('/championship/{championshipId}',['uses'=>'ChampionshipController@update','as'=>'updateChampionshipById']);
        Route::post('/championship/{championshipId}',['uses'=>'ChampionshipController@delete','as'=>'deleteChampionshipById']);
    });
    //Championships
    Route::get('/{id}/image', 'ChampionshipController@championshipImage')->name("getChampionshipsImage");
});

