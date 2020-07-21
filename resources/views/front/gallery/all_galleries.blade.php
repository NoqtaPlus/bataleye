@extends('front.layouts.front_layout')
@section('meta')
    <title>{{trans('frontend.gallary')}} </title>
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
                <h1>{{trans('frontend.our_gallary')}}</h1>
                <div class="breadcrumb">
                    <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}}</a>
                    <a href="{{route('getFrontGallary')}}">{{ \App\Http\Controllers\HomeController::translateWord('gallery')}}</a>
                </div>
            </div>
        </div>
        <!-- // Page Head -->

        <!-- Page Content -->
        <div class="container page-content">
            <h2 class="section-title">{{trans('frontend.gallary')}}</h2>
      
            <!-- Filters Menu -->
            <ul class="mixit-filters">
              <li><a href="{{route('getFrontGallary')}}">{{trans('frontend.all')}}</li>
                <li > <a href="{{route('getFrontImages')}}">{{trans('frontend.photos')}}</a></li>
                    <li ><a href="{{route('getFrontVedio')}}">{{trans('frontend.videos')}}</a></li>
            </ul>
            <!-- Grid -->
            <div class="row" id="mixitup">  
                <!-- Gallery Block -->
                @foreach($images as $i=>$image)
                <div class="col-12 col-m-6 col-l-4 gallery-block mix photos">                   
                <a href="{{UPLOADS}}/images/{{$image[0]}}" class="image" data-src="{{UPLOADS}}/images/{{$image[0]}}" data-lightbox="gallery-{{$i}}"></a>
                @foreach($image as $x=>$imag)
                @if($x!=0)
                <div class="hidden">
                        <a href="{{UPLOADS}}/images/{{$imag}}" data-lightbox="gallery-{{$i}}"></a>
                    </div>
                    @endif
                    @endforeach             
                </div> 
                @endforeach      
                <!-- // Gallery Block -->
               
                <!-- // Gallery Block -->
                <!-- Gallery Block -->
                @foreach($videos as $i=>$video)
                <div class="col-12 col-m-6 col-l-4 gallery-block mix videos">
                <div class="video">
                    @if($video->type=='youtube')
  
                        <iframe width="560" height="315" src="{{str_replace('watch?v=', 'embed/', $video->video)}}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    @else
                    <video width="560" height="315" controls>
                    <source src="{{Route('viewVideo', [$video->id])}}">
                    Your browser does not support the video tag.
                    </video>
                    @endif   
                </div>       
                    </div>
                <!-- // Gallery Block -->
                @endforeach
              
            </div>
        </div>
        <!-- Pagination -->
    
 
        <!-- // Page Content -->
@endsection