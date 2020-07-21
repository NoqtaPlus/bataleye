<?php

Route::group(['middleware'=>'auth'],function()
{
    Route::group(['prefix'=>'backend-blogs'],function (){
        // Blogs
        Route::get('/{id}/image', ['uses'=>'BlogController@blogImage'])->name("getBlogImage");
    
        Route::get('/',['uses'=>'BlogController@index','as'=>'getAllBlogs']);
        Route::get('/add-blog',['uses'=>'BlogController@create','as'=>'getAddBlog']);
        Route::post('/add-blog',['uses'=>'BlogController@store','as'=>'postAddBlog']);
        Route::get('/blog/{blogId}',['uses'=>'BlogController@edit','as'=>'getBlogById']);
        Route::put('/blog/{blogId}',['uses'=>'BlogController@update','as'=>'updateBlogById']);
        Route::post('/blog/{blogId}',['uses'=>'BlogController@delete','as'=>'deleteBlogById']);
        
        // Comments
        Route::get('/blog/{blogId}/comments',['uses'=>'CommentController@index','as'=>'getCommentsByPostId']);
        Route::post('/blog/{blogId}/comments/{id}',['uses'=>'CommentController@activateCommentById','as'=>'activateCommentById']);
        Route::delete('/blog/{blogId}/comments/{id}',['uses'=>'CommentController@delete','as'=>'deleteCommentsById']);
    
        //Categories of Blogs
    
        Route::get('/backend-categories',['uses'=>'BlogCategoryController@index','as'=>'getAllBlogCategories']);
        Route::get('/add-blog-category',['uses'=>'BlogCategoryController@create','as'=>'getAddBlogCategory']);
        Route::post('/add-blog-category',['uses'=>'BlogCategoryController@store','as'=>'postAddBlogCategory']);
        Route::get('/category/{categoryId}',['uses'=>'BlogCategoryController@edit','as'=>'getBlogsCategoriesById']);
        Route::put('/category/{categoryId}',['uses'=>'BlogCategoryController@update','as'=>'updateBlogCategoryById']);
        Route::post('/category/{categoryId}',['uses'=>'BlogCategoryController@delete','as'=>'deleteBlogCategoryById']);
        
    });
});
