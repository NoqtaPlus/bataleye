<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Match extends Model
{
    protected $fillable = [
        'opposing_team',
        'logo',
        'championship',
        'stadium',
        'date',
        'time',
        'result'
    ];

    protected $table = "matches";
}
