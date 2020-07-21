<?php

namespace App\Repositories;

use App\Entities\SubscriptionGame;
use Illuminate\Support\Facades\Auth;
/**
 * Class ContactRepository
 * @package App\Repositories
 */
class SubscriptionGameRepository extends BaseRepository
{
    protected $subscription;
    /**
     * ContactRepository constructor.
     */
    public function __construct()
	{
        $this->subscription= new SubscriptionGame();
    }

    public function getAllSubscription()
    {
        return $this->getAllItems($this->subscription);
    }

    public function postAddSubscription($data,$subscription){
        $subscription->fill(['fullname'=>$data->fullname]);
        $subscription->fill(['email'=>$data->email]);
        $subscription->fill(['phone'=>$data->phone]);
        $subscription->fill(['membership_no'=>$data->membership_no]);
        $subscription->fill(['age'=>$data->age]);
        $subscription->fill(['time'=>date("y.m.d H:i:s")]);
        $subscription->fill(['category'=>$data->category]);
        $subscription->save();
       
        return $subscription;
 }
    public function getSubscriptionById($subscription_id)
    {
        return $this->getItemById($subscription_id,$this->subscription);
    }

    public function deleteSubscriptionById($subscription_id)
    {   
        return $this->deleteItemById($subscription_id,$this->subscription);
    }

}