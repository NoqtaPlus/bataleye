<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;
use Dimsav\Translatable\Translatable;

class PersonType extends Model
{
    use Translatable;
    public $translatedAttributes = ['name'];
    protected $fillable = ['id','name'];
    protected $table = 'person_type';
    protected $primaryKey = 'id';
   
    
   
}