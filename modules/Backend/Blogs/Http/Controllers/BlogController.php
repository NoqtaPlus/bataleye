<?php

namespace Modules\Backend\Blogs\Http\Controllers;

use App\Entities\Blog;
use App\Entities\BlogCategory;
use Illuminate\Http\Request;
use App\Repositories\BlogRepository;
use App\Repositories\TagRepository;
use App\Http\Controllers\Controller;
use Modules\Backend\Blogs\Requests\BlogRequest;
use File;
/**
 * Class BlogController
 * @package App\Http\Controllers
 */
class BlogController extends Controller
{
    
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(BlogRepository $blogRepo)
    {
        $blogs = Blog::orderBy('id','desc')->get();
        return view('backend.blogs.all_blogs', compact('blogs'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create(BlogRepository $blogRepo, TagRepository $tagRepo)
    {
    	$categories = $blogRepo->getAllBlogCategories();
        $tags  = $tagRepo->getAllTags();
        return view('backend.blogs.add_blog', compact('categories','tags'));
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
    public function edit($blogId, BlogRepository $blogRepo, TagRepository $tagRepo)
    {
    	$categories = $blogRepo->getAllBlogCategories();
        $blog       = $blogRepo->getBlogById($blogId);
        $tags       = $tagRepo->getAllTags();
        return view('backend.blogs.blog', compact('blog', 'categories','tags'));
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
    public function delete($blogId, BlogRepository $blogRepo)
    {
        $blogRepo->deleteBlogById($blogId);
        return redirect()->route('getAllBlogs');
    }
    
    public function blogImage($id, BlogRepository $blogRepo)
    {
        $blog      = $blogRepo->getBlogById($id);
        $imagePath = base_path('uploads/posts/images/'.$blog->image);
        ob_end_clean();
        return response()->file($imagePath);
    }
}
