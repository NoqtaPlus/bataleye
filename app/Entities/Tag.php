<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $fillable = ['name'];
    protected $table = "tags";

    public function posts(){
        return $this->belongsToMany(Blog::class, "tag_post", "tag_id", "post_id");
    }
}
