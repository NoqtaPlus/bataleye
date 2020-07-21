<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Adver extends Model
{
    protected $fillable = [
        'desktop_image',
        'mobile_image',
        'url',
        'enableAds'
        ];
    protected $primaryKey='id';
    protected $table = "adversiting";
}