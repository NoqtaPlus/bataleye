<?php

namespace App\Repositories;

use App\Entities\Landing;
use Auth;
use File;

class LandingRepository extends BaseRepository
{
    protected $Landing;
    public function __construct()
    {
        $this->Landing=new Landing();
     
    }
    public function getAllLanding()
    {
        return $this->getAllItems($this->Landing);
    }
    
   
    public function getLandingById($LandingId)
    {
        return $this->getItemById($LandingId,$this->Landing);
    }
    public function updateLandingById($LandingId,$data)
    {
        $Landing=$this->Landing->find($LandingId);
        if ($data->hasFile('image'))
        {
            $photoName=$Landing->image;
            File::delete('uploads/services/'.$photoName);
            $file= $data->file('image');
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $picture = date('His').$filename;
            $destinationPath='uploads/services';
            $file->move($destinationPath, $picture);
            $Landing->fill(['image'=>$picture]);
        }
        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $Landing->{"name:$locale"}   = $data->input("name:{$locale}");
            $Landing->{"short_description:$locale"} = $data->input("short_description:{$locale}");
            $Landing->{"long_description:$locale"} = $data->input("long_description:{$locale}");
        }
       
        $Landing->save();
        return $Landing;
    }

   

    
}