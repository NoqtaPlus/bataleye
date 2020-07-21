<?php

namespace Modules\Frontend\Services\Http\Controllers;

use App\Repositories\ServiceRepository;
use App\Repositories\BlogRepository;
use App\Entities\Service;
use App\Entities\Blog;
use App\Entities\BlogCategory;
use App\Entities\ServiceType;
use App\Entities\Comment;
use Illuminate\Http\Request;
use App\Entities\Meta;
use App\Entities\Link;
use App\Http\Controllers\Controller;

class serviceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
  public function equipmentsFront(ServiceRepository $serviceRepo)
    {
        $types=ServiceType::all();
        $equipments = Service::paginate(6);
        $typ="الأجهزه الطبيه";
        return view('front.services.equipments', compact('equipments','typ','types'));
    }
    public function equipmentsFrontbyid($id)
    {
        $types=ServiceType::all();
       $array=[];
        $equip = Service::all();
        foreach($equip as $equipment){   
            foreach($equipment->service_type_id as $numArr){ 
                if($numArr==$id)
                {
                    array_push($array,$equipment->service_id);
                }           
        }
    }
    $equipments=Service::whereIn('service_id',$array)->paginate(6);
    $typ=ServiceType::find($id)->name;
    $link=Link::where('route','getFrontEquipments')->get()->first();
    $meta=Meta::where('link_id',$link->link_id)->get()->first();
     return view('front.services.equipments', compact('equipments','types','typ','meta'));
    }
    public function technologiesFront(ServiceRepository $serviceRepo)
    {
        $technologies = $serviceRepo->getAllTechnologies();
        return view('front.services.technologies', compact('technologies'));
       
    }

    public function show($serviceId, ServiceRepository $serviceRepo,BlogRepository $blogRepo)
    {
        $link=Link::where('route','getFrontTechnologies')->get()->first();
        $meta=Meta::where('link_id',$link->link_id)->get()->first();
        $service  = $serviceRepo->getServiceDetailsByServiceId($serviceId);
        $categories = BlogCategory::all();
        $comments=Comment::orderBy('created_at','desc')->where('active',1)->take(4)->get();
        $recent_blogs      = $blogRepo->recentBlogs();
        $meta->title=$service->name;
        $meta->description=$service->short_description;
        $meta->keywords='';
        return view('front.services.service_details', compact('service','services','comments','categories','recent_blogs','meta'));
    }
    public function correctiveFront(ServiceRepository $serviceRepo)
    {
        $correctives = Service::where('service_section_id','=','4')->paginate(6);
        return view('front.services.corrective', compact('correctives'));    
    }
    public function correctiveFrontDetail($serviceId,ServiceRepository $serviceRepo)
    {
        $link=Link::where('route','getFrontCorrective')->get()->first();
        $meta=Meta::where('link_id',$link->link_id)->get()->first();
        $corrective = $serviceRepo->getServiceDetailsByServiceId($serviceId);
        $meta->title=$corrective->name;
        $meta->description=$corrective->short_description;
        $meta->keywords='';
        return view('front.services.CorrectiveDetail', compact('corrective','meta'));    
    }
   

    //Search By Keyword
    public function searchByKeyword(Request $request, ServiceRepository $serviceRepo)
    {
        $keyword  = $request->keyword;
        $services = Service::SearchByKeyword($keyword)->get();
        return view('front.services.search_services', compact('services','keyword'));
    }
}
