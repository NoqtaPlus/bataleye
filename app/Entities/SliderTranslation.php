<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;

class SliderTranslation extends Model
{
    protected $fillable = ['title', 'short_description', 'long_description'];
    protected $table='sliders_translation';
}
