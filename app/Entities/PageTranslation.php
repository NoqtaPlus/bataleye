<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;

class PageTranslation extends Model
{
    protected $fillable = ['title', 'short_description', 'long_description','mission','vision'];
    protected $table='pages_translation';
}
