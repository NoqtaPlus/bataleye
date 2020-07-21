@extends('front.layouts.front_layout')
@section('main_container')
<!-- Page Head -->
<div class="page-head container">
    <div class="content">
        <h1 class="ti-book-open-page-variant">{{$tag->name}}</h1>
        <div class="breadcrumb">
            <a href="{{route('getFrontHome')}}">الرئيسية</a>
            <a href="{{route('getBlogCategoryByTagId', ['id' => $tag->id, 'title' => $tag->name])}}">{{$tag->name}}</a>
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

            <!-- news block -->
            @foreach($tag->posts as $blog)
            <div class="news-block">
                <a href="{{route('getArticleDetails', ['id' => $blog->id, 'title' => str_replace(' ', '-', $blog->title)])}}" data-src="{{route('getBlogImage', ['id' => $blog->id])}}" class="image ti-zoom-in"></a>
                <div class="info">
                    <a href="{{route('getArticleDetails', ['id' => $blog->id, 'title' => str_replace(' ', '-', $blog->title)])}}"><h3>{{$blog->title}}</h3></a>
                    <span class="date">{{$blog->created_at}}</span>
                    <p>{{$blog->short_description}}</p>
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