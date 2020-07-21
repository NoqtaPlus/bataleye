<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;

class AdManagement extends Model
{
    protected $fillable = ['image','link','position_id'];
    protected $table = 'ads';
    protected $primaryKey = 'id';
    public function position(){
        return $this->belongsTo(AdsPosition::class,'position_id','id');
    }
}
