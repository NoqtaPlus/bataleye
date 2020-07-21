<?php
/*Route::group(['prefix'=>"poject_doctor_batal"],function(){
 Route::get('/fan-id',['uses'=>'DataCardController@index','as'=>'getFrontData']);
 Route::post('/fan-id',['uses'=>'DataCardController@PostDataCard','as'=>'postCardData']);
 
});*/
 Route::get('/fan-id',['uses'=>'DataCardController@index','as'=>'getFrontData']);
 Route::post('/fan-id',['uses'=>'DataCardController@PostDataCard','as'=>'postCardData']);
?>