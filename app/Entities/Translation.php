<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Translation extends Model
{
    public $timestamps = false;
    protected $fillable = ["lang", "word", "translation"];
}
