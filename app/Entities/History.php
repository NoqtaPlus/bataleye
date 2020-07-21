<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class History extends Model
{
    protected $fillable = [
        'year',
        'content',
        ];
    protected $table = "history";
}
