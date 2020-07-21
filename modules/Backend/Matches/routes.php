<?php
Route::group(['middleware'=>'auth'],function()
{
    Route::group(['prefix'=>'backend-matches'],function (){
        //Matches
        Route::get('/{id}/image', 'MatchController@matchImage')->name("getMatchImage");
            Route::get('/',['uses'=>'MatchController@index','as'=>'getAllMatches']);
            Route::get('/add-match',['uses'=>'MatchController@create','as'=>'getAddMatch']);
            Route::post('/add-match',['uses'=>'MatchController@store','as'=>'postAddMatch']);
            Route::get('/match/{matchId}',['uses'=>'MatchController@edit','as'=>'getMatchById']);
            Route::put('/match/{matchId}',['uses'=>'MatchController@update','as'=>'updateMatchById']);
            Route::post('/match/{matchId}',['uses'=>'MatchController@delete','as'=>'deleteMatchById']);
    });
});