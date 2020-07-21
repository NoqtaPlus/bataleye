<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    protected $fillable = ['title'];

    public function persons()
    {
        return $this->hasMany(Person::class);
    }
}
