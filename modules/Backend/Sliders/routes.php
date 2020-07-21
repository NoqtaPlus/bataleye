<?php

Route::group(['prefix'=>'backend-sliders','middleware'=>['access','auth']],function (){
    // Sliders
    Route::get('/',['uses'=>'SliderController@index','as'=>'getAllSliders']);
    Route::get('/add-slider',['uses'=>'SliderController@create','as'=>'getAddSlider']);
    Route::post('/add-slider',['uses'=>'SliderController@store','as'=>'postAddSlider']);
    Route::get('/slider/{sliderId}',['uses'=>'SliderController@edit','as'=>'getSliderById']);
    Route::put('/slider/{sliderId}',['uses'=>'SliderController@update','as'=>'updateSliderById']);
    Route::post('/slider/{sliderId}',['uses'=>'SliderController@delete','as'=>'deleteSliderById']);
});