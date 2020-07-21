<?php

Route::group(['prefix'=>'backend-Landing','middleware'=>'auth'],function (){
    //previouseventss
    Route::get('/',['uses'=>'LandingController@index','as'=>'getAllLanding']);   
    Route::get('/Landing/{LandingId}',['uses'=>'LandingController@edit','as'=>'getLandingById']);
    Route::put('/Landing/{LandingId}',['uses'=>'LandingController@update','as'=>'updateLandingById']);

      // Videos
      Route::get('/videoLanding',['uses'=>'VideoLandingController@index','as'=>'videosLandingIndex']);
      Route::get('/videoLanding/new',['uses'=>'VideoLandingController@create','as'=>'addLandingVideo']);
      Route::post('/videoLanding/upload',['uses'=>'VideoLandingController@store','as'=>'videoLandingUpload']);
      Route::get('/videoLanding/{id}',['uses'=>'VideoLandingController@edit','as'=>'getLandingVideo']);
      Route::put('/videoLanding/{id}',['uses'=>'VideoLandingController@update','as'=>'updateLandingVideo']);
      Route::post('/videoLanding/{id}/delete',['uses'=>'VideoLandingController@delete','as'=>'deleteLandingVideo']);


      Route::get('/contactlanding',['uses'=>'LandingController@getcontactLanding','as'=>'getAllcontactLanding']);
      Route::post('/contactlanding/{contactId}',['uses'=>'LandingController@deleteLanding','as'=>'deleteContactLandingById']);
          Route::put('/contactlanding',['uses'=>'LandingController@complete','as'=>'confirmcompletelanding']);
      Route::put('/contactlandingread',['uses'=>'LandingController@readmess','as'=>'confirmreadlanding']);

});

