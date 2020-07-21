<?php
Route::group(['middleware'=>'auth'],function()
{
    Route::group(['prefix'=>'backend-media'],function (){
            // Images
            Route::get('/images',['uses'=>'ImagesController@index','as'=>'imagesIndex']);
            Route::get('/images/new',['uses'=>'ImagesController@create','as'=>'addImages']);
            Route::post('/images/upload',['uses'=>'ImagesController@store','as'=>'imageUpload']);
            Route::get('/images/{id}',['uses'=>'ImagesController@edit','as'=>'getImage']);
            Route::put('/images/{id}',['uses'=>'ImagesController@update','as'=>'updateImage']);
            Route::post('/images/{id}/delete',['uses'=>'ImagesController@delete','as'=>'deleteImage']);
            
            Route::post('/images/{id}/{index}/delete',['uses'=>'ImagesController@deleteSingle','as'=>'deleteSingleImage']);
        
            // Videos
            Route::get('/videos',['uses'=>'VideosController@index','as'=>'videosIndex']);
            Route::get('/videos/new',['uses'=>'VideosController@create','as'=>'addVideo']);
            Route::post('/videos/upload',['uses'=>'VideosController@store','as'=>'videoUpload']);
            Route::get('/videos/{id}',['uses'=>'VideosController@edit','as'=>'getVideo']);
            Route::put('/videos/{id}',['uses'=>'VideosController@update','as'=>'updateVideo']);
            Route::post('/videos/{id}/delete',['uses'=>'VideosController@delete','as'=>'deleteVideo']);
        });
        //Media
        Route::get('/{id}/{index}/image', 'ImagesController@view')->name("getAlbumImage");
        Route::get('/{id}/thumbnail', 'VideosController@viewThumbnail')->name("getVideoThumb");

});


