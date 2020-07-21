<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;
use Dimsav\Translatable\Translatable;

class ServiceType extends Model
{
    use Translatable;
    public $translatedAttributes = ['name'];
    protected $fillable = ['id','name'];
    protected $table = 'service_type';
    protected $primaryKey = 'id';
   
    
   
}