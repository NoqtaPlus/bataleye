@extends('front.layouts.front_layout')
@section('meta')
    <title>{{ \App\Http\Controllers\HomeController::translateWord('blogs')}}</title>
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
                <!--<h1>{{ \App\Http\Controllers\HomeController::translateWord('blogs')}}</h1>-->
                <div class="breadcrumb">
                    <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}} </a>
                    <a href="{{route('getFrontBlog')}}">{{ \App\Http\Controllers\HomeController::translateWord('blogs')}}</a>
                </div>        
            </div>
        </div>    
        <!-- // Page Head -->

        <!-- Page Content -->
        <div class="container page-content">
            <!-- Grid -->
            <div class="row">
                @foreach($blogs as $index=>$blog)
                <!-- News Block -->
                <div class="news-block col-12 col-m-6 col-l-4">
                    <div class="content-box">
                        <a href="{{route('getBlogDetails',['id'=>$blog->id, 'title' => str_replace(' ', '-', $blog->title)])}}" class="image" data-src="{{UPLOADS}}/posts/images/{{$blog->image}}"></a>
                        <span class="date">{{$blog->created_at}}</span>
                        <a href="{{route('getBlogDetails',['id'=>$blog->id, 'title' => str_replace(' ', '-', $blog->title)])}}"><h3>{{$blog->title}}</h3></a>
                        <p>{{$blog->short_description}}</p>
                        <a href="{{route('getBlogDetails',['id'=>$blog->id, 'title' => str_replace(' ', '-', $blog->title)])}}" class="btn secondary">{{ \App\Http\Controllers\HomeController::translateWord('read_more')}}</a>
                    </div>
                </div>
                <!-- // News Block -->
                @endforeach
   
            </div>
            <!-- Pagination -->
            <ul class="pagination">
                {{$blogs->links()}}
            </ul>
        </div>
        <!-- // Page Content -->       
@endsection


