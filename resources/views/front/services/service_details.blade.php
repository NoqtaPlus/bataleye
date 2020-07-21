@extends('front.layouts.front_layout')
@section('meta')
    <title>{{$service->name}}</title>
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
        <h1>{{$service->name}}</h1>
        <div class="breadcrumb">
        <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}} </a>
        <a href="{{route('getFrontServiceById',['serviceId'=>$service->service_id,'serviceName'=>$service->name])}}">{{$service->name}}</a>
        </div>
    </div>
</div>
<!-- // Page Head -->
<!-- Page Content -->
<div class="container page-content">
            <!-- Grid -->
            <div class="row">
                <!-- Content Side -->
                <div class="col-12 col-m-8">
                    <!-- Content -->
                    <div class="single-content">
                        <img src="{{UPLOADS}}/services/{{$service->image}}" alt="" class="cover">
                        {!! html_entity_decode($service->long_description) !!}
                    </div>
                </div>
                <!-- Widgets Side -->
                <div class="col-12 col-m-4">
                    <!-- Quick Search -->
                    <form method="post" action="{{route('searchBlogs')}}"  class="quick-search form-ui">
                        {{csrf_field()}}
                        <input name="search_name" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('search')}} ...">
                        <button class="ti-search btn primary" type="submit"></button>
                    </form>
                    <!-- Recent Posts -->
                    <div class="widget">
                        <h2 class="title">{{ \App\Http\Controllers\HomeController::translateWord('recent_blogs')}}</h2>
                        <ul class="widget-list posts-list">
                            @foreach($recent_blogs as $i=>$recent_blog)
                            <li><a href="{{route('getBlogDetails',['id'=>$recent_blog->id,'title'=>$recent_blog->title,'desc'=>$recent_blog->short_description])}}">{{$recent_blog->title}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                    <!-- Recent Comments -->
                   <!--   <div class="widget">
                        <h2 class="title">{{ \App\Http\Controllers\HomeController::translateWord('recent_comments')}}</h2>
                        <ul class="widget-list posts-list">
                        @foreach($comments as $i=>$comment)
                            <li>{{$comment->comment}}</li>
                        @endforeach    
                        </ul>
                    </div> -->
                    <!-- Categories -->
                    <div class="widget">
                        <h2 class="title">{{ \App\Http\Controllers\HomeController::translateWord('blog_categories')}}</h2>
                        <ul class="widget-list">
                            @foreach($categories as $i=>$category)
                            <li><a href="{{route('getFrontBlogsByCategoryId',['category_id'=>$category->category_id,'category_name'=>$category->name])}}">{{$category->name}}</a></li>
                           @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- // Page Content -->
@endsection