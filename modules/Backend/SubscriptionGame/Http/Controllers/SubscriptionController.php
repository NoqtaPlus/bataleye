<?php

namespace Modules\Backend\SubscriptionGame\Http\Controllers;

use App\Entities\SubscriptionGame;
use App\Repositories\SubscriptionGameRepository;
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
    public function index(SubscriptionGameRepository $subscriptionRepo)
    {
        $subscription = $subscriptionRepo->getAllSubscription();
       
        return view('backend.subscription_game.all_subscription', compact('subscription'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
  
    
    public function delete($subscriptionId, SubscriptionGameRepository $subscriptionRepo)
    {
        $subscriptionRepo->deleteSubscriptionById($subscriptionId);
        return redirect()->route('getAllSubscriptionGame');
    }
}
