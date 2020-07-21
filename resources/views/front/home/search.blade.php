@extends('front.layouts.front_layout')
@section('main_container')
<!-- Page Head -->
<div class="page-head container">
    <div class="content">
        <h1 class="ti-book-open-page-variant">{{$title}}</h1>
        <div class="breadcrumb">
            <a href="{{route('getFrontHome')}}">الرئيسية</a>
            @if(isset($category))<a href="#">{{trans('categories.'.$category->name)}}</a>@endif
            @if(isset($media))<a href="#">{{trans("categories.".$media)}}</a>@endif
            <a style="contact-pointer-events: none; cursor: default;us">{{$title}}</a>
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
                <span class="title ti-book-open-page-variant">@if(isset($category)){{trans('categories.'.$category->name)}} | @endif{{$title}}</span>
                <!-- Search -->
                <form class="nav-search" method="GET" action="{{route('search')}}">
                    <input name="q" type="text" placeholder="البحث السريع" value="{{$q}}">
                    @if(isset($category))
                    <input type="hidden" name="category" value="{{$category->category_id}}">
                    @endif
                    @if(isset($media))
                    <input type="hidden" name="media" value="{{$media}}">
                    @endif
                    <input type="submit" value="">
                </form>
            </h2>
            
            @if (isset($media))
            @if ($media == "images")
            <div class="row">
                @foreach($items as $album)
                <!-- Gallery Block -->
                <div class="col-12 col-m-6 col-l-4 gallery-block">
                    <div class="content-box">
                        <a href="{{Route('getFrontAlbum', $album->id)}}" class="image ti-camera-lens" data-src="{{route('viewImage', ['id' => $album->id, 'index' => 0])}}"></a>
                        <a href="{{Route('getFrontAlbum', $album->id)}}"><h3>{{$album->album_title}}</h3></a> 
                    </div>
                </div>
                <!--// Gallery Block -->
                @endforeach
            </div>
            @endif
            @if ($media == "videos")
            <div class="row">
                @foreach($items as $video)
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
            @endif
            @else
            <!-- news block -->
            @foreach($items as $blog)
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
            @endif
            {{ $items->links() }}
        </div>
        <!-- // Content Side -->

        @include('front.includes.sidebar')

    </div>
    <!-- // Content Splite -->
</div>
 @endsection