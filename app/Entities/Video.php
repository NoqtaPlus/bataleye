<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    protected $fillable = [
        'title',
        'description',
        'type',
        'video',
        'thumbnail',
         'type_page',
        ];
    protected $table = "videos";
}
