<?php

namespace Modules\Backend\Settings\Models;

use App\Entities\Setting as SettingEntity;
use Utilities\Files\UploadFiles;

class Setting extends SettingEntity
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

    public function fileUpload($file, $request)
    {
        $destinationPath = base_path("uploads/files");
        if ($request->hasFile($file)) {
            $image = $this->uploadImage($request->file($file), $destinationPath);
            return $image;
        }
        return null;
    }
}

