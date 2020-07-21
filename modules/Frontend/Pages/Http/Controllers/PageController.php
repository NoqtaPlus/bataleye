<?php

namespace Modules\Frontend\Pages\Http\Controllers;

use App\Entities\Adver;
use Illuminate\Http\Request;
use App\Repositories\PageRepository;
use App\Repositories\SliderRepository;
use App\Repositories\ServiceRepository;
use App\Repositories\SponsorsRepository;
use App\Repositories\BlogRepository;
use App\Entities\Page;
use App\Entities\BlogCategory as BlogCategoryEntity;
use App\Entities\Blog;
use App\Entities\BlogCategory;
use App\Entities\Comment;
use App\Entities\Person;
use App\Entities\Joinus;
use App\Entities\Landing;
use Modules\Backend\Joinus\Requests\JoinusRequest;
use Modules\Frontend\Persons\Models\Person as PersonModel;
use Modules\Frontend\Media\Models\Image as ImageModel;
use Modules\Frontend\Media\Models\Video as VideoModel;
use App\Http\Controllers\Controller;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\RequestException;
use App\Entities\Instagram;
use App\Entities\Meta;
use App\Entities\Link;
use Illuminate\Support\Facades\Route;

class PageController extends Controller
{
    protected $sliderRepository;
    protected $serviceRepository;
    protected $sponsorRepository;
    protected $blogRepository;


    public function __construct()
    {
        $this->sliderRepository  = new SliderRepository();
        $this->serviceRepository = new ServiceRepository();
        $this->sponsorRepository = new SponsorsRepository();
        $this->blogRepository = new BlogRepository();
    }

    public function show($pageId, PageRepository $pageRepo,BlogRepository $blogRepo)
    {
        $link=Link::where('route','getAboutusPage')->get()->first();
        $meta=Meta::where('link_id',$link->link_id)->get()->first();
        $page = $pageRepo->getPageById($pageId);
        $categories = BlogCategory::all();
        $comments=Comment::orderBy('created_at','desc')->where('active',1)->take(4)->get();
        $recent_blogs      = $blogRepo->recentBlogs();
        $meta->title=$page->title;
        $meta->description=$page->short_description;
        $meta->keywords='';
        return view('front.pages.page_details', compact('page','comments','categories','recent_blogs','meta'));
    }
    public function getAboutusPage(PageRepository $pageRepo)
    {
        $page = $pageRepo->getPageById(1);
        return view('front.pages.aboutus', compact('page'));
    }
      public function getjoinusPage()
    {
        $joinus = Joinus::first();
        return view('front.pages.joinus', compact('joinus'));
    }
    public function store(JoinusRequest $request ){
   $fileupload="";
 if ($request->hasFile('file'))
        {
        
            $file= $request->file('file');
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $filpath = date('His').$filename;
            $destinationPath=public_path('assets/images/ads/');
            $file->move($destinationPath, $filpath);
            $fileupload='http://demo.mahacode.com/new-elbatal/public/assets/images/ads/'.$filpath ;
         
        }
  
                $to = "hanaaamer61@gmail.com"; 
                $from =$request->email;
                $name = $request->name;
                $phone=$request->phone;
                $subject = "Form submission for Join us";
                if(   $fileupload != ""){
                 $message = "
    <html>
  
    <body>
    <h5>name:$name </h5>  
  
    <h5>phone:$phone</h5>
      <h5>message:$request->message </h5>
    <h5>cv: <a href='$fileupload' download>download</a></h5>
   
    
    </body>
    </html>
    ";}
    else{
            $message = "
    <html>
  
    <body>
    <h5>name:$name </h5>  
  
    <h5>phone:$phone</h5>
      <h5>message:$request->message </h5>
   
   
    
    </body>
    </html>
    ";
    }
    // Always set content-type when sending HTML email 
    $headers =  'From: ' .$from . "\r\n";
    $headers .= "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\b";
    mail($to,$subject,$message,$headers);
                return redirect()->back()->with(['message'=>\App\Http\Controllers\HomeController::translateWord('booking_message')]);
    }
     public function landingpage( ){
        $service=Landing::first();
         $vide = VideoModel::where('type_page',"landing_page")->orderBy('id','desc')->first();
        $videos = VideoModel::where('type_page',"landing_page")->orderBy('id','desc')->paginate(2);
        return view('front.landingpage.landingpage', compact('service','videos','vide'));
    }

    public function index(PersonModel $personModel, BlogCategoryEntity $blogCategory, ImageModel $imageModel, VideoModel $videoModel)
    {
        $adverrise          = Adver::first();
        $sliders        = $this->sliderRepository->getAllSliders();
        $persons=Person::orderBy('created_at','asc')->get()->take(8);
           $route=Route::currentRouteName();
        $images=[];       
        $albums = ImageModel::orderBy('id','desc')->paginate(6);
        foreach($albums as $i=>$album){
            $album_obj= ImageModel::find($album->id);          
            $imag = explode(";", $album_obj->images);
            array_push($images, $imag);   
        }
        $videos = VideoModel::orderBy('id','desc')->paginate(6); 
        //old
        $latestNews     =  $this->blogRepository->recentBlogs();
        $services       = $this->serviceRepository->getTopServices();
        $sponsors       = $this->sponsorRepository->getAllSponsors();
        $breakingNews   = $this->blogRepository->breakingNews();
        $aboutus=Page::find(1);
        $feature_pages=Page::where('page_type','feature')->get();
        $expertise_pages=Page::where('page_type','expertise')->get();
        //$sliderNews     = $this->blogRepository->sliderNews();
        $newestNews     = $this->blogRepository->getNewestNews()->take(10)->get();
        $albums         = $imageModel->allAlbums(10);
        $videos         = $videoModel->allVideos();
        
        return view('front.home.index', compact(
                'sliders',
                'services',
                'sponsors',
                'breakingNews',
               
                'newestNews',
                'blogCategory',
                'albums',
                'videos',
                'latestNews',
                'aboutus',
                'feature_pages',
                'expertise_pages',
                'persons',
                'images',
                'videos',
                'route',
                'adverrise'

                ));
    }
     static public function getAllpostsinstagram()
    {

      $Instagram_accesstoken = Instagram::first()->accesstoken;
    try {
$client = new \GuzzleHttp\Client;
        $response = $client->get('https://api.instagram.com/v1/users/self/media/recent/?access_token='.$Instagram_accesstoken, [
            'connect_timeout' => 10
        ]);


    $response = $client->get('https://api.instagram.com/v1/users/self/media/recent/?access_token='.$Instagram_accesstoken)->getBody();
    
    $response=json_decode($response);
    return  array_slice($response->data,0,12);
        }catch (RequestException $e) {

                return null;
            
        } 
}
}
