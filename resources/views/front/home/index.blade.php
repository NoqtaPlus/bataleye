@extends('front.layouts.front_layout')
@section('meta')
<title>{{ \App\Http\Controllers\HomeController::translateWord('EL BATAL CENTER')}}</title>
<meta name="description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}">
<meta name="twitter:card" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
<meta name="twitter:description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
<meta name="twitter:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
<meta name="twitter:image" content=" " />
<meta property="og:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_title') !!}" />
<meta property="og:description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />

@endsection

@section('content')
{!! \App\Entities\Tracker::hit() !!}
@include('front.includes.advertising')
@include('front.home.slider')
@include('front.home.feature_pages')
@include('front.home.aboutus_section')
@include('front.home.expertise_pages')
@include('front.home.online_appointment')
@include('front.home.our_doctors')
@include('front.home.gallary')
@include('front.home.latest_news')

@endsection

@section('js')
    <script>

        function hide_popup()
        {
            popup_container = document.getElementById('popup');
            popup_container.style.display = 'none';
            
        }
       
    </script>
@endsection

