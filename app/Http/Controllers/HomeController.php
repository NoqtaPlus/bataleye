<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\SliderRepository;
use App\Repositories\ServiceRepository;
use App\Repositories\SponsorsRepository;
use App\Repositories\BlogRepository;
use App\Entities\BlogCategory as BlogCategoryEntity;
use App\Entities\Page;
use App\Entities\Blog;
use App\Entities\Person;
use App\Entities\Client;
use App\Entities\Translation;
use Lang;
use Modules\Frontend\Persons\Models\Person as PersonModel;
use Modules\Frontend\Media\Models\Image as ImageModel;
use Modules\Frontend\Media\Models\Video as VideoModel;
use Modules\Backend\Settings\Models\Setting as SettingModel;

class HomeController extends Controller
{
    /**
     * HomeController constructor.
     */
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

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(PersonModel $personModel, BlogCategoryEntity $blogCategory, ImageModel $imageModel, VideoModel $videoModel)
    {
        
        //new
        $sliders        = $this->sliderRepository->getAllSliders();
        $persons=Person::orderBy('created_at','asc')->get()->take(8);
        $albums = ImageModel::all();
        foreach($albums as $i=>$album){
            $album_obj= ImageModel::find($album->id);
            $images = explode(";", $album_obj->images);   
        }
       
        $videos = VideoModel::all();
        //old
        
        $latestNews     = $this->blogRepository->listNews();
        $services       = $this->serviceRepository->getTopServices();
        $sponsors       = $this->sponsorRepository->getAllSponsors();
        $breakingNews   = $this->blogRepository->breakingNews();
        $aboutus=Page::find(1);
        dd("ewwkjlke");
        // dd("eeeeeeeerrrww");
        $feature_pages  = Page::where('page_type','feature')->get();
        $sliderNews     = $this->blogRepository->sliderNews();
        $newestNews     = $this->blogRepository->getNewestNews()->take(10)->get();
        $albums         = $imageModel->allAlbums(10);
        $videos         = $videoModel->allVideos();
       
        return view('front.home.index', compact(
                'sliders',
                'services',
                'sponsors',
                'breakingNews',
                'sliderNews',
                'newestNews',
                'blogCategory',
                'albums',
                'videos',
                //'latestNews',
                'aboutus',
                'feature_pages',
                'persons',
                'images',
                'videos'
                ));
    }
     static public function translateWord($word)
   {
       if(is_object(Translation::where('word',$word)->where('lang',Lang::getLocale())->first()))
       {
           return Translation::where('word',$word)->where('lang',Lang::getLocale())->first()->translation;
       }
           foreach (\Config::get('languages') as $locale=>$language)
           {
               $translate=new Translation();
               $translate->word=$word;
               $translate->lang=$locale;
               $translate->translation=$word;
               $translate->save();
           }
           return Translation::where('word',$word)->where('lang',Lang::getLocale())->first()->translation;
   }
    
    static public function getAllBlogsToFooter(){
        $blogs=Blog::orderBy('created_at','desc')->take(3)->get();
        return $blogs;
    }
    static public function getAboutusFooter(){
        $aboutfooter=Page::find(1)->short_description;
        return $aboutfooter;
    }
    static public function getFrontTestmonials(){
        $testmonials=Client::orderBy('created_at','desc')->where('active',1)->get();
        return $testmonials;
    }
    static public function getFrontDoctorsToAppointment(){
        $doctors=Person::where('person_type_id',2)->get();
        return $doctors;
    }

    public function getFile($name)
    {
        $file = base_path('uploads/images/'.$name);
        return response()->file($file);
    }
    public function getSiteMap(SettingModel $settingModel)
    {
        $file = base_path('uploads/files/'. $settingModel->first()->site_map);
        return response()->file($file);
    }
}
