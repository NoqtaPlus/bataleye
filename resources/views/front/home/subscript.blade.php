@extends('front.layouts.front_layout')
@section('meta')
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
        <h1 class="ti-phone-classic">الاشتركات</h1>
        <div class="breadcrumb">
            <a href="{{route('getFrontHome')}}">الرئيسية</a>
            <a style="contact-pointer-events: none; cursor: default;us"> الاشتركات</a>
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
            <!-- Map -->
           <!-- <div class="mapWraper">
            <iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d3453.236793925853!2d31.20864498329314!3d30.058746274613863!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e0!4m0!4m5!1s0x1458413be80d13b1%3A0x8cf9e8abd5cf0695!2z2YbYp9iv2Ykg2KfZhNiq2LHYs9in2YbYqSDYp9mE2LHZitin2LbZiSAyNnRoIE9mIEp1bHkgU3Qu!3m2!1d30.060882!2d31.202842999999998!5e0!3m2!1sar!2seg!4v1526224201730" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>  
            </div>-->

            <!-- Contact Form -->
            <div class="contact-form">
                   {{ csrf_field() }}
                <h3 class="head ti-mail"> اشترك الان  </h3>
                @if(session('subscription'))
                  <div class="alert success">{{ session('subscription') }}</div>
                @endif
                
                <p class="inner-description">{{$setting->subscript_description}}</p>
                 <ul>
                     <li>{{$setting->desc1}}</li>
                     <li>{{$setting->desc2}}</li>
                     <li>{{$setting->desc3}}</li>
                     <li>{{$setting->desc4}}</li>
                     <li>{{$setting->desc5}}</li>
                     <!--<li>{{$setting->desc6}}</li>-->
                     <!--<li>{{$setting->desc7}}</li>-->
                 </ul>
                <form class="form-ui row" method="post" action="{{ route('postSubscription') }}">
                    {{ csrf_field() }}
                    <div class="col-12 ">
                        <label>الاسم </label>
                        <input type="text" value="{{ old('name') }}" placeholder=" الاسم" name="name">
                      @if(isset($errors))
                        @if($errors->has('name'))
                            <span class="help-block">{{$errors->first('name')}}</span>
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
                        <label>التليفون</label>
                        <input type="text" name="phone" value="{{ old('phone') }}" placeholder="التليفون ">
                        @if(isset($errors))
                            @if($errors->has('phone'))
                                <span class="help-block">{{$errors->first('phone')}}</span>
                            @endif
                        @endif
                        <input type="submit" value="ارسال" class="btn secondary">
                    </div>
                </form>
            </div>
            <!-- // Contact Form -->
        </div>
        <!-- // Content Side -->

        <!-- widegets Side -->
        <div class="col-12 col-m-4 col-l-3">
        <!--@include('front.includes.most-readable')-->
            @include('front.includes.next-match')
            @include('front.includes.previous-match')
            <!-- Banner Wideget -->
            @php($sidebar = App\Entities\AdsPosition::where('slug', 'sidebar')->first())
            @if(count($sidebar->ads) > 0)
            <a href="{{$sidebar->ads[0]->link}}" class="banner-wideget"><img src="{{route('getAdsImage', ['id' => $sidebar->ads[0]->id])}}" alt=""></a>
            @endif
            <!-- // Banner Wideget -->
        </div>
        <!-- // widegets Side -->
    </div>
    <!-- // Content Splite -->
</div>
@endsection