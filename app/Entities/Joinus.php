<?php

namespace App\Entities;
use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;


class Joinus extends Model
{
    use Translatable;
    public $translatedAttributes = ['title','description'];
    protected $fillable   = ['title','description','image'];
    protected $table      = 'joinus';
    protected $primaryKey = 'id';
    
}
