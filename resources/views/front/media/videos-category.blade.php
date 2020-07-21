@extends('front.layouts.front_layout')
@section('meta')
    <title> مكتبة الفيديوهات</title>
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
        <h1 class="ti-folder-play">مكتبة الفيديو</h1>
        <div class="breadcrumb">
            <a href="{{route('getFrontHome')}}">الرئيسية</a>
            <a style="contact-pointer-events: none; cursor: default;us">مكتبة الفيديو</a>
        </div>
    </div>
</div>
<!-- // Page Head -->

@include('front.includes.top-ads')

<!-- Page Content -->
<div class="page-content container">
   
    <!-- Content Splite -->
    <div class="row row-reverse">
        <!-- Content Side -->
        <div class="col-12 col-m-8 col-l-9">
            <!-- Area Head -->
            <h2 class="area-head">
                <span class="title ti-folder-play">الفيديوهات</span>
                <!-- Search -->
                <form class="nav-search" method="GET" action="{{route('search')}}">
                    <input name="q" type="text" placeholder="البحث فى القسم">
                    <input type="hidden" name="media" value="videos">
                    <input type="submit" value="">
                </form>
            </h2>

            <div class="row">
                @foreach($videos as $video)
                <!-- video block -->
                <div class="col-12 col-m-6 video-block">
                    <div class="content-box">
                        <a href="{{Route('getFrontVideo', $video->id)}}" class="image ti-play" data-src="{{Route('getVideoThumbnail', [$video->id])}}"></a>
                        <a href="{{Route('getFrontVideo', $video->id)}}"{{$video->title}}</h3></a>
                        <span class="date">{{$video->created_at}}</span>
                        <p>{{$video->description}}</p>
                    </div>
                </div>
                <!-- // video block -->
                @endforeach
            </div>

            <!-- Pagination -->
            {{ $videos->links() }}
        </div>
        <!-- // Content Side -->

        @include('front.includes.sidebar')
        
    </div>
    <!-- // Content Splite -->
@endsection