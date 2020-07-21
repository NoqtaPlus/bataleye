@extends('front.layouts.front_layout')
@section('meta')
    <title> معرض الصور</title>
    <meta name="description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}">
    <meta name="twitter:card" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:image" content=""/>
    <meta property="og:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_title') !!}" />
    <meta property="og:description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
@endsection
@section('main_container')
            <!-- Page Head -->
<div class="page-head container">
    <div class="content">
        <h1 class="ti-camera-lens">معرض الصور</h1>
        <div class="breadcrumb">
            <a href="{{route('getFrontHome')}}">الرئيسية</a>
            <a style="contact-pointer-events: none; cursor: default;us">معرض الصور</a>
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
                <span class="title ti-camera-lens">معرض الصور</span>
                <!-- Search -->
                <form class="nav-search" method="GET" action="{{route('search')}}">
                    <input type="text" name="q" placeholder="البحث فى القسم">
                    <input type="hidden" name="media" value="images">
                    <input type="submit" value="">
                </form>
            </h2>

            <div class="row">
                @foreach($albums as $album)
                <!-- Gallery Block -->
                <div class="col-12 col-m-6 col-l-4 gallery-block">
                    <div class="content-box">
                        <a href="{{Route('getFrontAlbum', $album->id)}}" class="image ti-camera-lens" data-src="{{route('getAlbumImage', ['id' => $album->id, 'index' => 0])}}"></a>
                        <a href="{{Route('getFrontAlbum', $album->id)}}"><h3>{{$album->album_title}}</h3></a> 
                    </div>
                </div>
                <!--// Gallery Block -->
                @endforeach
            </div>

            <!-- Pagination -->
            {{ $albums->links() }}
        </div>
        <!-- // Content Side -->

        @include('front.includes.sidebar')
        
    </div>
    <!-- // Content Splite -->
@endsection