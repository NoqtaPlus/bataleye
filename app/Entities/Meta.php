<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;
use Dimsav\Translatable\Translatable;
use App\Entities\Link;
use App\Entities\Language;
use App\Entities\type_of_content;

class Meta extends Model
{
    use Translatable;
    public $translatedAttributes = ['title','description','keywords'];
    protected $fillable = ['id','title','description','keywords','link_id','lang_id','content_id'];
    protected $table = 'meta';
    protected $primaryKey = 'id';
   
    public function Link(){
        return $this->belongsTo(Link::class,'link_id','link_id');
    }
    public function Language(){
        return $this->belongsTo(Language::class,'lang_id','id');
    }
    public function type_of_content(){
        return $this->belongsTo(type_of_content::class,'content_id','id');
    }
   
}