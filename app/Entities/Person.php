<?php

namespace App\Entities;
use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Person extends Model
{
    use Translatable;
    public $translatedAttributes = ['name','degree','short_description','services_topics','role','specialist_in','work_days'];
    protected $fillable = [
        'image',
        'person_type_id',
        'contact_info',
        'facebook_link',
        'twitter_link',
        'insta_link',
        'youtube_link',
        ];
       
    protected $table = "persons";
            
    public function Job() 
    {
        return $this->belongsTo(Job::class);
    }
}
