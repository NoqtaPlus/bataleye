<?php

namespace App\Repositories;

use App\Entities\Blog;
use App\Entities\BlogCategory;
use Auth;
use File;
use Utilities\Files\UploadFiles;

class BlogCategoryRepository extends BaseRepository
{
    protected $blogCategory;

    use UploadFiles;

    public function __construct()
    {
        $this->blogCategory = new BlogCategory();
    }

    public function getAllBlogCategories()
    {
        return $this->getAllItems($this->blogCategory);
    }
    public function postAddBlogCategory($request, $blogCategory)
    {
        $data = $request->all();
        $this->saveBlogCategoryImages($request);
        $blogCategory->create($data);
        return $blogCategory;

    }

    public function getBlogCategoryById($blogCategoryId)
    {
        return $this->getItemById($blogCategoryId,$this->blogCategory);
    }

    public function updateBlogCategoryById($blogCategoryId, $request)
    {
        $blogCategory = $this->blogCategory->find($blogCategoryId);
        $data         = $request->all();
        if ($request->hasFile('image')) {
            $photoName = $blogCategory->image;
            File::delete('public/assets/images/blogs/categories/'.$photoName);
            $picture       = $this->saveBlogCategoryImages($request);
            $data["image"] = $picture;
        }
        $blogCategory->update($data);
        return $blogCategory;
    }

    public function deleteblogCategoryById($blogCategoryId)
    {
        $blogCategory = $this->blogCategory->find($blogCategoryId);
        $photoName    = $blogCategory->image;
        File::delete('public/assets/images/blogs/categories/'.$photoName);
        $this->deleteItemById($blogCategoryId, $this->blogCategory);
    }
     public function blogCategoriesToView()
    {
        return BlogCategory::all();
    }

    public function saveBlogCategoryImages($request)
    {
        if ($request->hasFile('image')) {
            $destinationPath = 'public/assets/images/blogs/categories';
            $image           = $this->uploadImage($request->image, $destinationPath);
            return $image;
        }
        return null;
    }
}