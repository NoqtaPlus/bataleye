<?php

namespace Modules\Backend\Media\Models;

use App\Entities\Image as ImageEntity;
use Utilities\Files\UploadFiles;

class Image extends ImageEntity 
{
    use UploadFiles;

    public function imageUpload($file, $request)
    {
        $destinationPath = base_path("uploads/images");
        if ($request->hasFile($file)) {
            $image = $this->uploadImage($request->file($file), $destinationPath);
            return $image;
        }
        return null;
    }
}

