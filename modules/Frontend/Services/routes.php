<?php
//Route::match(['get','post'],'/search',['uses'=>'ServiceController@searchByKeyword','as'=>'getKeyword']);
/*Route::group(['prefix'=>"poject_doctor_batal"],function(){
    Route::get('/medical-equipments',['uses'=>'ServiceController@equipmentsFront','as'=>'getFrontEquipments']);
    Route::get('/medical-equipments/{id}',['uses'=>'ServiceController@equipmentsFrontbyid','as'=>'getFrontEquipmentsbyid']);
    Route::get('/technologies',['uses'=>'ServiceController@technologiesFront','as'=>'getFrontTechnologies']);
    Route::get('/service/{serviceId}/{serviceName}',['uses'=>'ServiceController@show','as'=>'getFrontServiceById']);
});*/

 Route::get('/medical-equipments',['uses'=>'ServiceController@equipmentsFront','as'=>'getFrontEquipments']);
    Route::get('/medical-equipments/{id}',['uses'=>'ServiceController@equipmentsFrontbyid','as'=>'getFrontEquipmentsbyid']);
    Route::get('/technologies',['uses'=>'ServiceController@technologiesFront','as'=>'getFrontTechnologies']);
    Route::get('/service/{serviceId}',['uses'=>'ServiceController@show','as'=>'getFrontServiceById']);
    Route::get('/Corrective_processes',['uses'=>'ServiceController@correctiveFront','as'=>'getFrontCorrective']);
    Route::get('/Corrective_processes/{correctiveId}',['uses'=>'ServiceController@correctiveFrontDetail','as'=>'getFrontCorrectiveDetails']);
  