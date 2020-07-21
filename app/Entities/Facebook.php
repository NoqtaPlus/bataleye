<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Facebook extends Model
{
    protected $fillable = ['app_id', 'app_secret', 'access_token','from_date'];
    protected $table = 'facebook';

}
