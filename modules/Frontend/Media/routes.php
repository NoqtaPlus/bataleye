<?php
/*Route::group(['prefix'=>"poject_doctor_batal"],function(){
Route::get('/videosCategory',['uses'=>'MediaController@indexVideos','as'=>'getFrontVideos']);
Route::get('/videosCategory/{id}',['uses'=>'MediaController@getVideo','as'=>'getFrontVideo']);
Route::get('/videos/{id}/video', ['uses'=>'MediaController@viewVideo','as'=>'viewVideo']);
Route::get('/videos/{id}/thumbnail', ['uses'=>'MediaController@getVideoThumbnail','as'=>'getVideoThumbnail']);

Route::get('/galleryCategory',['uses'=>'MediaController@indexImages','as'=>'getFrontImages']);
Route::get('/galleryCategory/{id}',['uses'=>'MediaController@getAlbum','as'=>'getFrontAlbum']);
Route::get('/images/{id}/{index}/image', ['uses'=>'MediaController@viewImage','as'=>'viewImage']);


//gallery 

    Route::get('/gallery',['uses'=>'MediaController@getAllGalleries','as'=>'getFrontGallary']);
    Route::get('/gallery-images',['uses'=>'MediaController@getAllImages','as'=>'getFrontImages']);
    Route::get('/gallery-vedios',['uses'=>'MediaController@getAllVedios','as'=>'getFrontVedio']);
});*/
Route::get('/videosCategory',['uses'=>'MediaController@indexVideos','as'=>'getFrontVideos']);
Route::get('/videosCategory/{id}',['uses'=>'MediaController@getVideo','as'=>'getFrontVideo']);
Route::get('/videos/{id}/video', ['uses'=>'MediaController@viewVideo','as'=>'viewVideo']);
Route::get('/videos/{id}/thumbnail', ['uses'=>'MediaController@getVideoThumbnail','as'=>'getVideoThumbnail']);

Route::get('/galleryCategory',['uses'=>'MediaController@indexImages','as'=>'getFrontImages']);
Route::get('/galleryCategory/{id}',['uses'=>'MediaController@getAlbum','as'=>'getFrontAlbum']);
Route::get('/images/{id}/{index}/image', ['uses'=>'MediaController@viewImage','as'=>'viewImage']);


//gallery 

    Route::get('/gallery',['uses'=>'MediaController@getAllGalleries','as'=>'getFrontGallary']);
    Route::get('/gallery-images',['uses'=>'MediaController@getAllImages','as'=>'getFrontImages']);
    Route::get('/gallery-vedios',['uses'=>'MediaController@getAllVedios','as'=>'getFrontVedio']);




