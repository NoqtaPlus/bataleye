@extends('front.layouts.front_layout')
@section('meta')
    <title> تاريخ النادي</title>
    <meta name="description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}">
    <meta name="twitter:card" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:image" content=" " />
    <meta property="og:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_title') !!}" />
    <meta property="og:description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
@endsection
@section('main_container')   
<!-- Page Head -->
<div class="page-head container">
    <div class="content">
        <h1 class="ti-folder-favorite">تاريخ النادي</h1>
        <div class="breadcrumb">
            <a href="{{route('getFrontHome')}}">الرئيسية</a>
            <a style="contact-pointer-events: none; cursor: default;us">تاريخ النادي</a>
        </div>
    </div>
</div>
<!-- // Page Head -->

@include('front.includes.top-ads')
 @include('front.includes.breaking-news')

<!-- Page Content -->
<div class="page-content container">
    <!-- History Page -->
    <div class="history-details wideget-block">
        <h2 class="head">تاريخ النادي</h2>
        <img src="{{ASSETS}}/front/tersana/img/history-cover.png" alt="" class="fluid">
        {!! $content->content !!}
    </div>
    <!-- // History Page -->

    <!-- History Timeline -->
    <div class="history-timeline">
        @foreach ($history as $item)
        <!-- Timeline block -->
        <div class="timeline-block">
            <h3 class="date">{{$item->year}}</h3>
            <p>{{$item->content}}</p>
        </div>
        <!-- // Timeline block -->
        @endforeach
    </div>
<!-- // History Timeline -->
  @endsection