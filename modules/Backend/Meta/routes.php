<?php
Route::group(['prefix'=>'backend-Meta','middleware'=>'access','check-permission:superadmin'],function (){
    
    Route::get('/',['uses'=>'MetaController@index','as'=>'getAllMeta']);
    Route::post('/add-Meta',['uses'=>'MetaController@store','as'=>'postAddMeta']);
    Route::get('/add-meta',['uses'=>'MetaController@create','as'=>'getAddMeta']);
    Route::get('/meta/{metaId}',['uses'=>'MetaController@edit','as'=>'getMetaById']);
    Route::put('/meta/{metaId}',['uses'=>'MetaController@update','as'=>'updateMetaById']);
    Route::post('/meta/{metaId}',['uses'=>'MetaController@delete','as'=>'deleteMetaById']);
    Route::post('/meta',['uses'=>'MetaController@deleteAll','as'=>'deleteAllMeta']);
   
    });