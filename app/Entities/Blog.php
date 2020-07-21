<?php

namespace App\Entities;
use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    use Translatable;
    public $translatedAttributes = ['title', 'short_description', 'long_description','content'];
    protected $fillable = ['category_id', 'keywards', 'image', 'slider', 'breaking', 'created_by', 'updated_by'];
    protected $table = 'blogs';
    
    public function category() 
    {
        return $this->belongsTo(BlogCategory::class, "category_id", "category_id");
    }

    public function comments()
    {
        return $this->hasMany(Comment::class, "post_id", "id");
    }

    public function tags(){
        return $this->belongsToMany(Tag::class, "tag_post", "post_id", "tag_id");
    }
}
