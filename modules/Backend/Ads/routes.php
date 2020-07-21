<?php
// Ads Management
Route::group(['middleware'=>'auth'],function()
{
    Route::group(['prefix'=>'backend-ads'],function () {
        Route::get('/{id}/image', ['uses'=>'AdsController@getImage'])->name("getAdsImage");

        Route::resource('ads_management', 'AdsController', ['except' => 'show']);
    }); 
});