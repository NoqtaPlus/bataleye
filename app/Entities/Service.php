<?php

namespace App\Entities;
use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use Translatable;
    public $translatedAttributes = ['name', 'short_description', 'long_description'];
    protected $fillable=['service_id','service_section_id','service_type_id','image','type1', 'active','show_in_homepage','created_by'];
    protected $table='services';
    protected $primaryKey='service_id';
    protected $casts = [
        'service_type_id' => 'array',
    ];
public function Type() 
    {
        return $this->belongsTo(ServiceType::class, "service_type_id", "id");
    }
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
