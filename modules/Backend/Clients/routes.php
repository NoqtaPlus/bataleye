<?php
Route::group(['middleware'=>'auth'],function()
{
    Route::group(['prefix'=>'backend-clients'],function (){
        //Clients
        Route::get('/',['uses'=>'ClientController@index','as'=>'getAllClients']);
        Route::get('/add-client',['uses'=>'ClientController@create','as'=>'getAddClient']);
        Route::post('/add-client',['uses'=>'ClientController@store','as'=>'postAddClient']);
        Route::get('/client/{clientId}',['uses'=>'ClientController@edit','as'=>'getClientById']);
        Route::put('/client/{clientId}',['uses'=>'ClientController@update','as'=>'updateClientById']);
        Route::post('/client/{clientId}',['uses'=>'ClientController@delete','as'=>'deleteClientById']);
    });
});
