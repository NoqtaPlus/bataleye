<?php

namespace Modules\Backend\Services\Http\Controllers;

use App\Repositories\ServiceTypeRepository;
use App\Entities\ServiceType;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Modules\Backend\Services\Requests\ServiceTypeRequest;

class serviceTypeController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(ServiceTypeRepository $servicetypeRepo)
    {
        $service_types = $servicetypeRepo->getAllServiceTypes();
        return view('backend.services.Types.all_types', compact('service_types'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(ServiceTypeRepository $servicetypeRepo)
    {
        return view('backend.services.Types.add_service_type');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(ServiceTypeRequest $request, ServiceTypeRepository $servicetypeRepo, ServiceType $servicetype)
    {
        $servicetypeRepo->postAddServiceType($request, $servicetype);
        return redirect()->route('getAllServiceType');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $serviceId
     * @return \Illuminate\Http\Response
     */
    public function edit($servicetypeId, ServiceTypeRepository $servicetypeRepo)
    {   
        $serviceType  = $servicetypeRepo->getServiceTypeById($servicetypeId);
       return view('backend.services.Types.type', compact('serviceType'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  int  $serviceId
     * @return \Illuminate\Http\Response
     */
    public function update($servicetypeId, ServiceTypeRequest $request, ServiceTypeRepository $servicetypeRepo)
    {
        $servicetypeRepo->updateServiceTypeById($servicetypeId, $request);
        return redirect()->route('getAllServiceType');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $serviceId
     * @return \Illuminate\Http\Response
     */
    public function delete($servicetypeId, ServiceTypeRepository $servicetypeRepo)
    {
        $servicetypeRepo->deleteServiceTypeById($servicetypeId);
        return redirect()->route('getAllServiceType');
    }
}
