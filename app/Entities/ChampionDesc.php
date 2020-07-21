<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class ChampionDesc extends Model
{
    protected $fillable = ['category', 'desc'];
    protected $table = "champion_desc";
}
