<?php

namespace App\Entities;
use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use Translatable;
    public $translatedAttributes = ['title', 'short_description', 'long_description'];
    protected $fillable=['image','created_by','updated_by',];
    protected $table='sliders';
    protected $primaryKey='slider_id';
}
