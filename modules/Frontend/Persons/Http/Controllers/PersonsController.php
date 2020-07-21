<?php

namespace Modules\Frontend\Persons\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Entities\Person;
use App\Entities\Adver;
use Illuminate\Http\Request;
use App\Entities\Meta;
use App\Entities\Link;
use Illuminate\Support\Facades\Route;
class PersonsController extends Controller
{
    //get all doctors front
    public function getAllPersons()
    {
        $link=Link::where('route','getFrontPersons')->get()->first();
        $meta=Meta::where('link_id',$link->link_id)->get()->first();
        $persons=Person::paginate(8);
        $route=Route::currentRouteName();
        return view('front.persons.all_persons',compact('persons','route','meta'));
    }
    public function getAlldoctors()
    {
        $link=Link::where('route','getFrontPersons')->get()->first();
        $meta=Meta::where('link_id',$link->link_id)->get()->first();
        $persons=Person::where('person_type_id',2)->paginate(9);
        $route=Route::currentRouteName();
        
        return view('front.persons.all_persons',compact('persons','route','meta'));
    }
    public function getAllonlinedoctors()
    {
           $Adver = Adver::first();
           $link=Link::where('route','getFrontPersons')->get()->first();
           $meta=Meta::where('link_id',$link->link_id)->get()->first();
        $persons=Person::where('person_type_id',2)->paginate(9);
        $route=Route::currentRouteName();
        return view('front.persons.all_persons',compact('persons','route','Adver','meta'));
    }
    //get doctor details 
    public function getPersonDetails($personId,$routename)
    {
        $link=Link::where('route','getFrontPersons')->get()->first();
        $meta=Meta::where('link_id',$link->link_id)->get()->first();
        $route=$routename;
        $person=Person::find($personId);
        $meta->title=$person->name;
        $meta->description=$person->short_description;
        $meta->keywords='';
        return view('front.persons.person_details',compact('person','route','meta'));
    }
     public function getPersonDetailsbara(Request $request)
    {

         $link=Link::where('route','getFrontPersons')->get()->first();
        $meta=Meta::where('link_id',$link->link_id)->get()->first();
        $person=Person::find(3);
          $meta->title=$person->name;
         $meta->description=$person->short_description;
         $meta->keywords='';
        $route=$request->routename;
        return view('front.persons.person_details',compact('person','route','meta'));
    }

}
