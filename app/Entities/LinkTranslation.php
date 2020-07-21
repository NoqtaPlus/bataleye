<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;

class LinkTranslation extends Model
{
    protected $fillable = ['title'];
    protected $table='links_translation';
}
