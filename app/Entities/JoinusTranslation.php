<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;

class JoinusTranslation extends Model
{
    protected $fillable=['title','description'];
    protected $table='joinus_translation';
   
}