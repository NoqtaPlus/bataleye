<?php

namespace Modules\Backend\Persons\Http\Controllers;

use App\Entities\Person;
use App\Entities\PersonType;
use Illuminate\Http\Request;
use App\Repositories\PersonRepository;
use App\Http\Controllers\Controller;
use Modules\Backend\Persons\Requests\PersonRequest;
use Modules\Backend\Persons\Models\Person as PersonModel;

/**
 * Class PersonController
 * @package Modules\Backend\Persons\Http\Controllers
 */
class PersonController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */

    public function index(PersonRepository $sliderRepo)
    {
        
        $persons = $sliderRepo->getAllPersons();
        return view('backend.persons.all_persons', compact('persons'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        $types=PersonType::all();
        return view('backend.persons.add_person', compact('types'));
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(PersonRequest $request, PersonRepository $personRepo, Person $person)
    {
        $personRepo->postAddPerson($request, $person);
        return redirect()->route('getAllPersons');
    }

    /**
     * @param $personId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */

    public function edit($personId, PersonRepository $personRepo)
    {
        $types=PersonType::all();
        
        $person = $personRepo->getPersonById($personId);       
        $selectedtype=$person->person_type_id;
        return view('backend.persons.person', compact('person','types','selectedtype'));
    }

    /**
     * @param $personId
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update($personId, PersonRequest $request, PersonRepository $personRepo)
    {
    
        $personRepo->updatePersonById($personId, $request);
        return redirect()->route('getAllPersons');
    }

    /**
     * @param $personId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($personId, PersonModel $personModel)
    {
        $person = $personModel->find($personId);
        $person->delete();
        return redirect()->route('getAllPersons');
    }
    
    public function personImage($id, PersonModel $personModel)
    {
        $person  = $personModel->find($id);
        $imagePath = base_path('uploads/persons/'.$person->image);
        ob_end_clean();
        return response()->file($imagePath);
    }
}
