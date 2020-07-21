<?php

namespace Modules\Backend\Services\Http\Controllers;

use App\Repositories\ServiceRepository;
use App\Entities\Service;
use App\Entities\ServiceType;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Modules\Backend\Services\Requests\ServiceRequest;

class serviceController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(ServiceRepository $serviceRepo)
    {
        $services = $serviceRepo->getAllservices();
        return view('backend.services.all_services', compact('services'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(ServiceRepository $serviceRepo)
    {
        $types=ServiceType::all();
        $sections = $serviceRepo->getAllServiceSections();
        return view('backend.services.add_service', compact('sections','types'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(ServiceRequest $request, ServiceRepository $serviceRepo, Service $service)
    {
        $serviceRepo->postAddService($request, $service);
        return redirect()->route('getAllServices');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $serviceId
     * @return \Illuminate\Http\Response
     */
    public function edit($serviceId, ServiceRepository $serviceRepo)
    {
        $types=ServiceType::all();
        
        $service  = $serviceRepo->getServiceById($serviceId);
        $selectedtype=$service->service_type_id;
       
        $sections = $serviceRepo->getAllServiceSections();
       return view('backend.services.service', compact('service','sections','types','selectedtype'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  int  $serviceId
     * @return \Illuminate\Http\Response
     */
    public function update($serviceId, ServiceRequest $request, ServiceRepository $serviceRepo)
    {
        $serviceRepo->updateServiceById($serviceId, $request);
        return redirect()->route('getAllServices');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $serviceId
     * @return \Illuminate\Http\Response
     */
    public function delete($serviceId, ServiceRepository $serviceRepo)
    {
        $serviceRepo->deleteServiceById($serviceId);
        return redirect()->route('getAllServices');
    }
}
