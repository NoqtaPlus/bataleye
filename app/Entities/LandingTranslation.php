<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;

class LandingTranslation extends Model
{
    protected $fillable=['name','short_description','long_description'];
    protected $table='landing_translation';
   
}
