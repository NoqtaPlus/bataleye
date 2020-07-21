<?php
Route::group(['middleware'=>'auth'],function()
{
    Route::group(['prefix'=>'backend-dataCard','check-permission:writer|admin|superadmin'],function (){
        
        Route::get('/',['uses'=>'DataCardController@index','as'=>'getAllData']);
        Route::get('/{id}/image', ['uses'=>'DataCardController@personal'])->name("getDataImagePersonal");
        Route::get('/{id}/image', ['uses'=>'DataCardController@dataImage'])->name("getDataImage");
        // Route::get('/data/{dataId}',['uses'=>'DataCardController@show','as'=>'getDataById']);
        // Route::post('/data/{dataId}',['uses'=>'DataCardController@destroy','as'=>'deleteDataCardById']);
        Route::resource('data', 'DataCardController', ['except' => 'create','store','edit','update']);
        Route::get('/{dataId}/pdf',['uses'=>'DataCardController@exportdata','as'=>'pdfData']);
        Route::get('/{dataId}/pdfPersonalphoto',['uses'=>'DataCardController@exportpersonalPhoto','as'=>'pdfDataPersonalphoto']);
        Route::get('/{dataId}/iDphoto',['uses'=>'DataCardController@exportIdPhoto','as'=>'pdfDataIdPhoto']);
        Route::get('/{dataId}/barthDatphoto',['uses'=>'DataCardController@exportBarthdayphoto','as'=>'pdfBarthdayPhoto']);
        Route::get('/{dataId}/Memberphoto',['uses'=>'DataCardController@exportMembershepPhoto','as'=>'pdfMemberPhoto']);
        Route::get('/{dataId}/allData',['uses'=>'DataCardController@alldata','as'=>'pdfAllData']);

    });
});