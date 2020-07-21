<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;
use App\Entities\Cites;

class DataCard extends Model
{
    protected $fillable = ['fullname','active','MemberID','IdCardphoto','email','phone','homePhone',
          'address','city_id','personalPhoto','MembershipPhoto','photoBirthday','IdCard'];
    protected $table = 'dataCard';
    protected $primaryKey = 'id';
    public function cites(){
        return $this->belongsTo(Cites::class,'city_id','id');
    }
}
 