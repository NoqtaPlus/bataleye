<?php
Route::group(['prefix'=>'backend-sponsors','middleware'=>'auth'],function (){
    //Sponsors
    Route::get('/{id}/image', 'SponsorController@sponsorImage')->name("getSponsorImage");
    Route::get('/',['uses'=>'SponsorController@index','as'=>'getAllSponsors']);
    Route::get('/add-sponsor',['uses'=>'SponsorController@create','as'=>'getAddSponsor']);
    Route::post('/add-sponsor',['uses'=>'SponsorController@store','as'=>'postAddSponsor']);
    Route::get('/sponsor/{sponsorId}',['uses'=>'SponsorController@edit','as'=>'getSponsorById']);
    Route::put('/sponsor/{sponsorId}',['uses'=>'SponsorController@update','as'=>'updateSponsorById']);
    Route::post('/sponsor/{sponsorId}',['uses'=>'SponsorController@delete','as'=>'deleteSponsorById']);
});