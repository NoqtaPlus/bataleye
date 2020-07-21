<?php

Route::group(['prefix'=>'backend-Joinus','middleware'=>'auth'],function (){
    //previouseventss
    Route::get('/',['uses'=>'JoinusController@index','as'=>'getAllJoinus']);
    Route::post('/add-Joinus',['uses'=>'JoinusController@store','as'=>'postAddJoinus']);
    Route::get('/add-Joinus',['uses'=>'JoinusController@create','as'=>'getAddJoinus']);
    Route::get('/Joinus/{JoinusId}',['uses'=>'JoinusController@edit','as'=>'getJoinusById']);
    Route::put('/Joinus/{JoinusId}',['uses'=>'JoinusController@update','as'=>'updateJoinusById']);
    Route::post('/Joinus/{JoinusId}',['uses'=>'JoinusController@delete','as'=>'deleteJoinusById']);
});

