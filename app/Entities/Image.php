<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $fillable = [
        'album_title',
        'image_title',
        'images',
        ];
    protected $table = "images";
}
