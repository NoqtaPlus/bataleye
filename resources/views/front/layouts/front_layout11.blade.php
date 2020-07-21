<!DOCTYPE html>
<html lang="ar">
    <head>
        <base href="{{route('getFrontHome')}}">
        <meta charset="utf-8">
        @yield('meta')
        <!-- Stylesheets -->
        @include('front.includes.css')
        <!-- Responsive -->
        @yield('css')
        @include('front.includes.meta')
    </head>
    <body>
        <div class="site-wraper">
            @include('front.includes.header')
                @yield('main_container')
            @include('front.includes.footer')
            @include('front.includes.js')
                @yield('js')
                {!! \App\Repositories\SettingRepository::getSettingValue('body_code') !!}
            @include('front.includes.message')
        </div>
    </body>
</html>
