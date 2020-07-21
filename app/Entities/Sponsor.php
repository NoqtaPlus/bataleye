<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Sponsor extends Model
{
    protected $fillable = ['name', 'image'];
    protected $table = "sponsors";
}
