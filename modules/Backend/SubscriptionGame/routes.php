<?php
Route::group(['prefix'=>'backend-subscription-game','middleware'=>'auth'],function (){
    Route::get('/',['uses'=>'SubscriptionController@index','as'=>'getAllSubscriptionGame']);
    Route::post('/subscription/{Id}',['uses'=>'SubscriptionController@delete','as'=>'deleteSubscriptionGameById']);
});