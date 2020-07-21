@extends('front.layouts.front_layout')
@section('meta')
    <title>{{$corrective->name}}</title>
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
        <h1>{{$corrective->name}}</h1>
        <div class="breadcrumb">
        <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}} </a>
        <a href="{{route('getFrontCorrectiveDetails',['correctiveId'=>$corrective->service_id,'correctiveName'=>$corrective->name])}}">{{$corrective->name}}</a>
        </div>
    </div>
</div>
<!-- // Page Head -->
<!-- Page Content -->
<div class="container page-content">
            <!-- Grid -->
            <div class="profile row">
                <!-- Content Side -->
                <div class="col-12 col-m-8 ">
                    <!-- Content -->
                    <div class="single-content">
                    @if($corrective->type1=='video')
                        
                        <iframe width="750" height="400" src="{{str_replace('watch?v=', 'embed/', $corrective->image)}}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                        @else
                        <img src="{{UPLOADS}}/services/{{$corrective->image}}" alt="" class="cover">
                        @endif 
                        
                        {!! html_entity_decode($corrective->long_description) !!}
                    </div>
                </div>
                    <div class="col-12 col-m-4 col-l-3">
                        <form method="post" action="{{route('postAddContactus')}}" class="form-ui booking-form">
                            {{csrf_field()}}
                            <h3>{{ \App\Http\Controllers\HomeController::translateWord('we_are_here')}} </h3>
                            <h2>{{ \App\Http\Controllers\HomeController::translateWord('book_an_appintment')}}</h2>
                            <input name="name" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_name')}}">
                            <input name="email" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_email')}}">
                            <input name="phone" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_phone')}}">
                            <input name="doctor_time" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('doctor_time')}}" data-toggle="datepicker" required>
                            <input name="contact_from" type="hidden" value="online_appointment">
                            <select name="doctor_name" class="chevron-select">
                                    @php
                                    $doctors=\App\Http\Controllers\HomeController::getFrontDoctorsToAppointment();
                                    @endphp
                                    @foreach($doctors as $i=>$doctor)
                                    <option  value="{{$doctor->name}}">{{$doctor->name}}</option>
                                    @endforeach
                                </select>
                            <textarea name="message" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_message')}}"></textarea>
                            <input type="submit" value="{{ \App\Http\Controllers\HomeController::translateWord('book_now')}}" class="btn secondary block-lvl">
                        </form>
                    </div>
            </div>   
                
</div>
        <!-- // Page Content -->
@endsection