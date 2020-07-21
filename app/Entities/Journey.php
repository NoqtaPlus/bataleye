<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Journey extends Model
{
    protected $fillable = ['title', 'journey_date', 'journey_time','desc','journey_img'];
    protected $table = 'journey';

}
