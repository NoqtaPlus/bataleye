<?php

namespace App\Repositories;

use App\Entities\Joinus;
use File;

class JoinusRepository extends BaseRepository
{
    protected $Joinus;
    public function __construct()
    {
        $this->Joinus=new Joinus();
    }
    public function getAllJoinus()
    {
        return $this->getAllItems($this->Joinus);
    }
   
    public function postAddJoinus($data,$Joinus)
    {
        
        
        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $Joinus->{"title:$locale"} = $data->input("title:{$locale}");
            $Joinus->{"description:$locale"} = $data->input("description:{$locale}");
        }  
        $Joinus->save();
        return $Joinus;
    }
    public function getJoinusById($JoinusId)
    {
        return $this->getItemById($JoinusId,$this->Joinus);
    }
    public function updateJoinusById($JoinusId,$data)
    {
        $Joinus=$this->Joinus->find($JoinusId);
       
        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $Joinus->{"title:$locale"} = $data->input("title:{$locale}");
            $Joinus->{"description:$locale"} = $data->input("description:{$locale}");
        }  
        $Joinus->save();
        return $Joinus;
    }

    public function deleteJoinusById($JoinusId)
    {
        
        $Joinus=$this->Joinus->find($JoinusId);
        $this->deleteItemById($JoinusId,$this->Joinus);

   
    }
   
}