<?php

namespace Modules\Frontend\Media\Models;

use App\Entities\Video as VideoEntity;

class Video extends VideoEntity
{
    public function allVideos($number = 5)
    {
        $videos = $this->orderBy('id','desc')->paginate($number);
        return $videos;
    }

    public function getYoutubeId() {
        parse_str( parse_url( $this->video, PHP_URL_QUERY ), $my_array_of_vars );
        return $my_array_of_vars['v'];  
    }
}
