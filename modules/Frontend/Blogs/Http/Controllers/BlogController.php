<?php

namespace Modules\Frontend\Blogs\Http\Controllers;

use App\Entities\Blog;
use App\Entities\BlogCategory;
use App\Entities\Comment;
use App\Entities\SubscriptionTrainingTime;
use App\Entities\ChampionDesc;
use Illuminate\Http\Request;
use App\Repositories\BlogRepository;
use App\Repositories\TagRepository;
use App\Repositories\BlogCategoryRepository;
use App\Http\Controllers\Controller;
use App\Repositories\SponsorsRepository;
use App\Repositories\TicketRepository;
use App\Repositories\SubscriptionGameRepository;
use App\Repositories\ChampionshipRepositories;
use App\Entities\Ticket;
use App\Entities\Meta;
use App\Entities\Link;
use App\Entities\SubscriptionGame;
use Modules\Frontend\Blogs\Requests\TicketRequest;
use Modules\frontend\Blogs\Requests\SubscriptRequest;
use DB;
use Session;
/**
 * Class BlogController
 * @package App\Http\Controllers
 */
class BlogController extends Controller
{
    public $blogRepo;
    public $contactRepo;
    
    /** 
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(BlogRepository $blogRepo,BlogCategoryRepository $blogCategoryRepo)
    {
        $blogs        = Blog::orderBy('id','desc')->paginate(6); 
        $breakingNews = $blogRepo->breakingNews();
        $mostReadable = $blogRepo->mostReadableNews();
        $categories = BlogCategory::all();
        return view('front.blogs.all_blogs', compact('categories', 'blogs', 'breakingNews', 'mostReadable'));
    }

    
    public function getBlogsByCategoryId($category_id,BlogRepository $blogRepo,BlogCategoryRepository $blogCategoryRepo){
        $blogs        = Blog::orderBy('created_at','desc')->where('category_id',$category_id)->paginate(6); 
        $breakingNews = $blogRepo->breakingNews();
        $mostReadable = $blogRepo->mostReadableNews();
        $categories = BlogCategory::all();
        return view('front.blogs.all_blogs', compact('categories', 'blogs', 'breakingNews', 'mostReadable'));
    }

    public function searchBlogs(BlogRepository $blogRepo,BlogCategoryRepository $blogCategoryRepo){
        $breakingNews = $blogRepo->breakingNews();
        $mostReadable = $blogRepo->mostReadableNews();
        $categories = BlogCategory::all();
        $blogs = DB::table('blogs')
            ->join('blogs_translation', 'blogs.id', '=', 'blogs_translation.blog_id')
            ->where('title', request()->search_name)
            ->orWhere('short_description', 'like', '%' . request()->search_name . '%')
            ->orWhere('long_description', 'like', '%' . request()->search_name . '%')->paginate(6);
        return view('front.blogs.all_blogs', compact('categories', 'blogs', 'breakingNews', 'mostReadable'));
    }

    public function latestNews(BlogRepository $blogRepo){
        $listNews      = $blogRepo->listNews();
       
         $breakingNews = $blogRepo->breakingNews();
        $mostReadable = $blogRepo->mostReadableNews();
        return view('front.blogs.latestNews',compact('listNews','breakingNews', 'mostReadable'));
        
    }

    public function tags($tagId, $title, BlogRepository $blogRepo,BlogCategoryRepository $blogCategoryRepo, SponsorsRepository $sponsorModel, TagRepository $tagRepo)
    {
        $tag          = $tagRepo->getTagById($tagId);
        $breakingNews = $blogRepo->breakingNews();
        $sponsors     = $sponsorModel->getAllSponsors();
        $mostReadable = $blogRepo->mostReadableNews();

        return view('front.blogs.news-tags', compact('tag', 'breakingNews', 'sponsors', 'mostReadable'));
    } 

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getBlogDetails($id, BlogRepository $blogRepo, SponsorsRepository $sponsorModel)
    {
        $link=Link::where('route','getFrontBlog')->get()->first();
        $meta=Meta::where('link_id',$link->link_id);
        $blog                     = $blogRepo->getBlogById($id);
        $categories = BlogCategory::all();
        $blogKey                  = "blog ".$blog->id;

        if(!Session::has($blogKey)){
            $blog->increment('number_of_readings');
            Session::put($blogKey,1);
        } 
        $comments=Comment::orderBy('created_at','desc')->where('active',1)->take(4)->get();
        $comments_by_blog_id=Comment::where('post_id',$id)->where('active',1)->get();
        $breakingNews = $blogRepo->breakingNews();
        $mostReadable = $blogRepo->mostReadableNews();
        $recent_blogs      = $blogRepo->recentBlogs();
        $meta->title=$blog->title;
        $meta->description=$blog->description;
        $meta->keywords='';
        return view('front.blogs.blog_details', compact('blog','categories','comments','comments_by_blog_id','recent_blogs', 'breakingNews', 'mostReadable','meta'));
    }
    public function GetTickeBooking(BlogRepository $blogRepo){
        $breakingNews = $blogRepo->breakingNews();
        $mostReadable = $blogRepo->mostReadableNews();
        return view('front.blogs.booking',compact('breakingNews', 'mostReadable'));
    }
    public function PostTickeBooking(TicketRequest $request,Ticket $ticket,TicketRepository $ticketrebo){
       
        $ticketrebo->postAddTicket($request,$ticket);
        return redirect()->back()->with('booking','تم اشتراكك بالرحله بنجاح');

    }
    public function subscript_game_training(Request $request, SubscriptionGameRepository $subscriptRebo,SubscriptionGame $subscript){
      $subscriptRebo->postAddSubscription($request,$subscript);
        Session::flash('done','تم اشتراكك بنجاح');
      return Redirect()->back();
    } 
}
