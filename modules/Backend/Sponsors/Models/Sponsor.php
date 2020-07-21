<?php

namespace Modules\Backend\Sponsors\Models;

use App\Entities\Sponsor as SponsorEntity;
use Utilities\Files\UploadFiles;

class Sponsor extends SponsorEntity 
{
    use UploadFiles;

    public function uploadSponsorImage($file, $request)
    {
        $destinationPath = base_path("uploads/sponsors");
        if ($request->hasFile($file)) {
            $image = $this->uploadImage($request->$file, $destinationPath);
            return $image;
        }
        return null;
    }
}

