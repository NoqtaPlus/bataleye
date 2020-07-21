<?php
Route::group(['prefix'=>'backend-persons','middleware'=>'auth'],function()
{
    Route::get('/{id}/image', 'PersonController@personImage')->name("getPersonImage");
     //Persons
    Route::get('/',['uses'=>'PersonController@index','as'=>'getAllPersons']);
    Route::get('/add-person',['uses'=>'PersonController@create','as'=>'getAddPerson']);
    Route::post('/add-person',['uses'=>'PersonController@store','as'=>'postAddPerson']);
    Route::get('/person/{personId}',['uses'=>'PersonController@edit','as'=>'getPersonById']);
    Route::put('/person/{personId}',['uses'=>'PersonController@update','as'=>'updatePersonById']);
    Route::post('/person/{personId}',['uses'=>'PersonController@delete','as'=>'deletePersonById']);
});