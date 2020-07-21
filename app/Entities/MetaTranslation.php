<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;

class MetaTranslation extends Model
{
    protected $fillable=['title','description','keywords','meta_id'];
    protected $table='meta_translation';
   
   
}