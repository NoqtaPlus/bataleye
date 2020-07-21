<?php
Route::group(['prefix'=>'backend-ticket','middleware'=>'auth'],function (){
    Route::get('/',['uses'=>'TicketController@index','as'=>'getAllTicket']);
    Route::post('/ticket/{Id}',['uses'=>'TicketController@delete','as'=>'deleteTicketById']);
});