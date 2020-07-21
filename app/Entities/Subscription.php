<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Subscription extends Model
{
    protected $fillable=['id', 'name', 'email', 'phone', 'message','desc'];
    protected $primaryKey='id';
    protected $table='subscription';
}
