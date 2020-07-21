<?php

namespace App\Repositories;

use App\Entities\Slider;
use Auth;
use File;

class SliderRepository extends BaseRepository
{
    protected $slider;
    public function __construct()
    {
        $this->slider=new Slider();
    }
    public function getAllSliders()
    {
        return $this->getAllItems($this->slider);
    }
    public function postAddSlider($data,$slider)
    {
        if ($data->hasFile('image'))
        {
            $file= $data->file('image');
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $picture = date('His').$filename;
            $destinationPath='uploads/sliders';
            $file->move($destinationPath, $picture);
            $slider->fill(['image'=>$picture]);
        }
        $date_transition=Slider::orderBy('slider_id','desc')->first()['date_transition'];
        if($date_transition == 'slideup')
        {
            $slider->fill(['date_transition'=>'slidedown']);
        } 
        foreach (\Config::get('languages') as $locale=>$code) 
        {
            $slider->{"title:$locale"}   = $data->input("title:{$locale}");
            $slider->{"short_description:$locale"} = $data->input("short_description:{$locale}");
            $slider->{"long_description:$locale"} = $data->input("long_description:{$locale}");
        }

  
        $slider->fill(['active'=>$data->active]);
        $slider->fill(['created_by'=>Auth::user()->id]);
        $slider->save();
        return $slider;
    }
    public function getSliderById($sliderId)
    {
        return $this->getItemById($sliderId,$this->slider);
    }
    public function updateSliderById($sliderId,$data)
    {
        $slider=$this->slider->find($sliderId);
        if ($data->hasFile('image'))
        {
            $photoName=$slider->image;
            File::delete('uploads/sliders/'.$photoName);
            $file= $data->file('image');
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $picture = date('His').$filename;
            $destinationPath='uploads/sliders';
            $file->move($destinationPath, $picture);
            $slider->fill(['image'=>$picture]);
        }
        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $slider->{"title:$locale"}   = $data->input("title:{$locale}");
            $slider->{"short_description:$locale"} = $data->input("short_description:{$locale}");
            $slider->{"long_description:$locale"} = $data->input("long_description:{$locale}");
        }
        $slider->fill(['active'=>$data->active]);
        $slider->fill(['updated_by'=>Auth::user()->id]);
        $slider->save();
        return $slider;
    }

    public function deleteSliderById($sliderId)
    {
        $slider=$this->slider->find($sliderId);
        $photoName=$slider->image;
        File::delete('uploads/sliders/'.$photoName);
        $this->deleteItemById($sliderId,$this->slider);
    }

    public function getSlidetDetailsBySliderId($sliderId)
    {
        return $this->getItemById($sliderId,$this->slider);
    }

    static public function getLatestSlidersToView()
    {
        return Slider::orderBy('slider_id','desc')->where('active',1)->take(6)->get();
    }
    static public function getSlidersToView()
    {
        return Slider::orderBy('slider_id','desc')->where('active',1)->get();
    }

}