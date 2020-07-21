<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;
use App\Entities\DataCard;

class Cites extends Model
{
    protected $fillable   = ['name','iso'];
    protected $table      = 'cities';
    protected $primaryKey = 'id';
    public function data(){
        return $this->belongsTo(DataCard::class,'city_id','id');
    }
}
