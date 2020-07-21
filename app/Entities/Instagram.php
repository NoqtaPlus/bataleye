<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Instagram extends Model
{
    protected $fillable = [
        'client_id',
        'link',
        'accesstoken',
        ];
    protected $primaryKey='id';
    protected $table = "instagram_accesstoken";
}
