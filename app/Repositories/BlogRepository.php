<?php

namespace App\Repositories;

use App\Entities\Blog;
use App\Entities\Tag;
use App\Entities\BlogCategory;
use Auth;
use File;
use Utilities\Files\UploadFiles;

class BlogRepository extends BaseRepository
{
    use UploadFiles;

    protected $blog;
    protected $blogCategory;

    public function __construct()
    {
        $this->blog = new Blog();
        $this->blogCategory = new BlogCategory();
    }
    public function getAllBlogs()
    {
        return $this->getAllItems($this->blog);
    }
    public function recentBlogs($number =4)
    {
        return Blog::orderBy('id','desc')->take($number)->get();
    }
   
    public function getAllPaginateBlogs($per_page)
    {
        return $this->paginateItems($this->blog,$per_page);
    }

    public function getAllBlogCategories()
    {
        return $this->getAllItems($this->blogCategory);
    }

    public function postAddBlog($data, $blog)
    {
        $allData = $data->all();
        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $blog->{"title:$locale"}   = $data->input("title:{$locale}");
            $blog->{"short_description:$locale"} = $data->input("short_description:{$locale}");
            $blog->{"long_description:$locale"} = $data->input("long_description:{$locale}");
            $blog->{"content:$locale"} = $data->input("content");
        }
        $blog->fill($data->all());
        $blog->created_by=Auth::user()->id;
        if ($data->hasFile('image'))
        {            
            $file= $data->file('image');
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $picture = date('His').$filename;
            $destinationPath='uploads/posts/images';
            $file->move($destinationPath, $picture);
            $blog->fill(['image'=>$picture]);
        }
        $blog->save();
        if(isset($allData['tag'])) {
            $blog->tags()->detach();
            $blog->tags()->sync($allData['tag']);
        }
        return $blog;
    }

    public function getBlogById($blogId)
    {
        return $this->getItemById($blogId,$this->blog);
    }

    public function updateBlogById($blogId, $data)
    {
        $allData = $data->all();
        $blog    = $this->blog->find($blogId);
        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $blog->{"title:$locale"}   = $data->input("title:{$locale}");
            $blog->{"short_description:$locale"} = $data->input("short_description:{$locale}");
            $blog->{"long_description:$locale"} = $data->input("long_description:{$locale}");
            $blog->{"content:$locale"} = $data->input("content");
        }
        $blog->fill($data->all());
        if ($data->hasFile('image'))
        {
            $photoName=$blog->image;
            File::delete('uploads/posts/images/'.$photoName);
            $file= $data->file('image');
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $picture = date('His').$filename;
            $destinationPath='uploads/posts/images';
            $file->move($destinationPath, $picture);
            $blog->fill(['image'=>$picture]);
        }
        $blog->updated_by=Auth::user()->id;
        $blog->save();
        if(isset($allData['tag'])) {

            $blog->tags()->detach();
            $blog->tags()->sync($allData['tag']);
        }

        return $blog;
    }

    public function deleteblogById($blogId)
    {
        $blog      = $this->blog->find($blogId);
        $photoName = $blog->image;
        File::delete(base_path("uploads/posts/images/$photoName"));
        $this->deleteItemById($blogId,$this->blog);
    }

    public function getRelatedBlogs($category_id,$number)
    {
        return Blog::orderBy('blog_id','desc')->where('category_id',$category_id)->where('active',1)->take($number)->get();
    }

    public function getBlogDetailsByBlogId($blogId)
    {
        return $this->getItemById($blogId, $this->blog);
    }

    public function getBlogsByCategoryId($categoryId)
    {
        return Blog::orderBy('id','desc')->where('category_id',$categoryId)->where('active',1)->paginate(10);
    }

    public function getBlogsByTagId($tagId)
    {
        return Blog::orderBy('id','desc')->where('active',1)
                     ->whereHas('tags', function ($query) use ($tagId) {
                                        $query->whereIn('tag_id', $tagId);
                                    })->paginate(10);
    }

    static public function getBlogsToView()
    {
        return Blog::orderBy('id','desc')->where('active',1)->get();
    }

    public function breakingNews($number = 5)
    {
        return Blog::orderBy('id','desc')->where('breaking', 1)->take($number)->get();
    }
    
    public function blogNews($number = 6)
    {
        return Blog::orderBy('id','desc')->where('blog', 1)->take($number)->get();
    }

    public function getNewestNews()
    {
        $news = Blog::orderBy('id','desc')->whereHas('category', function($q){
            $q->where('name', BlogCategory::FOOTBALL_NEWS);
        });

        return $news;
    }
    
    public function mostReadableNews()
    {
        $news = Blog::orderBy('number_of_readings', 'desc')->take(5)->get();

        return $news;
    }
    static public function selectSimilarPost($cat_id){
       return Blog::where('category_id','=',$cat_id)->take(6)->get();
    }


    public function footballJuniors()
    {
        $news = Blog::orderBy('id','desc')->whereHas('category', function($q){
            $q->where('name', BlogCategory::FOOTBALL_U23_NEWS);
        });

        return $news;
    }

    public function handballNews()
    {
        $news = Blog::orderBy('id','desc')->whereHas('category', function($q){
            $q->where('name', BlogCategory::HANDBALL_NEWS);
        });

        return $news;
    }

    public function basketballNews()
    {
        $news = Blog::orderBy('id','desc')->whereHas('category', function($q){
            $q->where('name', BlogCategory::BASKETBALL_NEWS);
        });

        return $news;
    }

    public function vollyballNews()
    {
        $news = Blog::orderBy('id','desc')->whereHas('category', function($q){
            $q->where('name', BlogCategory::VOLLEYBALL_NEWS);
        });

        return $news;
    }

    public function reports()
    {
        $news = Blog::orderBy('id','desc')->whereHas('category', function($q){
            $q->where('name', BlogCategory::REPORTS);
        });

        return $news;
    }

    public function interviews()
    {
        $news = Blog::orderBy('id','desc')->whereHas('category', function($q){
            $q->where('name', BlogCategory::INTERVIEWS);
        });

        return $news;
    }

    public function uploadPostImage($file, $request)
    {
        $destinationPath = base_path("uploads/posts/images");
        if ($request->hasFile($file)) {
            $image = $this->uploadImage($request->$file, $destinationPath);
            return $image;
        }
        return null;
    }
}