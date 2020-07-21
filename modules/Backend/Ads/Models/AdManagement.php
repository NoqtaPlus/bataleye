<?php

namespace Modules\Backend\Ads\Models;

use App\Entities\AdManagement as AdManagementEntity;
use Utilities\Files\UploadFiles;

class AdManagement extends AdManagementEntity
{
    use UploadFiles;

    public function uploadAdsImage($file, $request)
    {
        $destinationPath = base_path("uploads/banners");
        if ($request->hasFile($file)) {
            $image = $this->uploadImage($request->$file, $destinationPath);
            return $image;
        }
        return null;
    }
}
