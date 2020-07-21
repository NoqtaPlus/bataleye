<?php

namespace App\Repositories;

use App\Entities\Service;
use App\Entities\ServiceType;
use App\Entities\ServiceSections;
use Auth;
use File;

class ServiceRepository extends BaseRepository
{
    protected $service;
    protected $serviceSection;
    public function __construct()
    {
        $this->service=new Service();
        $this->serviceSection=new ServiceSections();
    }
    public function getAllServices()
    {
        return $this->getAllItems($this->service);
    }
    public function getAllEquipments()
    {
        return $this->service->where('service_section_id',1)->paginate(8);
    }
    public function getAllTechnologies()
    {
        return $this->service->where('service_section_id',2)->paginate(8);
    }
    public function getAllServiceSections()
    {
        return $this->getAllItems($this->serviceSection);
    }
    public function postAddService($data,$service)
    {
        if ($data->hasFile('image'))
        {
            $file= $data->file('image');
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $picture = date('His').$filename;
            $destinationPath='uploads/services';
            $file->move($destinationPath, $picture);
            $service->fill(['image'=>$picture]);
        }
        else {
            $service->fill(['image'=>$data->video_link]);
        }

        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $service->{"name:$locale"}   = $data->input("name:{$locale}");
            $service->{"short_description:$locale"} = $data->input("short_description:{$locale}");
            $service->{"long_description:$locale"} = $data->input("long_description:{$locale}");
        }
        $service->fill(['service_section_id'=>$data->service_section_id]);
        $data->service_type_id==null? $service->fill(['service_type_id'=>[null]]):$service->fill(['service_type_id'=>$data->service_type_id]);
        $service->fill(['active'=>$data->active]);
        $service->fill(['type1'=>$data->type1]);
        $service->fill(['show_in_homepage'=>$data->show_in_homepage]);
        $service->fill(['created_by'=>Auth::user()->id]);
        $service->save();
        return $service;
    }
    public function getServiceById($serviceId)
    {
        return $this->getItemById($serviceId,$this->service);
    }
    public function updateServiceById($serviceId,$data)
    {
        $service=$this->service->find($serviceId);
        if ($data->hasFile('image'))
        {
            $photoName=$service->image;
            File::delete('uploads/services/'.$photoName);
            $file= $data->file('image');
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $picture = date('His').$filename;
            $destinationPath='uploads/services';
            $file->move($destinationPath, $picture);
            $service->fill(['image'=>$picture]);
        }
        else {
            $service->fill(['image'=>$data->video_link]);
        }
        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $service->{"name:$locale"}   = $data->input("name:{$locale}");
            $service->{"short_description:$locale"} = $data->input("short_description:{$locale}");
            $service->{"long_description:$locale"} = $data->input("long_description:{$locale}");
        }
        $service->fill(['service_section_id'=>$data->service_section_id]);
        $data->service_type_id==null? $service->fill(['service_type_id'=>[null]]):$service->fill(['service_type_id'=>$data->service_type_id]);
        $service->fill(['active'=>$data->active]);
        $service->fill(['type1'=>$data->type1]);
        $service->fill(['show_in_homepage'=>$data->show_in_homepage]);
        $service->save();
        return $service;
    }

    public function deleteServiceById($serviceId)
    {
        $service=$this->service->find($serviceId);
        $photoName=$service->image;
        File::delete('uploads/services/'.$photoName);
        $this->deleteItemById($serviceId,$this->service);
    }

    public function getTopServices()
    {
        return Service::orderBy('service_id','desc')->where('active',1)->where('show_in_homepage',1)->take(3)->get();
    }

    public function getServiceDetailsByServiceId($serviceId)
    {
        return $this->getItemById($serviceId,$this->service);
    }

    static public function serviceToView()
    {
        return Service::orderBy('service_id','desc')->where('active',1)->get();
    }
    static public function serviceType()
    {
        return serviceType::all();
    }
}