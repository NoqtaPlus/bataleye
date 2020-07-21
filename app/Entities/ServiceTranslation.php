<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;

class ServiceTranslation extends Model
{
    protected $fillable=['name','short_description','long_description'];
    protected $table='services_translation';
   
}
