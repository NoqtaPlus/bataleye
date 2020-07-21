<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class UserRoles extends Model
{
    protected $fillable=['role_name','items_access'];
    protected $primaryKey='role_id';
}
