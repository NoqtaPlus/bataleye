<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Championship extends Model
{
    protected $fillable = ['name', 'image', 'years','desc'];
    protected $table = "championships";
}
