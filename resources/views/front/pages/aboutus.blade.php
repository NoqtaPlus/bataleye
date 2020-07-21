@extends('front.layouts.front_layout')
@section('meta')
    <title>{{ \App\Http\Controllers\HomeController::translateWord('about_us')}} </title>
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
                <h1>{{ \App\Http\Controllers\HomeController::translateWord('about_us')}}</h1>
                <div class="breadcrumb">
                    <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}}</a>
                    <a href="{{route('getAboutusPage')}}">{{ \App\Http\Controllers\HomeController::translateWord('about_us')}}</a>
                </div>
            </div>
        </div>
        <!-- // Page Head -->

        <!-- About US -->
        <div class="about-us section">
            <div class="container">
                <div class="row row-reverse">
                    <div class="col-12 col-m-5 col-l-6"> <img src="{{UPLOADS}}/pages/{{$page->image}}" alt=""> </div>
                    <div class="col-12 col-m-7 col-l-6">
                        <h2><span>{{ \App\Http\Controllers\HomeController::translateWord('welcome_to_our')}} </span> {{$page->title}}</h2>
                        <div id="mydiv">
                        {!!html_entity_decode($page->long_description)!!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // About US -->

        <!-- Experts CTA -->
        <div class="experts-cta section">
            <div class="container">
                <h2>{{ \App\Http\Controllers\HomeController::translateWord('we_are_experts_doctor')}}</h2>
                <h3>{{ \App\Http\Controllers\HomeController::translateWord('we_will_be_happy')}}</h3>
                <a href="{{route('getFrontdocors')}}" class="btn light">{{trans('frontend.ask_your_doctor')}}</a>
            </div>
        </div>
        <!-- // Experts CTA -->

        <!-- Page Content -->
        <div class="container mission-vision">
            <div class="row align-center-y">
                <div class="hidden-s-down col-m-5 col-l-3 align-self-end">
                    <img src="{{ASSETS}}/front/img/mission-gay.png" alt="" class="block-lvl">
                </div>
                <div class="col-12 col-m-7 col-l-9">
                    <div class="content">
                        <h3>{{ \App\Http\Controllers\HomeController::translateWord('our_mission')}}</h3>
                        <p>{{$page->mission}} </p>
                    </div>
                    <div class="content">
                        <h3>{{ \App\Http\Controllers\HomeController::translateWord('our_vision')}}</h3>
                        <p>{{$page->vision}} </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- // Page Content -->
@endsection

@section('js')
<script>
    // var c = document.getElementByTagNames("ul").childNodes;
    // c[1].className += "checklist";

</script>    
@endsection