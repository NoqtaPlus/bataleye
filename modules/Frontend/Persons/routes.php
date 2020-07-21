<?php
/*Route::group(['prefix'=>"poject_doctor_batal"],function(){
Route::get('/persons/{id}/image', 'PersonsController@personImage')->name("getPersonImage");
Route::get('/managers', 'PersonsController@managersPage')->name('managersPage');
Route::get('/teamplayers', 'PersonsController@playersPage')->name('playersPage');
Route::get('/last_managers', 'PersonsController@last_mangers')->name('last_managers');

//All Persons

    Route::get('/all-doctors', 'PersonsController@getAllPersons')->name('getFrontPersons');
    Route::get('/all-doctor', 'PersonsController@getAlldoctors')->name('getFrontdocors');
    Route::get('/all-doctoronline', 'PersonsController@getAllonlinedoctors')->name('getFrontonlinedocors');
    Route::get('/doctor/{personI}/{routename}', 'PersonsController@getPersonDetails')->name('getPersonDetails');    
});*/

Route::get('/persons/{id}/image', 'PersonsController@personImage')->name("getPersonImage");
Route::get('/managers', 'PersonsController@managersPage')->name('managersPage');
Route::get('/teamplayers', 'PersonsController@playersPage')->name('playersPage');
Route::get('/last_managers', 'PersonsController@last_mangers')->name('last_managers');

//All Persons

    Route::get('/specialty.php', 'PersonsController@getAllPersons')->name('getFrontPersons');
    Route::get('/all-doctor.php', 'PersonsController@getAlldoctors')->name('getFrontdocors');
    Route::get('/booking_ar.php', 'PersonsController@getAllonlinedoctors')->name('getFrontonlinedocors');
    Route::get('/doctor/{personI}/{routename}', 'PersonsController@getPersonDetails')->name('getPersonDetails');    
   Route::get('/bara_faham_ar.php/{routename}', 'PersonsController@getPersonDetailsbara')->name('getPersonDetailsbara');   

