@extends('front.layouts.front_layout')
@section('meta')
    <title>{{$blog->title}}</title>
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
               <!-- <h1>{{$blog->title}}</h1>-->
                <div class="breadcrumb">
                 <a href="{{route('getFrontHome')}}">{{ \App\Http\Controllers\HomeController::translateWord('home_page')}} </a>
                    <a href="{{route('getFrontBlog')}}">{{ \App\Http\Controllers\HomeController::translateWord('blogs')}} </a>
                    <a href="{{route('getBlogDetails',['id'=>$blog->id,'title'=>$blog->title,'desc'=>$blog->short_description])}}">{{$blog->title}}</a>
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
                        <img src="{{UPLOADS}}/posts/images/{{$blog->image}}" alt="" class="cover">
                        <h2>{{$blog->title}}</h2>
                        {!! html_entity_decode($blog->long_description) !!}
                        <!-- Footer -->
                        <div class="single-footer clear-after">
                            <strong>{{ \App\Http\Controllers\HomeController::translateWord('tags')}}</strong> : 
                            @foreach($blog->tags as $tag)
                                <a href="#">{{ $tag->name }}</a>
                            @endforeach
                            <!-- Share -->
                            <div class="social">
                                <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(Request::fullUrl()) }}" target="_blank" class="ti-facebook tooltip" data-title="share on Facebook"></a>
                                <a href="https://twitter.com/intent/tweet?url={{ urlencode(Request::fullUrl()) }}" target="_blank" class="ti-twitter tooltip" data-title="share on Twitter"></a>
                                <a href="https://plus.google.com/share?url={{ urlencode(Request::fullUrl()) }}" target="_blank" class="ti-google-plus"></a>
                            </div>
                        </div>
                    </div>
                    <!-- Comments -->
                    <form method="post" action="{{route('postAddComment')}}" class="form-ui row comment-form">
                        {{csrf_field()}}
                        <div class="col-12">
                            <h2>{{ \App\Http\Controllers\HomeController::translateWord('let_comment')}}</h2>
                            <p>{{ \App\Http\Controllers\HomeController::translateWord('comment_second_title')}}</p>
                            <textarea name="comment" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('comment')}}" required></textarea>
                        </div>
                        <div class="col-12 col-m-6">
                            <input name="name" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_name')}}" required>
                        </div>
                        <div class="col-12 col-m-6">
                            <input name="email"  type="email" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_email')}}">
                        </div>

                        <div class="col-12">
                            <input name="post_id" type="hidden" value="{{$blog->id}}">
                            <input type="submit" value="{{ \App\Http\Controllers\HomeController::translateWord('post_comment')}}" class="btn primary block-lvl">
                        </div>
                    </form>
                    @foreach($comments_by_blog_id as $i=>$comment_by_blog_id)
                    <!-- Comment Block -->
                    <div class="media-object comment-block">
                        <a href="#" class="media"><img src="{{ASSETS}}/front/img/avatar-2.png" alt="media element"></a>
                        <div class="media-content">
                            <h6>{{$comment_by_blog_id->name}}</h6>
                            <h6><span class="info">Posted on {{$comment_by_blog_id->created_at}} </span></h6>
                            <p>{{$comment_by_blog_id->comment}}</p>
                        </div>
                    </div>
                    <!-- // Comment Block -->
                    @endforeach
                    
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
                     
                   <div class="widget">
                        <h2 class="title">{{ \App\Http\Controllers\HomeController::translateWord('recent_comments')}}</h2>
                        <ul class="widget-list posts-list">
                        @foreach($comments as $i=>$comment)
                            <li>{{$comment->comment}}</li>
                        @endforeach    
                        </ul>
                    </div> 
                      
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


