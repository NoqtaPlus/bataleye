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
<div class="thanks py-50">
    <div class="image tx-align-center">
        <img src="public/assets/images/pages/thanks.png" alt="">
        <p class="primary-color">شكرا لك</p>
        <p>لقد تم ارسال طلبك بنجاح يمكنك متابعه طلبك على بريدك الالكتروني</p>
    </div>
</div>
 @endsection

  
