<?php
Route::group(['prefix'=>'backend-users','middleware'=>['access','auth']],function (){
    //Users
    Route::get('/',['uses'=>'UserController@index','as'=>'getAllUsers']);
    Route::get('/add-user',['uses'=>'UserController@create','as'=>'getAddUser']);
    Route::post('/add-user',['uses'=>'UserController@store','as'=>'postAddUser']);
    Route::get('/user/{userId}',['uses'=>'UserController@edit','as'=>'getUserById']);
    Route::put('/user/{userId}',['uses'=>'UserController@update','as'=>'updateUserById']);
    Route::post('/user/{userId}',['uses'=>'UserController@delete','as'=>'deleteUserById']);
    //Users Roles
    //Users
    Route::get('/user-roles',['uses'=>'RolesController@index','as'=>'getAllRoles']);
    Route::get('/add-role',['uses'=>'RolesController@create','as'=>'getAddRole']);
    Route::post('/add-role',['uses'=>'RolesController@store','as'=>'postAddRole']);
    Route::get('/role/{roleId}',['uses'=>'RolesController@edit','as'=>'getRoleById']);
    Route::put('/role/{roleId}',['uses'=>'RolesController@update','as'=>'updateRoleById']);
    Route::post('/role/{roleId}',['uses'=>'RolesController@delete','as'=>'deleteRoleById']);
});

