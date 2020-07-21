<?php 
/*Route::group(['prefix'=>"poject_doctor_batal"],function(){
Route::get('/journey', ['uses' => 'JourneyController@journeyView', 'as' => 'getFrontJourey']);
// Route::get('/ticket/booking', ['uses' => 'JourneyController@GetTickeBooking', 'as' => 'getGetTickeBooking']);
Route::post('/journey', ['uses' => 'JourneyController@PostTickeBooking', 'as' => 'postGetTickeBooking']);
});*/
Route::get('/journey', ['uses' => 'JourneyController@journeyView', 'as' => 'getFrontJourey']);

Route::post('/journey', ['uses' => 'JourneyController@PostTickeBooking', 'as' => 'postGetTickeBooking']);