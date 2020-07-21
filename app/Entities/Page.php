<?php

namespace App\Entities;
use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    use Translatable;
    public $translatedAttributes = ['title', 'short_description', 'long_description','mission','vision'];
    protected $fillable=['page_id','external_link','image', 'active', 'created_by'];
    protected $primaryKey='page_id';
    protected $table='pages';
}
