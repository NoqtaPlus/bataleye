<?php

namespace App\Repositories;
use App\Entities\Person;
use Auth;
use File;

class PersonRepository extends BaseRepository
{
    protected $slider;
    public function __construct()
    {
        $this->person=new Person();
    }
    public function getAllPersons()
    {
        return $this->getAllItems($this->person);
    }
    public function postAddPerson($data,$person)
    {
        if ($data->hasFile('image'))
        {
            $file= $data->file('image');
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $picture = date('His').$filename;
            $destinationPath='uploads/persons';
            $file->move($destinationPath, $picture);
            $person->fill(['image'=>$picture]);
        }
        $person->fill(['contact_info'=>$person->contact_info]);
        foreach (\Config::get('languages') as $locale=>$code) 
        {
            $person->{"name:$locale"}   = $data->input("name:{$locale}");
            $person->{"degree:$locale"}   = $data->input("degree:{$locale}");
            $person->{"role:$locale"}   = $data->input("role:{$locale}");
            $person->{"specialist_in:$locale"}   = $data->input("specialist_in:{$locale}");
            $person->{"work_days:$locale"}   = $data->input("work_days:{$locale}");
            $person->{"services_topics:$locale"}   = $data->input("services_topics:{$locale}");
            $person->{"short_description:$locale"} = $data->input("short_description:{$locale}");
           
        }
        
        $person->fill(['contact_info'=>$data->contact_info]);
        $person->fill(['person_type_id'=>$data->person_type_id]);
        $person->fill(['facebook_link'=>$data->facebook_link]);
        $person->fill(['twitter_link'=>$data->twitter_link]);
        $person->fill(['insta_link'=>$data->insta_link]);
        $person->fill(['youtube_link'=>$data->youtube_link]);
        $person->fill(['created_by'=>Auth::user()->id]);
        
        $person->save();
        print_r($person->services_topics);
        return $person;
    }
    public function getPersonById($personId)
    {
        return $this->getItemById($personId,$this->person);
    }
    public function updatePersonById($personId,$data)
    {
        $person=$this->person->find($personId);
        if ($data->hasFile('image'))
        {
            $file= $data->file('image');
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $picture = date('His').$filename;
            $destinationPath='uploads/persons';
            $file->move($destinationPath, $picture);
            $person->fill(['image'=>$picture]);
        }
        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $person->{"name:$locale"}   = $data->input("name:{$locale}");
            $person->{"degree:$locale"}   = $data->input("degree:{$locale}");
            $person->{"role:$locale"}   = $data->input("role:{$locale}");
            $person->{"specialist_in:$locale"}   = $data->input("specialist_in:{$locale}");
            $person->{"work_days:$locale"}   = $data->input("work_days:{$locale}");
            $person->{"services_topics:$locale"}   = $data->input("services_topics:{$locale}");
            $person->{"short_description:$locale"} = $data->input("short_description:{$locale}");
         
        }

  
        $person->fill(['contact_info'=>$data->contact_info]);
        $person->fill(['person_type_id'=>$data->person_type_id]);
        $person->fill(['facebook_link'=>$data->facebook_link]);
        $person->fill(['twitter_link'=>$data->twitter_link]);
        $person->fill(['insta_link'=>$data->insta_link]);
        $person->fill(['youtube_link'=>$data->youtube_link]);
        $person->fill(['created_by'=>Auth::user()->id]);
        $person->save();
        return $person;
    }

    // public function deleteSliderById($sliderId)
    // {
    //     $slider=$this->person->find($sliderId);
    //     $photoName=$slider->image;
    //     File::delete('uploads/sliders/'.$photoName);
    //     $this->deleteItemById($sliderId,$this->person);
    // }

    // public function getSlidetDetailsBySliderId($sliderId)
    // {
    //     return $this->getItemById($sliderId,$this->person);
    // }

    // static public function getLatestSlidersToView()
    // {
    //     return Slider::orderBy('slider_id','desc')->where('active',1)->take(6)->get();
    // }
    // static public function getSlidersToView()
    // {
    //     return Slider::orderBy('slider_id','desc')->where('active',1)->get();
    // }

}