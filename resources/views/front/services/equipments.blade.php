@extends('front.layouts.front_layout')
@section('meta')
    <title>{{ \App\Http\Controllers\HomeController::translateWord('equipments')}}</title>
    <meta name="description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}">
    <meta name="twitter:card" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:image" content=" " />
    <meta property="og:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_title') !!}" />
    <meta property="og:description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />

@endsection
@section('content')
<!-- Page Head -->
<div class="page-head">
            <div class="container">
            <h1>{{ \App\Http\Controllers\HomeController::translateWord('equipments')}}</h1>
                <div class="breadcrumb">
                    <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}}</a>
                    <a href="{{route('getFrontEquipments')}}">{{ \App\Http\Controllers\HomeController::translateWord('equipments')}}</a>
                </div>
            </div>
        </div>
        <!-- // Page Head -->
        
       
        <!-- Page Content -->
        <div class="container page-content">
                <ul class="mixit-filters">
                        <li><a href="{{route('getFrontEquipments')}}">{{ \App\Http\Controllers\HomeController::translateWord('medical equipments')}}</li>
                            @foreach ($types as $type )
                                           
                                     
                            <li><a href="{{route('getFrontEquipmentsbyid',['id'=>$type->id])}}">{{$type->name}}</a></li>
                             @endforeach
                    </ul>    
            <h2 class="section-title">{{$typ}}</h2>
            
            <!-- Grid -->
            <div class="row">
                @foreach($equipments as $i=>$equipment)
                <!-- Equipment Block -->
                <div class="equipment-block col-12 col-m-6 col-l-4">
                    <div class="content-box">
                        <a href="{{route('getFrontServiceById',['serviceId'=>$equipment->service_id,'title' => str_replace(' ', '-', $equipment->name)])}}" class="image" data-src="{{UPLOADS}}/services/{{$equipment->image}}"></a>
                        <a href="{{route('getFrontServiceById',['serviceId'=>$equipment->service_id,'title' => str_replace(' ', '-', $equipment->name)])}}"><h3>{{$equipment->name}}</h3></a>
                        <p>{{$equipment->short_description}}</p>
                        <a href="{{route('getFrontServiceById',['serviceId'=>$equipment->service_id,'title' => str_replace(' ', '-', $equipment->name)])}}" class="btn primary">{{trans('frontend.read_more')}}</a>
                    </div>
                </div>
                <!-- // Equipment Block -->
                @endforeach
              
            </div>
            <!-- Pagination -->
            <ul class="pagination">
                {{ $equipments->links() }}
            </ul>
        </div>
        <!-- // Page Content -->
@endsection