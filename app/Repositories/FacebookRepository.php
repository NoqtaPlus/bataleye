<?php

namespace App\Repositories;

use App\Entities\Facebook;
use Auth;

class FacebookRepository extends BaseRepository
{
    protected $facebook;
    public function __construct()
    {
        $this->facebook=new Facebook();
    }

   
    public function getFacebookById($facebookId)
    {
        return $this->getItemById($facebookId,$this->facebook);
    }
    public function updateFacebookById($facebookId,$data)
    {
        $this->updateItemById($facebookId,$data,$this->facebook);
    }

    static public function getFacebook()
    {
        return Facebook::first();
    }

    static public function facebooknotification()
    {
        $date= date("Y-m-d");
        $facebook= Facebook::first();
        $date2=$facebook->from_date;
        $date2= strtotime(date("Y-m-d", strtotime($date2)) . " +1 month");
        $date2 = date("Y-m-d",$date2);
        $date2= strtotime(date("Y-m-d", strtotime($date2)) . " +25 day");
        $date2 = date("Y-m-d",$date2);
        if($date2<$date){
           
            return "success";
               
        }
      
    }
     
    
    
}