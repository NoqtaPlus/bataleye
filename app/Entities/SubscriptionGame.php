<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class SubscriptionGame extends Model
{
    protected $fillable=['fullname', 'email', 'phone', 'membership_no','age','category','time'];
    // |protected $primaryKey='id';
    protected $table='subscription_game';
}
