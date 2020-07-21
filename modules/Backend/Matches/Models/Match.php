<?php

namespace Modules\Backend\Matches\Models;

use App\Entities\Match as MatchEntity;
use Utilities\Files\UploadFiles;

class Match extends MatchEntity 
{
    use UploadFiles;

    public function uploadMatchImage($file, $request)
    {
        $destinationPath = base_path("uploads/matches");
        if ($request->hasFile($file)) {
            $image = $this->uploadImage($request->$file, $destinationPath);
            return $image;
        }
        return null;
    }
}

