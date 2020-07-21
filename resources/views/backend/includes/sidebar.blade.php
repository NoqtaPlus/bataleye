<div class="page-sidebar-wrapper">
    <!-- BEGIN SIDEBAR -->
    <div style="background-color:#3B3F51;color:#fff !important;" class="page-sidebar navbar-collapse collapse">
        <ul class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
        @php
        $menus=\App\Repositories\RolesRepository::getAllSidebarMenus();
        $items_access=unserialize(App\Entities\UserRoles::find(Auth::user()->role_id)->items_access);
        
        @endphp
        @foreach($menus->where('active','1') as $i=>$menu)
            @php 
            $items=\App\Repositories\RolesRepository::getAllSidebarItemsByItemId($menu->menu_id);
             //$items_routes[]=DB::table('sidebar_items')->select('route')->where('menu_id',$menu->menu_id)->get();  
             //$count_items=array_intersect($items_routes,$items_access); 
            @endphp
            <li class="nav-item start">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="{{$menu->icon}}"></i>
                    <span class="title">{{trans('backend.'.$menu->name)}}</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                @php
                 
                @endphp 
                 @foreach($items as $i=>$item)
                 @if(in_array($item->route, $items_access))
                    <li class="nav-item start ">
                        <a href="{{route($item->route)}}" class="nav-link ">
                            <i class="icon-bar-chart"></i>
                            <span class="title">{{trans('backend.'.$item->name)}}</span>
                        </a>
                    </li>
                 @endif
                 @endforeach
                </ul>
            </li>
        @endforeach    
        </ul>
        <!-- END SIDEBAR MENU -->
    </div>
    <!-- END SIDEBAR -->
</div>
