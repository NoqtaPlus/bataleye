<?php

namespace App\Entities;
use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Landing extends Model
{
    use Translatable;
    public $translatedAttributes = ['name', 'short_description', 'long_description'];
    protected $fillable=['id','image'];
    protected $table='landing';
    protected $primaryKey='id';
    
   
    public function scopeSearchByKeyword($query, $keyword)
    {
        if ($keyword != '')
        {
            $query->where(function ($query) use ($keyword) {
                $query->where("name", "LIKE","%$keyword%")
                    ->orWhere("short_description", "LIKE", "%$keyword%")
                    ->orWhere("long_description", "LIKE", "%$keyword%");
            });
        }
        return $query;
    }
}
