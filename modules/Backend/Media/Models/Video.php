<?php

namespace Modules\Backend\Media\Models;

use App\Entities\Video as VideoEntity;
use Utilities\Files\UploadFiles;

class Video extends VideoEntity 
{
    use UploadFiles;

    public function uploadVideo($file, $request)
    {
        $destinationPath = base_path("uploads/videos");
        if ($request->hasFile($file)) {
            $image = $this->uploadImage($request->$file, $destinationPath);
            return $image;
        }
        return null;
    }

    public function uploadThumbnail($file, $request)
    {
        $destinationPath = base_path("uploads/videos/thumbs");
        if ($request->hasFile($file)) {
            $image = $this->uploadImage($request->$file, $destinationPath);
            return $image;
        }
        return null;
    }

    private function getYoutubeId ($url) {
        parse_str( parse_url( $url, PHP_URL_QUERY ), $my_array_of_vars );
        return $my_array_of_vars['v'];  
    }

    public function getYoutubeThumb ($url) {
       // return "https://img.youtube.com/vi/" . $this->getYoutubeId($url) . "/hqdefault.jpg";
    }
}

