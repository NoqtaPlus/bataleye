<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;

class ServiceTypeTranslation extends Model
{
    protected $fillable=['name'];
    protected $table='service_type_translation';
   
   
}