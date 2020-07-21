@extends('front.layouts.front_layout')
@section('meta')
    <title>{{ \App\Http\Controllers\HomeController::translateWord('Corrective_processes')}}</title>
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
                <h1>{{ \App\Http\Controllers\HomeController::translateWord('Corrective_processes')}}</h1>
                <div class="breadcrumb">
                <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}}</a>
                    <a href="{{route('getFrontTechnologies')}}">{{ \App\Http\Controllers\HomeController::translateWord('Corrective_processes')}}</a>
                </div>
            </div>
        </div>
        <!-- // Page Head -->

        <!-- Page Content -->
        <div class="container page-content">
            <h2 class="section-title">{{ \App\Http\Controllers\HomeController::translateWord('Corrective_processes')}}</h2>
            <p>{{ \App\Http\Controllers\HomeController::translateWord('Corrective_processes_second_title')}}</p>
            <!-- Grid -->
            <div class="row">
                @foreach($correctives as $i=>$corrective)
                <!-- Equipment Block -->
                <div class="techno-block col-12 col-m-6 col-l-4">
                    <div class="content-box">
                        @if($corrective->type1=='video')
                        
                        <iframe width="400" height="280" src="{{str_replace('watch?v=', 'embed/', $corrective->image)}}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                        @else
                        <a href="{{route('getFrontCorrectiveDetails',['correctiveId'=>$corrective->service_id,'title' => str_replace(' ', '-', $corrective->name)])}}" class="image" data-src="{{UPLOADS}}/services/{{$corrective->image}}"></a>
                        @endif   
                        
                        <a href="{{route('getFrontCorrectiveDetails',['correctiveId'=>$corrective->service_id,'title' => str_replace(' ', '-', $corrective->name)])}}"><h3>{{$corrective->name}}</h3></a>
                        <p>{{$corrective->short_description}}</p>
                        <a href="{{route('getFrontCorrectiveDetails',['correctiveId'=>$corrective->service_id,'title' => str_replace(' ', '-', $corrective->name)])}}" class="btn primary">{{trans('frontend.read_more')}}</a>
                    </div>
                </div>
                <!-- // Equipment Block -->
                @endforeach
              
            </div>
            <!-- Pagination -->
            <ul class="pagination">
                {{ $correctives->links() }}
            </ul>
        </div>
        <!-- // Page Content -->
@endsection