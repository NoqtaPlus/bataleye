<?php

namespace Modules\Frontend\Media\Models;

use App\Entities\Image as ImageEntity;

class Image extends ImageEntity
{
    public function allAlbums($number = 10)
    {
        $albums = $this->orderBy('id','desc')->paginate($number);
        foreach ($albums as $album) {
            $album->image = explode(";", $album->images)[0];
        }
        return $albums;
    }
}
