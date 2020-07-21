<?php

Route::group(['prefix'=>'backend-services','middleware'=>'auth'],function (){
    //Services
    Route::get('/',['uses'=>'ServiceController@index','as'=>'getAllServices']);
    Route::get('/add-service',['uses'=>'ServiceController@create','as'=>'getAddService']);
    Route::post('/add-service',['uses'=>'ServiceController@store','as'=>'postAddService']);
    Route::get('/service/{serviceId}',['uses'=>'ServiceController@edit','as'=>'getServiceById']);
    Route::put('/service/{serviceId}',['uses'=>'ServiceController@update','as'=>'updateServiceById']);
    Route::post('/service/{serviceId}',['uses'=>'ServiceController@delete','as'=>'deleteServiceById']);
    //Sections of services
    Route::get('/sections',['uses'=>'ServiceSectionController@index','as'=>'getAllServiceSections']);
    Route::get('/add-section',['uses'=>'ServiceSectionController@create','as'=>'getAddServiceSection']);
    Route::post('/add-section',['uses'=>'ServiceSectionController@store','as'=>'postAddServiceSection']);
    Route::get('/section/{sectionId}',['uses'=>'ServiceSectionController@edit','as'=>'getServiceSectionById']);
    Route::put('/section/{sectionId}',['uses'=>'ServiceSectionController@update','as'=>'updateServiceSectionById']);
    Route::post('/section/{sectionId}',['uses'=>'ServiceSectionController@delete','as'=>'deleteServiceSectionById']);

     //types of services
     Route::get('/serviceType',['uses'=>'ServiceTypeController@index','as'=>'getAllServiceType']);
     Route::get('/add-serviceType',['uses'=>'ServiceTypeController@create','as'=>'getAddServiceType']);
     Route::post('/add-serviceType',['uses'=>'ServiceTypeController@store','as'=>'postAddServiceType']);
     Route::get('/serviceType/{servicetypeId}',['uses'=>'ServiceTypeController@edit','as'=>'getServiceTypeById']);
     Route::put('/serviceType/{servicetypeId}',['uses'=>'ServiceTypeController@update','as'=>'updateServiceTypeById']);
     Route::post('/serviceType/{servicetypeId}',['uses'=>'ServiceTypeController@delete','as'=>'deleteServiceTypeById']);
});