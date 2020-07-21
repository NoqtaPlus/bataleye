<?php

namespace Modules\Backend\Championships\Models;

use App\Entities\Championship as ChampionshipEntity;
use Utilities\Files\UploadFiles;

class Championship extends ChampionshipEntity 
{
    use UploadFiles;

    public function uploadChampionshipImage($file, $request)
    {
        $destinationPath = base_path("uploads/championships");
        if ($request->hasFile($file)) {
            $image = $this->uploadImage($request->$file, $destinationPath);
            return $image;
        }
        return null;
    }
}

