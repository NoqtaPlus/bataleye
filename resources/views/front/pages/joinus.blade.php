@extends('front.layouts.front_layout')
@section('meta')
    <title>{{ \App\Http\Controllers\HomeController::translateWord('joinus')}}</title>
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
                <h1>{{ \App\Http\Controllers\HomeController::translateWord('joinus')}}</h1>
                <div class="breadcrumb">
                    <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}}</a>
                    <a href="{{route('getjoinusPage')}}">{{ \App\Http\Controllers\HomeController::translateWord('joinus')}}</a>
                </div>        
            </div>
        </div>    
        <!-- // Page Head -->

        <!-- Map -->
       

        <!-- Page Content -->
        <div class="container page-content">
            <!-- Contact Form -->
            <form method="post" action="{{route('postAddjoinus')}}" class="form-ui row contact-form" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="col-12">
                    <h3>{{$joinus->title }}</h3>
                    <p>{{$joinus->description }}</p>
                </div>
                <div class="col-12 col-l-6">
                    <input name="name" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_name')}}">
                    <input name="email" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_email')}}">
                    <input name="phone" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_phone')}}">
                    

                </div>
                <div class="col-12 col-l-6">
                    <textarea name="message" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_message')}}"></textarea>
                      <div class="file-input" data-text="{{ \App\Http\Controllers\HomeController::translateWord('Upload Cv')}}" data-btn="{{ \App\Http\Controllers\HomeController::translateWord('Upload')}}">
                    <input type="file" name="file">
                       </div>
                    <input type="submit" value="{{ \App\Http\Controllers\HomeController::translateWord('send_message')}}" class="btn primary block-lvl">
                    
                </div>
            </form>
            <!-- // Contact Form -->
        </div>
        <!-- // Page Content -->
       
@endsection


