@extends('front.layouts.front_layout')
@section('meta')
    <title> {{$video->title}}</title>
    <meta property="og:url"           content="{{Request::fullUrl()}}" />
    <meta property="og:type"          content="article" />
    <meta property="og:title"         content="{{$video->title}}" />
    <meta property="og:description"   content="{{$video->description}}" />
    <meta property="og:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_title') !!}" />
    <meta property="og:description" content="{{$video->description}}" />
    <meta name="description" content="{{$video->description}}">
    <meta property="og:image"         content="{{route('getVideoThumbnail', ['id' => $video->id])}}" />
    <meta name="twitter:card" content="{{$video->description}}" />
    <meta name="twitter:description" content="{{$video->description}}" />
    <meta name="twitter:title" content="{{$video->description}}" />
    <meta name="twitter:image" content="{{route('getVideoThumbnail', ['id' => $video->id])}}" />
    <meta name="twitter:description" content="{{$video->description}}" />
    <meta name="twitter:title" content="{{$video->title}}" />
    <meta name="twitter:image" content="{{route('getVideoThumbnail', ['id' => $video->id])}}"/>
    <meta name="facebook:description" content="{{$video->description}}" />
    <meta name="facebook:title" content="{{$video->title}}" />
    <meta name="facebook:image" content="{{route('getVideoThumbnail', ['id' => $video->id])}}"/>
@endsection
@section('main_container')
<!-- Page Head -->
<div class="page-head container">
    <div class="content">
        <h1 class="ti-book-open-page-variant">{{$video->title}}</h1>
        <div class="breadcrumb">
            <a href="{{route('getFrontHome')}}">الرئيسية</a>
            <a href="{{route('getFrontVideos')}}">مكتبة الفيديو</a>
            <a style="contact-pointer-events: none; cursor: default;us">{{$video->title}}</a>
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
            <!-- News Single -->
            <div class="news-single">
                <div class="post-head">
                    <h2>{{$video->title}}</h2>
                    <span>{{$video->created_at}}</span>
                    <span class="inf">عدد المشاهدات : {{$video->number_of_readings}}  </span>
                    <span class="inf">عدد التعليقات : 78</span>
                </div>

                @if($video->type == "youtube")
                <div style="position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;">
                    <iframe style="position:absolute;top:0;left:0;width:100%;height:100%;" src="https://www.youtube.com/embed/{{$video->getYoutubeId()}}"></iframe>
                </div>
                @elseif($video->type == "file")
                <video width="100%" controls>
                    <source src="{{Route('viewVideo', [$video->id])}}">
                    Your browser does not support the video tag.
                </video>
                @endif

                <div class="content">
                    {{$video->description}}
                </div>
 
 

                <!-- Post info -->
                <div class="post-info">
                   

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
                        @if(App\Entities\Image::take(6)->get()->shuffle())
                            @foreach(App\Entities\Video::take(6)->get()->shuffle() as $similarPost)                            <div class="col-12 col-m-6">
                                <!-- small block -->
                                <div class="small-block">
                                    <a href="{{route('getFrontVideo', ['id' => $similarPost->id])}}" data-src="{{route('getVideoThumbnail', ['id' => $similarPost->id])}}"></a>
                                    <div class="info">
                                        <a href="{{route('getFrontVideo', ['id' => $similarPost->id])}}"><h3>{{$similarPost->title}} </h3></a>
                                        <span class="date">{{ $similarPost->created_at }}</span>
                                    </div>
                                </div>
                                <!-- // small block -->
                            </div>
                            @endforeach
                        </div>
                        @endif
                    </div>
                </div>
                <a href="#" class="banner-small  col-12 col-m-3 col-l-2"><img src="{{ASSETS}}/front/tersana/img/banner-5.png" alt=""></a>
            </div>
            <!-- // Similar News -->
          
            <!-- Comments Form -->
           
            <!-- // Comments Form -->

           
            
        </div>
        <!-- // Content Side -->

        @include('front.includes.sidebar')
        
    </div>
</div>
<!-- // Content Splite -->
@endsection

@section('js')
<script>
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