<?php
Route::group(['prefix'=>'backend-subscription','middleware'=>'auth'],function (){
    Route::get('/',['uses'=>'SubscriptionController@index','as'=>'getAllSubscription']);
    Route::post('/subscription/{Id}',['uses'=>'SubscriptionController@delete','as'=>'deleteSubscriptionById']);
});