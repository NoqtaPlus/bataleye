@extends('front.layouts.front_layout')
@section('meta')
    <title>{{ \App\Http\Controllers\HomeController::translateWord('our_doctors')}} </title>
    <meta name="description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}">
    <meta name="twitter:card" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:image" content=" " />
    <meta property="og:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_title') !!}" />
    <meta property="og:description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
@endsection
@section('content')
@if($route=="getFrontonlinedocors")

<!-- Modal Box -->
<div class="modal-box" id="modal-demo">
    <!-- Container -->
    <div class="modal-content">
      
        <!-- Content -->
        <div class="modal-body">
         @if($Adver&&$Adver->image!=null) <img height="80" src="{{ASSETS}}/images/ads/{{$Adver->image}}">@endif
        </div>
       
    </div>
    <!--// Container -->
</div>
<!-- // Modal Box -->
 @if($Adver&&$Adver->image!=null)
<script>

document.getElementById('modal-demo').classList.add('active');

</script>
@endif
@endif
<!-- Page Head -->
<div class="page-head">
            <div class="container">
                <!-- <h1>{{ \App\Http\Controllers\HomeController::translateWord('our_doctors')}}</h1>-->
                 <div class="breadcrumb">
                     <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}} </a> 
                    <a href="{{route('getFrontPersons')}}">{{ \App\Http\Controllers\HomeController::translateWord('our_doctors')}}</a> 
                </div>
            </div>
        </div>
        <!-- // Page Head -->

        <!-- Page Content -->
        <div class="container page-content">
        @if($route=="getFrontPersons")
            <h2 class="section-title">{{ \App\Http\Controllers\HomeController::translateWord('medical team')}}</h2>
            @elseif($route=="getFrontdocors")
            <h2 class="section-title">{{ \App\Http\Controllers\HomeController::translateWord('ask_your_doctor')}}</h2>
            @ @elseif($route=="getFrontonlinedocors")
            <h2 class="section-title">{{ \App\Http\Controllers\HomeController::translateWord('online_appointment')}}</h2>
            @endif
            <p>{{ \App\Http\Controllers\HomeController::translateWord('doctors_second_title')}}</p>
            <!-- Grid -->
            <div class="row">
              @foreach($persons as $i=>$person)
                <!-- Doctor Block -->
                <div class="doctor-block col-12 col-m-6 col-l-3">
                    <div class="content-box">
                          @if($person->id==3)
                           <a href="{{route('getPersonDetailsbara',['routename'=>$route])}}" class="image" data-src="{{UPLOADS}}/persons/{{$person->image}}"></a>
                           <a href="{{route('getPersonDetailsbara',['routename'=>$route])}}"><h3>{{$person->name}}</h3></a>
                          @else
                        <a href="{{route('getPersonDetails',['personId'=>$person->id,'routename'=>$route])}}" class="image" data-src="{{UPLOADS}}/persons/{{$person->image}}"></a>
                        <a href="{{route('getPersonDetails',['personId'=>$person->id,'routename'=>$route])}}"><h3>{{$person->name}}</h3></a>
                        @endif
                        <p>{{$person->short_description}}</p>
                        <div class="social">
                            <a href="{{$person->facebook_link}}" class="ti-facebook" target="_blank"></a>
                            <a href="{{$person->twitter_link}}" class="ti-twitter" target="_blank"></a>
                            <a href="{{$person->insta_link}}" class="ti-instagram" target="_blank"></a>
                            <a href="{{$person->youtube_link}}" class="ti-youtube-play" target="_blank"></a>
                        </div>
                    </div>
                </div>
                <!-- // Doctor Block -->
                @endforeach
            </div>    
            
        </div>
        <!-- Pagination -->
        <ul class="pagination">
            {{$persons->links()}}
        </ul>
        <!-- // Page Content -->
@endsection