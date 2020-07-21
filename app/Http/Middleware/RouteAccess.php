<?php

namespace App\Http\Middleware;
use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use App\Entities\SidebarItems;
use App\Entities\UserRoles;
class RouteAccess
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //$items_access=unserialize(Auth::user()->items_access);
        if(Auth::user() && Request::is('admin/*') == Request::url())
        {
            $items_access=unserialize(UserRoles::find(Auth::user()->role_id)->items_access);
            $all_items[]=SidebarItems::select('route')->get();
            $current_route=Request::route()->getName();
            if(!($request->isMethod('post') || $request->isMethod('put')))
            {
                //$id=SidebarItems::where('route',$current_route)->first()->item_id;
                if(!in_array ($current_route, $items_access))
                {
                    return redirect()->route('unauthorised');
                }
    
            }
        }
        
        
        return $next($request);
    }
}
