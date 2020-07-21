<?php
Route::group(['prefix'=>'backend-subscript-training','middleware'=>'auth'],function (){
    Route::group(['middleware' => 'check-permission:writer|admin|superadmin'], function(){
        Route::get('/',['uses'=>'SubscriptionController@index','as'=>'getAllSubscriptionTrainingTime']);
        Route::get('/add-subscript-trining',['uses'=>'SubscriptionController@create','as'=>'getAddSubscriptionTrainingTime']);
        Route::post('/add-subscript-trining',['uses'=>'SubscriptionController@store','as'=>'postAddSubscriptionTrainingTime']);
        Route::get('/subscript-trining/{subscriptId}',['uses'=>'SubscriptionController@edit','as'=>'getSubscriptionTrainingTimeById']);
        Route::put('/subscript-trining/{subscriptId}',['uses'=>'SubscriptionController@update','as'=>'updateSubscriptionTrainingTimeById']);
        Route::post('/subscript-trining/{subscriptId}',['uses'=>'SubscriptionController@delete','as'=>'deleteSubscriptionTrainingTimeById']);
    });
  
});

