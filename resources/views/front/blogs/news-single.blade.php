@extends('front.layouts.front_layout')
@section('meta')
    <title> {{$blog->title}}</title>
    <meta property="og:url"           content="{{Request::fullUrl()}}" />
    <meta property="og:type"          content="article" />
    <meta property="og:title"         content="{{$blog->title}}" />
    <meta property="og:description"   content="{{$blog->short_description}}" />
    <meta property="og:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_title') !!}" />
    <meta property="og:description" content="{{$blog->short_description}}" />
    <meta name="description" content="{{$blog->short_description}}">
    <meta property="og:image"         content="{{route('getBlogImage', ['id' => $blog->id])}}" />
    <meta name="twitter:card" content="{{$blog->short_description}}" />
    <meta name="twitter:description" content="{{$blog->short_description}}" />
    <meta name="twitter:title" content="{{$blog->short_description}}" />
    <meta name="twitter:image" content="{{route('getBlogImage', ['id' => $blog->id])}}" />
    <meta name='keywords' content="{{$blog->keywards}}"/>
    <meta name="twitter:description" content="{{$blog->short_description}}" />
    <meta name="twitter:title" content="{{$blog->title}}" />
    <meta name="twitter:image" content="{{route('getBlogImage', ['id' => $blog->id])}}"/>
    <meta property="og:title" content="{{$blog->title}}" />
    <meta property="og:type" content="article" />
    <meta property="og:image" content="{{route('getBlogImage', ['id' => $blog->id])}}" />
    <meta property="og:url" content="{{route('getArticleDetails', ['id' => $blog->category_id, 'title' => $blog->title ,'desc'=>$blog->short_description])}} />
   <meta property="og:description" content="{{$blog->short_description}}" />
@endsection
@section('main_container')
<!-- Page Head -->
<?php
    if ($blog->category->name == 'reports'){
        $link = route('getBlogCategoryById', ['id' => \App\Entities\BlogCategory::reportsCategory()->category_id, 'title' => \App\Entities\BlogCategory::reportsCategory()->name]);
    }else if ($blog->category->name == 'interviews'){
        $link = route('getBlogCategoryById', ['id' => \App\Entities\BlogCategory::interviewsCategory()->category_id, 'title' => \App\Entities\BlogCategory::interviewsCategory()->name]);
    }else if ($blog->category->name == 'Socialism'){
        $link = route('getBlogCategoryById', ['id' => \App\Entities\BlogCategory::SocialismCategory()->category_id, 'title' => \App\Entities\BlogCategory::SocialismCategory()->name]);
    }else if ($blog->category->name == 'journey'){
        $link = route('getBlogCategoryById', ['id' => \App\Entities\BlogCategory::journey()->category_id, 'title' => \App\Entities\BlogCategory::journey()->name]);
    }else{
        $link = route('getBlogCategoryById', ['id' => \App\Entities\BlogCategory::footballCategory()->category_id, 'title' => \App\Entities\BlogCategory::footballCategory()->name]);
    }
?>
<div class="page-head container">
    <div class="content">
        <h1 class="ti-book-open-page-variant">{{$blog->title}}</h1>
        <div class="breadcrumb">
            <a href="{{route('getFrontHome')}}">الرئيسية</a>
            <a href="{{ $link }}">{{trans('categories.'.$blog->category->name)}}</a>
            <a style="contact-pointer-events: none; cursor: default;us">{{$blog->title}}</a>
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
            <!-- News Single -->
            <div class="news-single">
                <div class="post-head">
                    <h2>{{$blog->title}}</h2>
                    <span>{{$blog->created_at}}</span>
                    <span class="inf">عدد المشاهدات : {{$blog->number_of_readings}}  </span>
                    <!-- <span class="inf">عدد التعليقات : 78</span> -->
                </div>
                <img src="{{route('getBlogImage', ['id' => $blog->id])}}" alt="" class="fluid cover">
                <div class="content">
                    {!! $blog->long_description !!}
                </div>

                  @if($blog->category_id==9)
                    @if(session('booking'))
                    <div class="alert success">{{ session('booking') }}</div>
                    @endif
                  <form class="form-ui row" method="post" action="{{ route('postGetTickeBooking') }}">
                    {{ csrf_field() }}
                    <div class="col-12 ">
                        <label>الاسم </label>
                        <input type="text" value="{{ old('full_name') }}" placeholder=" الاسم" name="full_name">
                      @if(isset($errors))
                        @if($errors->has('full_name'))
                            <span class="help-block">{{$errors->first('full_name')}}</span>
                        @endif
                     @endif
                    </div>
                    <div class="col-12 col-m-6">
                        <label>البريد الالكترونى  </label>
                        <input type="email" name="email" value="{{ old('email') }}" placeholder="البريد الالكترونى  ">
                        @if(isset($errors))
                            @if($errors->has('email'))
                                <span class="help-block">{{$errors->first('email')}}</span>
                            @endif
                        @endif
                    </div>
                    <div class="col-12 col-m-6">
                        <label>التليفون  </label>
                        <input type="text" name="phone" value="{{ old('phone') }}" placeholder=" التليفون ">
                        @if(isset($errors))
                            @if($errors->has('phone'))
                                <span class="help-block">{{$errors->first('phone')}}</span>
                            @endif
                        @endif
                    </div>
                    <div class="col-12">
                         <input type="hidden" name="ticket_name" value="{{ $blog->title }}" placeholder=" اسم الرحله ">
                        <input style="width:100%"  type="submit" value="ارسال" class="btn secondary">
                        </div>
                </form>
                  @endif
                <!-- Tags -->
                <div class="tags">
                    <h3>الكلمات الدلاليه</h3>
                    @foreach($blog->tags as $tag)
                        <a href="{{route('getBlogCategoryByTagId', ['id' => $tag->id, 'title' => $tag->name])}}">{{ $tag->name }}</a>
                    @endforeach
                </div>
                <!-- // Tags -->

                <!-- Post info -->
                <div class="post-info">
                    التصنيفات  :
                    <a href="{{route('getBlogCategoryById', ['id' => $blog->category->category_id, 'title' => $blog->category->name])}}">{{trans('categories.'.$blog->category->name)}}</a>

                    <div class="social">
                        <span>مشاركة المقال</span>
                        <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(Request::fullUrl()) }}" target="_blank" class="ti-facebook"></a>
                        <a href="https://twitter.com/intent/tweet?url={{ urlencode(Request::fullUrl()) }}" target="_blank" class="ti-twitter"></a>
                        <a href="https://plus.google.com/share?url={{ urlencode(Request::fullUrl()) }}" target="_blank" class="ti-google-plus"></a>
                    </div>
                </div>
            </div>
            <!-- // News Single -->

            <!-- Similar News -->
            <div class="similar-news row">
                <div class="news-wraper col-12 col-m-9 col-l-10">
                    <div class="content-box">
                        <h3 class="ti-folder-bookmark head">مواضيع مشابهه</h3>
                        <div class="row">
                            @foreach(App\Repositories\BlogRepository::selectSimilarPost($blog->category_id,$blog->title) as $similarPost)
                            <div class="col-12 col-m-6">
                                <!-- small block -->
                                <div class="small-block">
                                    <a href="{{route('getArticleDetails', ['id' => $similarPost->id, 'title' => str_replace(' ', '-', $similarPost->title)])}}" data-src="{{route('getBlogImage', ['id' => $similarPost->id])}}"></a>
                                    <div class="info">
                                        <a href="{{route('getArticleDetails', ['id' => $similarPost->id, 'title' => str_replace(' ', '-', $similarPost->title)])}}"><h3>{{$similarPost->title}} </h3></a>
                                        <span class="date">{{ $similarPost->created_at }}</span>
                                    </div>
                                </div>
                                <!-- // small block -->
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                @php($sidebar = App\Entities\AdsPosition::where('slug', 'inner-pages-3')->first())
                @if($sidebar)
                @if(count($sidebar->ads) > 0)
                    <a href="{{$sidebar->ads[0]->link}}" class="banner-small  col-12 col-m-3 col-l-2"><img src="{{route('getAdsImage', ['id' => $sidebar->ads[0]->id])}}" alt=""></a>
                @endif
                @endif
            </div>
            <!-- // Similar News -->

            <!-- Comments Form -->
            <!-- <div class="comments-form">
                <h3 class="head ti-chatbubble">اضافه تعليق</h3>
                <form id="comment_form" class="form-ui row">
                    <div class="col-12 col-m-6">
                        <label>الاسم كامل</label>
                        <input name="name" type="text" placeholder="اكتب اسمك هنا" required>
                    </div>
                    <div class="col-12 col-m-6">
                        <label>البريد الالكتروني</label>
                        <input name="email" type="email" placeholder="اكتب بريدك الالكتروني" required>
                    </div>
                    <div class="col-12">
                        <label>التعليق</label>
                        <textarea name="comment" placeholder="اكتب تعليقك هنا" required></textarea>
                        <div id="alert"></div>
                        <div id="loading"></div>
                        <input type="submit" value="ارسال التعليق" class="btn secondary">
                    </div>
                    <div class="col-12">
                    </div>
                </form>
            </div> -->
            <!-- // Comments Form -->

            <!-- <div id="comments">
                <div id="fountainG">
                    <div id="fountainG_1" class="fountainG"></div>
                    <div id="fountainG_2" class="fountainG"></div>
                    <div id="fountainG_3" class="fountainG"></div>
                    <div id="fountainG_4" class="fountainG"></div>
                    <div id="fountainG_5" class="fountainG"></div>
                    <div id="fountainG_6" class="fountainG"></div>
                    <div id="fountainG_7" class="fountainG"></div>
                    <div id="fountainG_8" class="fountainG"></div>
                </div>
            </div> -->
        </div>
        <!-- // Content Side -->

        @include('front.includes.sidebar')
    </div>
</div>
<!-- // Content Splite -->
@endsection

@section('js')
<script>
$( document ).ready(function() {
    var load_comments = function() {
            $.ajax({
            url: "{{route('getPostComments', ['post_id' => $blog->id])}}",
            data: {page: $("#load_more_comments").data("next") ? $("#load_more_comments").data("next") : "1" },
            type: "GET",
            dataType: "json",
            beforeSend: function () {
                $('#load_more_comments').remove();
                if ($('#fountainG').length == 0) {
                    $('#comments').append(`
                    <div id="fountainG">
                        <div id="fountainG_1" class="fountainG"></div>
                        <div id="fountainG_2" class="fountainG"></div>
                        <div id="fountainG_3" class="fountainG"></div>
                        <div id="fountainG_4" class="fountainG"></div>
                        <div id="fountainG_5" class="fountainG"></div>
                        <div id="fountainG_6" class="fountainG"></div>
                        <div id="fountainG_7" class="fountainG"></div>
                        <div id="fountainG_8" class="fountainG"></div>
                    </div>
                    `);
                }
            },
            success: function (response) {
                $('#fountainG').remove();
                response.data.forEach(function(comment) {
                    $("#comments").append(`
                    <!-- Comment Block -->
                    <div class="comment-block">
                        <div class="user">
                            <img src="{{ASSETS}}/front/tersana/img/avatar.png" alt="">
                            <h3>${comment.name}</h3>
                        </div>
                        <div class="info">
                            <p>${comment.comment}</p>
                            <span class="date">${comment.created_at}</span>
                        </div>
                    </div>
                    <!-- // Comment Block -->
                    `);
                });
                if (response.current_page != response.last_page) {
                    $("#comments").append(`<button id="load_more_comments" data-next="${response.current_page+1}" class="btn secondary">تحميل المزيد</button>`);
                }
            }
        });
    }
    $(document).on("click", "#load_more_comments", function() {
        load_comments();
    });

    $("#comment_form input[type='submit']").on("click", function(e) {
        e.preventDefault();
        var name = $("#comment_form input[name='name']").val();
        var email = $("#comment_form input[name='email']").val();
        var comment = $("#comment_form textarea[name='comment']").val();

         $.ajax({
            url: "{{route('postComment', ['post_id' => $blog->id])}}",
            data: { 
                name: name,
                email: email,
                comment: comment
            },
            type: "POST",
            dataType: "json",
            headers: {
                "Accept": "application/json"
            },
            beforeSend: function () {
                $('#load_more_comments').remove();
                if ($('#loading #fountainG').length == 0) {
                    $('#loading').append(`
                    <div id="fountainG">
                        <div id="fountainG_1" class="fountainG"></div>
                        <div id="fountainG_2" class="fountainG"></div>
                        <div id="fountainG_3" class="fountainG"></div>
                        <div id="fountainG_4" class="fountainG"></div>
                        <div id="fountainG_5" class="fountainG"></div>
                        <div id="fountainG_6" class="fountainG"></div>
                        <div id="fountainG_7" class="fountainG"></div>
                        <div id="fountainG_8" class="fountainG"></div>
                    </div>
                    `);
                }
            },
            error: function (response) {
                console.log(response);
                $('#loading #fountainG').remove();
                $('#alert').html('<div class="alert danger">'+response.responseJSON.message+'</div>');
            },
            success: function (response) {
                $('#loading #fountainG').remove();
                $('#alert').html('<div class="alert success">تم إرسال تعليقك بنجاح</div>');
                $("#comments").append(`
                <!-- Comment Block -->
                <div class="comment-block">
                    <div class="user">
                        <img src="{{ASSETS}}/front/tersana/img/avatar.png" alt="">
                        <h3>${response.comment.name}</h3>
                    </div>
                    <div class="info">
                        <p>${response.comment.comment}</p>
                        <span class="date">${response.comment.created_at}</span>
                    </div>
                </div>
                <!-- // Comment Block -->
                `);
            }
        });


    });

    load_comments();
});
var popupMeta = {
    width: 400,
    height: 400
}
$(document).on('click', '.social a', function(event){
    event.preventDefault();

    var vPosition = Math.floor(($(window).width() - popupMeta.width) / 2),
        hPosition = Math.floor(($(window).height() - popupMeta.height) / 2);

    var url = $(this).attr('href');
    var popup = window.open(url, 'Social Share',
        'width='+popupMeta.width+',height='+popupMeta.height+
        ',left='+vPosition+',top='+hPosition+
        ',location=0,menubar=0,toolbar=0,status=0,scrollbars=1,resizable=1');

    if (popup) {
        popup.focus();
        return false;
    }
});
</script>
@endsection

@section('css')
<style>
#fountainG{
    position:relative;
    width:234px;
    height:28px;
    margin:auto;
}

.fountainG{
    position:absolute;
    top:0;
    background-color:rgb(22,14,91);
    width:28px;
    height:28px;
    animation-name:bounce_fountainG;
        -o-animation-name:bounce_fountainG;
        -ms-animation-name:bounce_fountainG;
        -webkit-animation-name:bounce_fountainG;
        -moz-animation-name:bounce_fountainG;
    animation-duration:0.975s;
        -o-animation-duration:0.975s;
        -ms-animation-duration:0.975s;
        -webkit-animation-duration:0.975s;
        -moz-animation-duration:0.975s;
    animation-iteration-count:infinite;
        -o-animation-iteration-count:infinite;
        -ms-animation-iteration-count:infinite;
        -webkit-animation-iteration-count:infinite;
        -moz-animation-iteration-count:infinite;
    animation-direction:normal;
        -o-animation-direction:normal;
        -ms-animation-direction:normal;
        -webkit-animation-direction:normal;
        -moz-animation-direction:normal;
    transform:scale(.3);
        -o-transform:scale(.3);
        -ms-transform:scale(.3);
        -webkit-transform:scale(.3);
        -moz-transform:scale(.3);
    border-radius:19px;
        -o-border-radius:19px;
        -ms-border-radius:19px;
        -webkit-border-radius:19px;
        -moz-border-radius:19px;
}

#fountainG_1{
    left:0;
    animation-delay:0.386s;
        -o-animation-delay:0.386s;
        -ms-animation-delay:0.386s;
        -webkit-animation-delay:0.386s;
        -moz-animation-delay:0.386s;
}

#fountainG_2{
    left:29px;
    animation-delay:0.4825s;
        -o-animation-delay:0.4825s;
        -ms-animation-delay:0.4825s;
        -webkit-animation-delay:0.4825s;
        -moz-animation-delay:0.4825s;
}

#fountainG_3{
    left:58px;
    animation-delay:0.589s;
        -o-animation-delay:0.589s;
        -ms-animation-delay:0.589s;
        -webkit-animation-delay:0.589s;
        -moz-animation-delay:0.589s;
}

#fountainG_4{
    left:88px;
    animation-delay:0.6855s;
        -o-animation-delay:0.6855s;
        -ms-animation-delay:0.6855s;
        -webkit-animation-delay:0.6855s;
        -moz-animation-delay:0.6855s;
}

#fountainG_5{
    left:117px;
    animation-delay:0.782s;
        -o-animation-delay:0.782s;
        -ms-animation-delay:0.782s;
        -webkit-animation-delay:0.782s;
        -moz-animation-delay:0.782s;
}

#fountainG_6{
    left:146px;
    animation-delay:0.8785s;
        -o-animation-delay:0.8785s;
        -ms-animation-delay:0.8785s;
        -webkit-animation-delay:0.8785s;
        -moz-animation-delay:0.8785s;
}

#fountainG_7{
    left:175px;
    animation-delay:0.975s;
        -o-animation-delay:0.975s;
        -ms-animation-delay:0.975s;
        -webkit-animation-delay:0.975s;
        -moz-animation-delay:0.975s;
}

#fountainG_8{
    left:205px;
    animation-delay:1.0715s;
        -o-animation-delay:1.0715s;
        -ms-animation-delay:1.0715s;
        -webkit-animation-delay:1.0715s;
        -moz-animation-delay:1.0715s;
}



@keyframes bounce_fountainG{
    0%{
    transform:scale(1);
        background-color:rgb(22,14,91);
    }

    100%{
    transform:scale(.3);
        background-color:rgb(255,255,255);
    }
}

@-o-keyframes bounce_fountainG{
    0%{
    -o-transform:scale(1);
        background-color:rgb(22,14,91);
    }

    100%{
    -o-transform:scale(.3);
        background-color:rgb(255,255,255);
    }
}

@-ms-keyframes bounce_fountainG{
    0%{
    -ms-transform:scale(1);
        background-color:rgb(22,14,91);
    }

    100%{
    -ms-transform:scale(.3);
        background-color:rgb(255,255,255);
    }
}

@-webkit-keyframes bounce_fountainG{
    0%{
    -webkit-transform:scale(1);
        background-color:rgb(22,14,91);
    }

    100%{
    -webkit-transform:scale(.3);
        background-color:rgb(255,255,255);
    }
}

@-moz-keyframes bounce_fountainG{
    0%{
    -moz-transform:scale(1);
        background-color:rgb(22,14,91);
    }

    100%{
    -moz-transform:scale(.3);
        background-color:rgb(255,255,255);
    }
}
</style>
@endsection