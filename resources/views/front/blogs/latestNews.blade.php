@extends('front.layouts.front_layout')
@section('meta')
    <title> {{trans('categories.LatestNews')}}</title>
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
        <!--<h1 class="ti-book-open-page-variant">{{trans('categories.LatestNews')}}</h1>-->
        <div class="breadcrumb">
            <a href="{{route('getFrontHome')}}">الرئيسية</a>
            <a style="contact-pointer-events: none; cursor: default;us">{{trans('categories.LatestNews')}}</a>
        </div>
    </div>
</div>
<!-- // Page Head -->
@include('front.includes.top-ads')
 @include('front.includes.breaking-news')

<!-- Page Content -->
<div class="page-content container">
   
    <!-- Content Splite -->
    <div class="row row-reverse">
        <!-- Content Side -->
        <div class="col-12 col-m-8 col-l-9">
            <!-- Area Head -->
            <h2 class="area-head">
                <span class="title ti-book-open-page-variant">{{trans('categories.LatestNews')}}</span>
                <!-- Search -->
              
            </h2>
            <!-- Page Description -->
            
             <!-- Page Description -->
           
      
            <!-- news block -->
            @foreach($listNews as $news)
            <div class="news-block">
                <a href="{{route('getArticleDetails', ['id' => $news->id, 'title' => str_replace(' ', '-', $news->title)])}}" data-src="{{route('getBlogImage', ['id' => $news->id])}}" class="image ti-zoom-in"></a>
                <div class="info">
                    <a href="{{route('getArticleDetails', ['id' => $news->id, 'title' => str_replace(' ', '-', $news->title)])}}"><h3>{{$news->title}}</h3></a>
                    <span class="date">{{$news->created_at}}</span>
                    <p>{{$news->short_description}}</p>
                </div>
            </div>
            @endforeach
            <!-- // news block -->
           
        </div>
        
        <!-- // Content Side -->

        @include('front.includes.sidebar')

    </div>
    <!-- // Content Splite -->
</div>
 @endsection