<?php
/*Route::group(['prefix'=>"poject_doctor_batal"],function(){
Route::get('/contactus',['uses'=>'ContactUsController@index','as'=>'getFrontContactus']);
Route::post('/contactus',['uses'=>'ContactUsController@store','as'=>'postAddContactus']);
Route::get('/subscript',['uses'=>'ContactUsController@getSubscription','as'=>'GetSubscription']);
Route::post('/subscript',['uses'=>'ContactUsController@postSubscription','as'=>'postSubscription']);
});*/

Route::get('/contact.php',['uses'=>'ContactUsController@index','as'=>'getFrontContactus']);
Route::post('/contact.php',['uses'=>'ContactUsController@store','as'=>'postAddContactus']);
Route::get('/subscript',['uses'=>'ContactUsController@getSubscription','as'=>'GetSubscription']);
Route::post('/subscript',['uses'=>'ContactUsController@postSubscription','as'=>'postSubscription']);
Route::get('/thankyou.php',['uses'=>'ContactUsController@thanks','as'=>'postthanksContactus']);

?>