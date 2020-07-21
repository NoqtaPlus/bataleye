<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class SubscriptionTrainingTime extends Model
{
    protected $fillable = ['category', 'desc','price','time'];
    protected $table = "subscription_training_time";
}
