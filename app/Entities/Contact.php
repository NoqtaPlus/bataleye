<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $fillable=['contact_id', 'name', 'email', 'phone', 'message','address','doctor_name','contact_from','doctor_time'];
    protected $primaryKey='contact_id';
    protected $table='contacts';
}
