@extends('front.layouts.front_layout')
@section('meta')
    <title>{{ \App\Http\Controllers\HomeController::translateWord('contactus')}}</title>
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
                <h1>{{ \App\Http\Controllers\HomeController::translateWord('contactus')}}</h1>
                <div class="breadcrumb">
                    <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}}</a>
                    <a href="{{route('getFrontContactus')}}">{{ \App\Http\Controllers\HomeController::translateWord('contactus')}}</a>
                </div>        
            </div>
        </div>    
        <!-- // Page Head -->

        <!-- Map -->
        <div class="responsive-map"  >
          
           <iframe src=" {!! \App\Repositories\SettingRepository::getSettingValue('map_link') !!}" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>

        <!-- Page Content -->
        <div class="container page-content">
            <!-- Contact Form -->
            <form  method="post" action="{{route('postAddContactus')}}" class="form-ui row contact-form">
                {{csrf_field()}}
                <div class="col-12">
                    <h3>{{ \App\Http\Controllers\HomeController::translateWord('contactus')}}</h3>
                    <p>{{ \App\Http\Controllers\HomeController::translateWord('contactus_second_title')}}</p>
                </div>
                <div class="col-12 col-l-6">
                    <input name="name" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_name')}}">
                    <input name="email" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_email')}}">
                    <input name="phone" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_phone')}}">
                    <input name="contact_from" type="hidden" value="contactus">

                </div>
                <div class="col-12 col-l-6">
                    <textarea name="message" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_message')}}"></textarea>
                    <input type="submit" value="{{ \App\Http\Controllers\HomeController::translateWord('send_message')}}" class="btn primary block-lvl">
                </div>
            </form>
            <!-- // Contact Form -->
        </div>
        <!-- // Page Content -->

@endsection


