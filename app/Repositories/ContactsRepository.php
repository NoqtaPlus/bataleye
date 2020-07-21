<?php

namespace App\Repositories;

use App\Entities\Contact;
use File;
use Illuminate\Support\Facades\Auth;

/**
 * Class ContactRepository
 * @package App\Repositories
 */
class ContactsRepository extends BaseRepository
{
    protected $contact;
    /**
     * ContactRepository constructor.
     */
    public function __construct()
	{
        $this->contact=new Contact();
    }

    public function getAllContacts()
    {
        return $this->getAllItems($this->contact);
    }

    public function postAddContact($data)
    {
        return $this->addItem($data,$this->contact);
    }
    public function AddContactUs($request,$contactUs){
        $contactUs->fill(['name'=>$request->name]);
        $contactUs->fill(['email'=>$request->email]);
        $contactUs->fill(['message'=>$request->message]);
        $contactUs->fill(['phone'=>$request->phone]);
        $contactUs->fill(['contact_from'=>$request->contact_from]);
        $contactUs->fill(['doctor_name'=>$request->doctor_name]);
        $contactUs->fill(['doctor_time'=>$request->doctor_time]);
        $contactUs->save();
        return $contactUs;
    }
    public function getContactById($contactId)
    {
        return $this->getItemById($contactId,$this->contact);
    }

    public function updateContactById($contactId,$data)
    {
        return $this->updateItemById($contactId,$data,$this->contact);
    }

    public function deleteContactById($contactId)
    {   
        return $this->deleteItemById($contactId,$this->contact);
    }

    static public function getContactsToView()
    {
        return Contact::orderBy('contact_id','desc')->where('active',1)->get();
    }

    
}