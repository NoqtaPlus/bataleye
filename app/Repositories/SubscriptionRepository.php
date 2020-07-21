<?php

namespace App\Repositories;

use App\Entities\Subscription;
use File;
use Illuminate\Support\Facades\Auth;

/**
 * Class ContactRepository
 * @package App\Repositories
 */
class SubscriptionRepository extends BaseRepository
{
    protected $subscription;
    /**
     * ContactRepository constructor.
     */
    public function __construct()
	{
        $this->subscription= new Subscription();
    }

    public function getAllSubscription()
    {
        return $this->getAllItems($this->subscription);
    }

    public function AddSubscription($request,$subscription){
        $subscription->fill(['name'=>$request->name]);
        $subscription->fill(['email'=>$request->email]);
        $subscription->fill(['phone'=>$request->phone]);
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