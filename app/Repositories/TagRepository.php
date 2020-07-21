<?php

namespace App\Repositories;

use App\Entities\Tag;
use Auth;
use File;

class TagRepository extends BaseRepository
{

    protected $tag;

    public function __construct(){
        $this->tag = new Tag();
    }

    public function getAllTags(){
        return $this->getAllItems($this->tag);
    }

    public function getTagById($tagId){
       return $this->getItemById($tagId,$this->tag);
    }

}