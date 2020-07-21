<?php

namespace Modules\Backend\Services\Http\Controllers;

use App\Repositories\ServiceSectionRepository;
use App\Entities\ServiceSections;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ServiceSectionController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(ServiceSectionRepository $serviceSectionRepo)
    {
        $sections = $serviceSectionRepo->getAllServiceSections();
        return view('backend.services.sections.all_sections',compact('sections'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.services.sections.add_service_section');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, ServiceSectionRepository $serviceSectionRepo, ServiceSections $serviceSection)
    {
        $serviceSectionRepo->postAddServiceSections($request,$serviceSection);
        return redirect()->route('getAllServiceSections');
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $sectionId
     * @return \Illuminate\Http\Response
     */
    public function show($sectionId)
    {
        //

    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $sectionId
     * @return \Illuminate\Http\Response
     */
    public function edit($sectionId, ServiceSectionRepository $serviceSectionRepo)
    {
        $section = $serviceSectionRepo->getSectionServiceById($sectionId);
        return view('backend.services.sections.section',compact('section'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $sectionId
     * @return \Illuminate\Http\Response
     */
    public function update($sectionId, Request $request, ServiceSectionRepository $serviceSectionRepo)
    {
        $serviceSectionRepo->updateSectionServiceById($sectionId, $request);
        return redirect()->route('getAllServiceSections');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $sectionId
     * @return \Illuminate\Http\Response
     */
    public function delete($sectionId, ServiceSectionRepository $serviceSectionRepo)
    {
        $serviceSectionRepo->deleteSectionServiceById($sectionId);
        return redirect()->route('getAllServiceSections');
    }
}
