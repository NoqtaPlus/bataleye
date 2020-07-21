<?php

/*Route::group(['prefix'=>"poject_doctor_batal"],function(){
Route::get('/slider/{sliderId}/{sliderName}',['uses'=>'SliderController@show','as'=>'getFrontSliderById']);
});*/

Route::get('/slider/{sliderId}/{sliderName}',['uses'=>'SliderController@show','as'=>'getFrontSliderById']);