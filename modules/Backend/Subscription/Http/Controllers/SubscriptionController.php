<?php

namespace Modules\Backend\Subscription\Http\Controllers;

use App\Entities\Subscription;
use App\Repositories\SubscriptionRepository;
use App\Http\Controllers\Controller;

/**
 * Class SliderController
 * @package App\Http\Controllers
 */
class SubscriptionController extends Controller
{

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(SubscriptionRepository $subscriptionRepo)
    {
        $subscription = $subscriptionRepo->getAllSubscription();
       
        return view('backend.subscription.all_subscription', compact('subscription'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
  
    
    public function delete($subscriptionId, SubscriptionRepository $subscriptionRepo)
    {
        $subscriptionRepo->deleteSubscriptionById($subscriptionId);
        return redirect()->route('getAllSubscription');
    }
}
