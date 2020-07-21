<?php
Route::group(['middleware'=>'auth'],function()
{
    Route::group(['prefix'=>'backend-journey','check-permission:writer|admin|superadmin'],function (){
        
        Route::get('/',['uses'=>'JourneyController@index','as'=>'getAllJourney']);
        Route::get('/add-journey',['uses'=>'JourneyController@create','as'=>'getAddJourney']);
        Route::post('/add-journey',['uses'=>'JourneyController@store','as'=>'postAddJourney']);
        Route::get('/journey/{journeyId}',['uses'=>'JourneyController@edit','as'=>'getJourneyById']);
        Route::put('/journey/{journeyId}',['uses'=>'JourneyController@update','as'=>'updateJourneyById']);
        Route::post('/journey/{journeyId}',['uses'=>'JourneyController@delete','as'=>'deleteJourneyById']);
        Route::get('/{id}/image', ['uses'=>'JourneyController@journeyImage'])->name("getJourneyImage");

    }); 
}); 
