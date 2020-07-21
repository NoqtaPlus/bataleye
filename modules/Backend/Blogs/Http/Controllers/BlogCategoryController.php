<?php

namespace Modules\Backend\Blogs\Http\Controllers;

use App\Entities\BlogCategory;
use Illuminate\Http\Request;
use App\Repositories\BlogCategoryRepository;
use Modules\Backend\Blogs\Requests\BlogCategoryRequest;
use App\Http\Controllers\Controller;
/**
 * Class BlogCategoryController
 * @package App\Http\Controllers
 */
class BlogCategoryController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(BlogCategoryRepository $blogCategoryRepo)
    {
        $categories = $blogCategoryRepo->getAllBlogCategories();
       
        return view('backend.blogs.categories.all_blog_categories',compact('categories'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create(BlogCategoryRepository $blogCategoryRepo)
    {
        $categories = $blogCategoryRepo->getAllBlogCategories();
        return view('backend.blogs.categories.add_blog_category',compact('categories'));
    }

    /**
     * @param BlogCategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(BlogCategoryRequest $request, BlogCategoryRepository $blogCategoryRepo, BlogCategory $blogCategory)
    {
        $blogCategoryRepo->postAddBlogCategory($request, $blogCategory);
        
        return redirect()->route('getAllBlogCategories');
    }

    /**
     * @param $categoryId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($categoryId, BlogCategoryRepository $blogCategoryRepo)
    {
        $category   = $blogCategoryRepo->getBlogCategoryById($categoryId);
        $categories = $blogCategoryRepo->getAllBlogCategories();

        return view('backend.blogs.categories.category',compact('category', 'categories'));
    }

    /**
     * @param $categoryId
     * @param BlogCategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update($categoryId, BlogCategoryRequest $request, BlogCategoryRepository $blogCategoryRepo)
    {
       
        $blogCategoryRepo->updateBlogCategoryById($categoryId,$request);

        return redirect()->route('getAllBlogCategories');
    }

    /**
     * @param $categoryId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($categoryId, BlogCategoryRepository $blogCategoryRepo)
    {
        $blogCategoryRepo->deleteBlogCategoryById($categoryId);

        return redirect()->route('getAllBlogCategories');
    }

    static public function blogCategoriesToView()
    {
        return blogCategory::all();
    }
}