<?php

namespace Modules\Backend\Blogs\Http\Controllers;

use App\Entities\Blog;
use App\Entities\Comment;
use App\Entities\BlogCategory;
use Illuminate\Http\Request;
use App\Repositories\BlogRepository;
use App\Http\Controllers\Controller;
use Modules\Backend\Blogs\Requests\BlogRequest;
/**
 * Class BlogController
 * @package App\Http\Controllers
 */
class CommentController extends Controller
{
    
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index($blogId, BlogRepository $blogRepo)
    {
        $blog = Blog::find($blogId);
        $comments = $blog->comments;
        return view('backend.blogs.comments.index', compact('comments'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create(BlogRepository $blogRepo)
    {
    	$categories = $blogRepo->getAllBlogCategories();
        return view('backend.blogs.add_blog', compact('categories'));
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(BlogRequest $request, BlogRepository $blogRepo, Blog $blog)
    {
        $blogRepo->postAddBlog($request, $blog);
        return redirect()->route('getAllBlogs');
    }

    /**
     * @param $blogId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($blogId, BlogRepository $blogRepo)
    {
    	$categories = $blogRepo->getAllBlogCategories();
        $blog = $blogRepo->getBlogById($blogId);
        return view('backend.blogs.blog', compact('blog', 'categories'));
    }

    /**
     * @param $blogId
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update($blogId, BlogRequest $request, BlogRepository $blogRepo)
    {
        $blogRepo->updateBlogById($blogId, $request);
        return redirect()->route('getAllBlogs');
    }

    /**
     * @param $blogId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($blogId, $id)
    {
        $comment = Comment::find($id);
        $comment->delete();
        return redirect()->route('getCommentsByPostId', ['blogId' => $blogId]);
    }

    public function activateCommentById($blogId, $id)
    {
        $comment = Comment::find($id);
        if($comment->active!=1)
        {
            $comment->active=1;
        }else{
            $comment->active=0; 
        }
        $comment->save();
        
        return redirect()->route('getCommentsByPostId', ['blogId' => $blogId]);
    }
}
