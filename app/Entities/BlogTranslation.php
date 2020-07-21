<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;

class BlogTranslation extends Model
{
    protected $table='blogs_translation';
    protected $fillable = ['title', 'short_description', 'content', 'long_description'];
}
