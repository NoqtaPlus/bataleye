<?php

namespace App\Repositories;
use App\Entities\ServiceType;

class ServiceTypeRepository extends BaseRepository
{
    protected $serviceType;
    public function __construct()
    {
        $this->serviceType=new ServiceType();
    }
    public function getAllServiceTypes()
    {
        return $this->getAllItems($this->serviceType);
    }
   
    public function postAddServiceType($data,$serviceType)
    {

        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $serviceType->{"name:$locale"}   = $data->input("name:{$locale}");           
        }
       
        $serviceType->save();
        return $serviceType;
    }
    public function getServiceTypeById($servicetypeId)
    {
        return $this->getItemById($servicetypeId,$this->serviceType);
    }
    public function updateServiceTypeById($servicetypeId,$data)
    {
        $serviceType=$this->serviceType->find($servicetypeId);
       
        foreach (\Config::get('languages') as $locale=>$language) 
        {
            $serviceType->{"name:$locale"}   = $data->input("name:{$locale}");          
        }       
        $serviceType->save();
        return $serviceType;
    }

    public function deleteServiceTypeById($servicetypeId)
    {
        $serviceType=$this->serviceType->find($servicetypeId);
        $this->deleteItemById($servicetypeId,$this->serviceType);
    }

    
}