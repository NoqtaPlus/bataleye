@extends('front.layouts.front_layout')
@section('meta')
    <title> معرض الصور</title>
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
        <h1 class="ti-book-open-page-variant">{{$album->album_title}}</h1>
        <div class="breadcrumb">
            <a href="{{route('getFrontHome')}}">الرئيسية</a>
            <a href="{{route('getFrontImages')}}">معرض الصور</a>
            <a style="contact-pointer-events: none; cursor: default;us">{{$album->album_title}}</a>
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
                    <h2>{{$album->album_title}}</h2>
                    <span>{{$album->created_at}}</span>
                    <span class="inf">عدد المشاهدات : {{$album->number_of_readings}}  </span>
                    <span class="inf">عدد التعليقات : 78</span>
                </div>

                <div class="row">
                    @foreach($album->images as $index => $image)
                    <div class="col-12 col-m-4 col-l-3">
                        <a href="{{route('getAlbumImage', ['id' => $album->id, 'index' => 1])}}" class="gall-item" data-src="{{route('getAlbumImage', ['id' => $album->id, 'index' => 1])}}" target="_blank"></a>
                    </div>
                    @endforeach
                </div>

                <!--@if(count($album->images) > 1)-->
                <!--<div class="gallery-thumbs">-->
                <!--    @foreach($album->images as $index => $image)-->
                <!--    <div class="item"><a href="javascript:void(0)" data-src="{{route('getAlbumImage', ['id' => $album->id, 'index' => $index])}}" class="image"></a></div>-->
                <!--    @endforeach-->
                <!--</div>-->
                <!--@endif-->

                <div class="content">
                    {{$album->description}}
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
                            @foreach(App\Entities\Image::take(6)->get()->shuffle() as $similarPost)                            <div class="col-12 col-m-6">
                                <!-- small block -->
                                <div class="small-block">
                                    <a href="{{route('getFrontAlbum', ['id' => $similarPost->id])}}" data-src="{{route('viewImage', ['id' => $similarPost->id,'index'=>0])}}"></a>
                                    <div class="info">
                                        <a href="{{route('getFrontAlbum', ['id' => $similarPost->id])}}"><h3>{{$similarPost->album_title}} </h3></a>
                                        <span class="date">{{ $similarPost->created_at }}</span>
                                    </div>
                                </div>
                                <!-- // small block -->
                            </div>
                            @endforeach
                        @endif
                        </div>
                    </div>
                </div>
                <a href="#" class="banner-small  col-12 col-m-3 col-l-2"><img src="{{ASSETS}}/front/tersana/img/banner-5.png" alt=""></a>
            </div>
            <!-- // Similar News -->

            <!-- Comments Form -->
            <!--
            <div class="comments-form">
                <h3 class="head ti-chatbubble">اضافه تعليق</h3>
                <form class="form-ui row">
                    <div class="col-12 col-m-6">
                        <label>الاسم كامل</label>
                        <input type="text" placeholder="اكتب اسمك هنا">
                    </div>
                    <div class="col-12 col-m-6">
                        <label>البريد الالكتروني</label>
                        <input type="text" placeholder="اكتب بريدك الالكتروني">
                    </div>
                    <div class="col-12">
                        <label>التعليق</label>
                        <textarea placeholder="اكتب تعليقك هنا"></textarea>
                        <input type="submit" value="ارسال التعليق" class="btn secondary">
                    </div>
                </form>
            </div>
            -->
            <!-- // Comments Form -->

            <!-- Comment Block -->
            <!--
            <div class="comment-block">
                <div class="user">
                    <img src="{{ASSETS}}/front/tersana/img/avatar.png" alt="">
                    <h3>عبدالله رمضان</h3>
                </div>
                <div class="info">
                    <p>إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية</p>
                    <span class="date">15 ديسمبر 2018 الساعه 10:25PM</span>
                </div>
            </div>
            -->
            <!-- // Comment Block -->

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
