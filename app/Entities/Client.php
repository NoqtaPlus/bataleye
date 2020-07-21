<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    protected $fillable=['client_id', 'name', 'email','opinion','country', 'phone', 'logo', 'other', 'external_link', 'created_by', 'active'];
    protected $primaryKey='client_id';
    protected $table='clients';
}
