@extends('front.layouts.front_layout')
@section('meta')
    <title>{{$person->name}}</title>
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
                <!--<h1>{{$person->name}}</h1>-->
                <div class="breadcrumb">
                    <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}}</a>
                    <a href="{{route('getFrontPersons')}}">{{ \App\Http\Controllers\HomeController::translateWord('doctors')}}</a>
                    <!--<a href="{{route('getPersonDetails',['personId'=>$person->id,'personName'=>$person->name])}}">{{$person->name}}</a> -->
                </div>
            </div>
        </div>
        <!-- // Page Head -->

        <!-- Page Content -->
        <div class="container page-content">
            <!-- Profile -->
            <div class="profile row">
                <!-- Main info -->
                <div class="col-12 col-m-4 col-l-3">
                    <img src="{{UPLOADS}}/persons/{{$person->image}}" alt="docname" class="avatar">
                    @if($person->person_type_id == 2)
                     @if($person->services_topics != null)  
                      <ul class="doctor-info">
                
                    <li class="title">{{ trans('frontend.services').' '.' '.$person->name}} </li>
                              @foreach($person->services_topics as $service) 
                                    <li class="ti-checkmark">{{$service}}</li>
                                        @endforeach
                    </ul>
                    @endif
                    @endif
                </div>
                <!-- Details -->
                <div class="col-12 col-m-8 col-l-6">
                    <div class="profile-content">
                        <h3>{{ \App\Http\Controllers\HomeController::translateWord('about').' '.$person->name}}</h3>
                        <h4>{{$person->role}}</h4>
                        <p>{{$person->short_description}}</p>
                    </div>
                    @if($person->person_type_id == 2)
                    <ul class="info-list">
                        <li><span>{{ \App\Http\Controllers\HomeController::translateWord('specialist')}}</span> <p>{{$person->specialist_in}}</p></li>
                        <li><span>{{ \App\Http\Controllers\HomeController::translateWord('degree')}}</span> <p>{{$person->degree}}</p></li>
                        <li><span>{{ \App\Http\Controllers\HomeController::translateWord('contact_info')}}</span> <p>+{{$person->contact_info}}</p></li>
                        <li><span>{{ \App\Http\Controllers\HomeController::translateWord('work_days')}}</span> <p>{{$person->work_days}}</p></li>
                    </ul>
                    @endif
                </div>
                <!-- Booking Form -->
                @if($route=="getFrontonlinedocors")
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
                        <input name="doctor_name" type="hidden" value="{{$person->name}}">
                        <textarea name="message" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_message')}}"></textarea>
                        <input type="submit" value="{{ \App\Http\Controllers\HomeController::translateWord('book_now')}}" class="btn secondary block-lvl">
                    </form>
                </div>
                @elseif($route=="getFrontdocors")
                <div class="col-12 col-m-4 col-l-3">
                    <form method="post" action="{{route('postAddContactus')}}" class="form-ui booking-form">
                        {{csrf_field()}}
                        <h3>{{ \App\Http\Controllers\HomeController::translateWord('we_are_here')}} </h3>
                        <h2>{{ \App\Http\Controllers\HomeController::translateWord('ask_your_doctor')}}</h2>
                        <input name="name" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_name')}}">
                        <input name="email" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_email')}}">
                        <input name="phone" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_phone')}}">           
                        <input name="contact_from" type="hidden" value="ask_your_doctor">
                        <input name="doctor_name" type="hidden" value="{{$person->name}}">
                        <textarea name="message" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_message')}}"></textarea>
                        <input type="submit" value="{{ \App\Http\Controllers\HomeController::translateWord('ask_now')}}" class="btn secondary block-lvl">
                    </form>
                </div>
                @endif
            </div>
            <!-- // Profile -->
        </div>
        <!-- // Page Content -->
@endsection