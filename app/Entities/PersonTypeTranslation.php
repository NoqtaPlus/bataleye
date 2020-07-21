<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;

class PersonTypeTranslation extends Model
{
    protected $fillable=['name'];
    protected $table='person_type_translation';
   
   
}