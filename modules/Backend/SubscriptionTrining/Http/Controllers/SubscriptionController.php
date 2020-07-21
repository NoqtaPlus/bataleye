<?php

namespace Modules\Backend\SubscriptionTrining\Http\Controllers;

use App\Entities\SubscriptionTrainingTime;
use App\Repositories\SubscriptionTrainingRepository;
use App\Http\Controllers\Controller;
use App\Entities\BlogCategory;
use Modules\Backend\SubscriptionTrining\Requests\SubscriptRequest;
use DB;
/**
 * Class SliderController
 * @package App\Http\Controllers
 */
class SubscriptionController extends Controller
{

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(subscriptionTrainingRepository $subscript)
    {
        $subscripts = $subscript->getAllsubscriptDescription();
       
        return view('backend.subscriptTrining.all_subscript', compact('subscripts'));
    }
    public function create()
    {
        $categories = DB::table('categories')->where([
            ['category_id','!=',1],
            ['category_id','!=',6],
            ['category_id','!=',7],
            ['category_id','!=',8],
            ['category_id','!=',9],
        ])->get();
        
        return view('backend.subscriptTrining.add_subscript',compact('categories'));
    }
    public function store(SubscriptRequest $request, SubscriptionTrainingTime $subscript ,subscriptionTrainingRepository $subscriptrepo)
    {
        $subscriptrepo->postAddsubscriptDescription($request, $subscript);
        
        return redirect()->route('getAllSubscriptionTrainingTime');
    }
    public function edit($chmpoinId, subscriptionTrainingRepository $subscriptrepo)
    {
        $subscript   = $subscriptrepo->getAsubscriptDescriptionById($chmpoinId);
        $categories = DB::table('categories')->where([
            ['category_id','!=',6],
            ['category_id','!=',7],
            ['category_id','!=',8],
            ['category_id','!=',9],
        ])->get();
        return view('backend.subscriptTrining.subscriptTrining',compact('subscript','categories'));
    }
    public function update($chmpoinId, SubscriptRequest $request, subscriptionTrainingRepository $subscriptrepo)
    {
       
        $subscriptrepo->updatesubscriptDescriptionById($chmpoinId,$request);

        return redirect()->route('getAllSubscriptionTrainingTime');
    }
    
    public function delete($subscriptionId, subscriptionTrainingRepository $subscriptrepo)
    {
        $subscriptrepo->deletesubscriptDescriptionById($subscriptionId);
        return redirect()->route('getAllSubscriptionTrainingTime');
    }
}
