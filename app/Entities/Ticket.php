<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;
class Ticket extends Model{
    protected $fillable = ['full_name','phone','ticket_name','membership_no','Facilities_no'];
    protected $table = "ticket";
}