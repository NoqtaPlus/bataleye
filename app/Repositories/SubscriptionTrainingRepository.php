<?php
namespace App\Repositories;
use App\Entities\SubscriptionTrainingTime;


/**
 * Class UserRepository
 * @package App\Repositories
 */
class subscriptionTrainingRepository extends BaseRepository {
    protected $subscript;
   
    /**
     * UserRepository constructor.
     */
    public function __construct()
    {
        $this->subscript = new SubscriptionTrainingTime();
    }
    /**
     * @return array of all Ads
     */
    public function getAllsubscriptDescription(){
        return $this->getAllItems($this->subscript);
    }
    public function postAddsubscriptDescription($data,$subscript){
       
           $subscript->fill(['category'=>$data->category]);
           $subscript->fill(['desc'=>$data->desc]);
           $subscript->fill(['price'=>$data->price]);
           $subcribt->fill(['time'=>$data->date("Y-m-d H:i:s")]);
           $subscript->save();
           return $subscript;
    }
    public function getAsubscriptDescriptionById($adId){
       return $this->getItemById($adId,$this->subscript);
    }

    public function updatesubscriptDescriptionById($adId,$data){
        $subscript=$this->subscript->find($adId);
        $subscript->fill(['category'=>$data->category]);
        $subscript->fill(['desc'=>$data->desc]);
        $subscript->fill(['price'=>$data->price]);
        $subcribt->fill(['time'=>$data->date("Y-m-d H:i:s")]);
        $subscript->save();
        return $subscript;
    }
    public function deletesubscriptDescriptionById($adId){
        $ad=$this->subscript->find($adId);
        $this->deleteItemById($adId,$this->subscript);
    }
    public function getsubscriptDescriptionDetails($adId){
        return $this->getItemById($adId,$this->subscript);
    }

}