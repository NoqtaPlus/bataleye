<?php

namespace App\Entities;
use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Link extends Model
{
    use Translatable;
    public $translatedAttributes = ['title'];
    protected $fillable=['route','link_section_id','active'];
    protected $primaryKey='link_id';
    protected $table='links';
}
