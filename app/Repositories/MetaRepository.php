<?php

namespace App\Repositories;
use App\Entities\MetaTranslation;
use App\Entities\Meta;


class MetaRepository extends BaseRepository
{
    protected $meta;
    public function __construct()
    {
        $this->meta=new Meta();
    }
    public function getAllMeta()
    {
        return $this->getAllItems($this->meta);
    }
   
    public function postAddMeta($data,$meta)
    {
        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $meta->{"title:$locale"}   = $data->input("title:{$locale}");
            $meta->{"description:$locale"} = $data->input("description:{$locale}");
            $meta->{"keywords:$locale"} = $data->input("keywords:{$locale}");
        }
        $meta->fill(['link_id'=>$data->link_id]);
        $meta->fill(['lang_id'=>$data->lang_id]);
        $meta->fill(['content_id'=>$data->content_id]);
        $meta->save();
        return $meta;
    }
    public function getMetaById($metaId)
    {
        return $this->getItemById($metaId,$this->meta);
    }
   
   
    public function updateMetaById($metaId,$data)
    {
        // return $data;
        $meta=$this->meta->find($metaId);
        
        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $meta->{"title:$locale"}   = $data->input("title:{$locale}");
            $meta->{"description:$locale"} = $data->input("description:{$locale}");
            $meta->{"keywords:$locale"} = $data->input("keywords:{$locale}");
        }
        $meta->fill(['link_id'=>$data->link_id]);
        $meta->fill(['lang_id'=>$data->lang_id]);
        $meta->fill(['content_id'=>$data->content_id]);
        $meta->save();
        return $meta;
    }

    public function deleteMetaById($metaId)
    {
        
        $meta=$this->meta->find($metaId);
        $this->deleteItemById($metaId,$this->meta);
    }
     
static public function getMeta($id)
    {
        return Meta::where('link_id','=',$id)->get()->first();

    }
   
}