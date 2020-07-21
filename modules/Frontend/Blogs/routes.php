<?php
/*Route::group(['prefix'=>"poject_doctor_batal"],function(){
Route::get('/news', ['uses' => 'BlogController@index', 'as' => 'getFrontBlog']);
Route::get('/news/{category_id}/{category_name}', ['uses' => 'BlogController@getBlogsByCategoryId', 'as' => 'getFrontBlogsByCategoryId']);
Route::get('/section/{id}/{title}', ['uses' => 'BlogController@news', 'as'=>'getBlogCategoryById']);
Route::post('/post-comment',['uses'=>'CommentController@postAddComment','as'=>'postAddComment']);
Route::get('/article-details/{id}', ['uses' => 'BlogController@getBlogDetails'])->name("getBlogDetails");
Route::post('/news', ['uses' => 'BlogController@searchBlogs', 'as' => 'searchBlogs']);


Route::get('/tag/{id}/{title}', ['uses' => 'BlogController@tags', 'as'=>'getBlogCategoryByTagId']);

// Comments Api
Route::get('/api/comments/{post_id}', ['uses' => 'CommentController@getPostComments', 'as' => 'getPostComments']);
Route::post('/api/comments/{post_id}', ['uses' => 'CommentController@postComment', 'as' => 'postComment']);


Route::get('/ticket/booking', ['uses' => 'BlogController@GetTickeBooking', 'as' => 'getGetTickeBooking']);


Route::post('/subscript/game-training', ['uses' => 'BlogController@subscript_game_training', 'as' => 'postSubscriptGameTraining']);

Route::get('/latest/news', ['uses' => 'BlogController@latestNews', 'as' => 'getLatestNews']);

});*/

Route::get('/news', ['uses' => 'BlogController@index', 'as' => 'getFrontBlog']);
Route::get('/news/{category_id}/{category_name}', ['uses' => 'BlogController@getBlogsByCategoryId', 'as' => 'getFrontBlogsByCategoryId']);
Route::get('/section/{id}/{title}', ['uses' => 'BlogController@news', 'as'=>'getBlogCategoryById']);
Route::post('/post-comment',['uses'=>'CommentController@postAddComment','as'=>'postAddComment']);
Route::get('/article-details/{id}', ['uses' => 'BlogController@getBlogDetails'])->name("getBlogDetails");
Route::post('/news', ['uses' => 'BlogController@searchBlogs', 'as' => 'searchBlogs']);


Route::get('/tag/{id}/{title}', ['uses' => 'BlogController@tags', 'as'=>'getBlogCategoryByTagId']);

// Comments Api
Route::get('/api/comments/{post_id}', ['uses' => 'CommentController@getPostComments', 'as' => 'getPostComments']);
Route::post('/api/comments/{post_id}', ['uses' => 'CommentController@postComment', 'as' => 'postComment']);


Route::get('/ticket/booking', ['uses' => 'BlogController@GetTickeBooking', 'as' => 'getGetTickeBooking']);


Route::post('/subscript/game-training', ['uses' => 'BlogController@subscript_game_training', 'as' => 'postSubscriptGameTraining']);

Route::get('/latest/news', ['uses' => 'BlogController@latestNews', 'as' => 'getLatestNews']);
