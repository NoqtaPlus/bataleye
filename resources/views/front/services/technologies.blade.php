@extends('front.layouts.front_layout')
@section('meta')
    <title>{{ \App\Http\Controllers\HomeController::translateWord('technologies')}}</title>
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
                <h1>{{ \App\Http\Controllers\HomeController::translateWord('technologies')}}</h1>
                <div class="breadcrumb">
                <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}}</a>
                    <a href="{{route('getFrontTechnologies')}}">{{ \App\Http\Controllers\HomeController::translateWord('technologies')}}</a>
                </div>
            </div>
        </div>
        <!-- // Page Head -->

        <!-- Page Content -->
        <div class="container page-content">
            <h2 class="section-title">{{ \App\Http\Controllers\HomeController::translateWord('our_technologies')}}</h2>
            <p>{{ \App\Http\Controllers\HomeController::translateWord('technologies_second_title')}}</p>
            <!-- Grid -->
            <div class="row">
                @foreach($technologies as $i=>$technology)
                <!-- Equipment Block -->
                <div class="techno-block col-12 col-m-6 col-l-4">
                    <div class="content-box">
                        <a href="{{route('getFrontServiceById',['serviceId'=>$technology->service_id,'title' => str_replace(' ', '-', $technology->name)])}}" class="image" data-src="{{UPLOADS}}/services/{{$technology->image}}"></a>
                        <a href="{{route('getFrontServiceById',['serviceId'=>$technology->service_id,'title' => str_replace(' ', '-', $technology->name)])}}"><h3>{{$technology->name}}</h3></a>
                        <p>{{$technology->short_description}}</p>
                        <a href="{{route('getFrontServiceById',['serviceId'=>$technology->service_id,'title' => str_replace(' ', '-', $technology->name)])}}" class="btn primary">{{trans('frontend.read_more')}}</a>
                    </div>
                </div>
                <!-- // Equipment Block -->
                @endforeach
              
            </div>
            <!-- Pagination -->
            <ul class="pagination">
                {{ $technologies->links() }}
            </ul>
        </div>
        <!-- // Page Content -->
@endsection