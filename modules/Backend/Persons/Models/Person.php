<?php

namespace Modules\Backend\Persons\Models;

use App\Entities\Person as PersonEntity;
use Utilities\Files\UploadFiles;

class Person extends PersonEntity 
{
    use UploadFiles;

    public function uploadPersonImage($file, $request)
    {
        $destinationPath = base_path("uploads/persons");
        if ($request->hasFile($file)) {
            $image = $this->uploadImage($request->$file, $destinationPath);
            return $image;
        }
        return null;
    }
}

