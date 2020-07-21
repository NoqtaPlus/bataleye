<?php

namespace Modules\Backend\Landing\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Modules\Backend\Media\Models\Video as VideoModel;
use Modules\Backend\Media\Requests\VideoRequest;
use File;

/**
 * Class VideosController
 * @package Modules\Backend\Media\Http\Controllers
 */
class VideoLandingController extends Controller
{
    public function index()
    {
        $videos = VideoModel::where('type_page',"landing_page")->get();
        return view('backend.Landing.videos.index', compact('videos'));
    }

    public function create()
    {
        return view('backend.Landing.videos.create', compact('videos'));
    }

    public function store(VideoRequest $request, VideoModel $videoModel)
    {
        $data = $request->all();
        if (!isset($data["title"])) {
            $data["title"] = $image->getClientOriginalName();
        }
        if ($data["type"] == "file") {
            $video = $videoModel->uploadVideo("video_file", $request);
            $data["video"] = $video;
            $data["thumbnail"] = $videoModel->uploadThumbnail("thumbnail", $request);

        } elseif ($data["type"] == "youtube") {
            $data["video"] = $request->video_link;
            $data["thumbnail"] = $videoModel->getYoutubeThumb($request->video_link);
        }
       
        $videoModel->create($data);
        return redirect()->route('videosLandingIndex');
    }

    public function edit($id, VideoModel $videoModel)
    {
        $video = $videoModel->find($id);
        return view('backend.Landing.videos.edit', compact('video'));
    }

    public function update($id, VideoRequest $request, VideoModel $videoModel)
    {
        $video = $videoModel->find($id);
        $video->title = $request->title;
        $video->description = $request->description;

        if ($request->type == "file") {
            $newVideo = $videoModel->uploadVideo("video_file", $request);
            $newThumbnail = $videoModel->uploadThumbnail("thumbnail", $request);
        } elseif ($request->type == "youtube") {
            $newVideo = $request->video_link;
            $newThumbnail = $videoModel->getYoutubeThumb($request->video_link);
        }


        if (isset($newVideo))
        {
            $video->video = $newVideo;
        }

        if (isset($newThumbnail))
        {
            $video->thumbnail = $newThumbnail;
        }
        $video->type = $request->type;
        $video->save();
        return redirect()->route('videosLandingIndex');
    }

    public function delete($id, VideoModel $videoModel)
    {
        $video = $videoModel->find($id);
        File::delete(base_path("uploads/videos/$video->video"));
        File::delete(base_path("uploads/videos/thumbs/$video->thumbnail"));
        $video->delete();
        return redirect()->route('videosLandingIndex');
    }

    public function viewThumbnail($id, VideoModel $videoModel)
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
