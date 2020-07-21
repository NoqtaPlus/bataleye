<?php

namespace Modules\Frontend\Media\Http\Controllers;

use Illuminate\Http\Request;
use Modules\Frontend\Media\Models\Image as ImageModel;
use Modules\Frontend\Media\Models\Video as VideoModel;
use App\Http\Controllers\Controller;
use App\Repositories\BlogRepository;
use App\Entities\Meta;
use App\Entities\Link;

class MediaController extends Controller
{
    public function getAllGalleries()
    {

     $images=[];
        $albums = ImageModel::orderBy('id','desc')->paginate(6);
        foreach($albums as $i=>$album){
            $album_obj= ImageModel::find($album->id);          
            $imag = explode(";", $album_obj->images);
            array_push($images, $imag);   
        }
        $videos = VideoModel::orderBy('id','desc')->paginate(6);
        return view('front.gallery.all_galleries', compact('images','videos'));
    }
     public function getAllVedios()
    {  
        $link=Link::where('route','getFrontGallary')->get()->first();
        $meta=Meta::where('link_id',$link->link_id)->get()->first();      
        $videos = VideoModel::orderBy('id','desc')->paginate(9);  

   return view('front.gallery.vedio', compact('videos','meta'));
    }
    public function getAllImages()
    {        
        $images=[];       
        $albums = ImageModel::orderBy('id','desc')->paginate(6);
        foreach($albums as $i=>$album){
            $album_obj= ImageModel::find($album->id);          
            $imag = explode(";", $album_obj->images);
            array_push($images, $imag);   
        }
        $link=Link::where('route','getFrontGallary')->get()->first();
        $meta=Meta::where('link_id',$link->link_id)->get()->first();
     
       return view('front.gallery.images', compact('images','albums','meta'));
    }

    public function getAlbum($id, BlogRepository $blogRepo)
    {
        $album = ImageModel::find($id);
        $blog                     = $blogRepo->getBlogById($id);
       
        $album->images = explode(";", $album->images);
        $breakingNews = $blogRepo->breakingNews();
        $mostReadable = $blogRepo->mostReadableNews();

        return view('front.media.album', compact('album', 'breakingNews', 'mostReadable','blog'));
    }

    public function viewImage($id, $index, ImageModel $imageModel)
    {
        $image  = $imageModel->find($id);
        $images = explode(";", $image->images);
        $imagePath = base_path('uploads/images/'.$images[$index]);
        return response()->file($imagePath);
    }

    public function indexVideos(VideoModel $videoModel, BlogRepository $blogRepo)
    {
        $videos = $videoModel->allVideos(10);
        $breakingNews = $blogRepo->breakingNews();
        $mostReadable = $blogRepo->mostReadableNews();

        return view('front.media.videos-category', compact('videos', 'breakingNews', 'mostReadable','blog'));
    }

    public function getVideo($id, BlogRepository $blogRepo)
    {
        $video = VideoModel::find($id);
        $breakingNews = $blogRepo->breakingNews();
        $mostReadable = $blogRepo->mostReadableNews();

        return view('front.media.video', compact('video', 'breakingNews', 'mostReadable','blog'));
    }

    public function viewVideo($id, VideoModel $videoModel)
    {
        $video  = $videoModel->find($id);
        $videoPath = base_path('uploads/videos/'.$video->video);
        ob_end_clean();
        return response()->file($videoPath);
    }

    public function getVideoThumbnail($id, VideoModel $videoModel)
    {
        $video  = $videoModel->find($id);
        if ($video->type == "youtube") {
            return redirect($video->thumbnail);
        }
        $image = $video->thumbnail;
        $imagePath = base_path('uploads/videos/thumbs/'.$image);
        ob_end_clean();
        return response()->file($imagePath);
        
    }
}
