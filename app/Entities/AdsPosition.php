<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;
use App\Entities\AdManagement;

class AdsPosition extends Model
{
    protected $fillable = ['slug'];
    protected $table = 'ads_positions';
    protected $primaryKey = 'id';
    public function ads(){
        return $this->hasMany(AdManagement::class,'position_id','id');
    }
}
