<!DOCTYPE html>
<html lang="en" dir="rtl">
    <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      @yield('meta')
        <!-- Stylesheets -->
        @include('front.includes.css')
        <!-- Responsive -->
        @yield('css')
    </head>
    <body>
        <!-- Header -->
        <header class="tornado-header main-header" data-sticky>
        <div class="container">
            <a  class="logo"><img src="{{ASSETS}}/front/img/logo.png" alt="batal"></a>
            </div>
        </header>
        <!-- // Header -->
        @yield('content')
        <!-- Testmonials -->
     <a href="https://api.whatsapp.com/send?phone={{\App\Repositories\SettingRepository::getSettingValue('whatsapp')}}" class="whatsapp-btn ti-whatsapp" target="_blank"></a>
        <!-- Footer -->
        <footer class="main-footer">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-m-6 col-l-9">
                        <h2>{{ \App\Http\Controllers\HomeController::translateWord('about_us')}}</h2>
                        <p>{{\App\Http\Controllers\HomeController::getAboutusFooter()}}</p>
                        <ul class="contact-list">
                            <li class="phone-icon"><span>{{\App\Repositories\SettingRepository::getSettingValue('phone')}}</span> {{\App\Repositories\SettingRepository::getSettingValue('email_1')}}</li>
                            <li class="placemark-icon"><span>{{ \App\Http\Controllers\HomeController::translateWord('morjan_tower')}}</span>{{\App\Repositories\SettingRepository::getSettingValue('address_'.App::getLocale())}}</li>
                        </ul>
                    </div>
                   
                   
                    <div class="col-12 col-m-6 col-l-3">
                        <ul class="time-list">
                            <li class="time-icon"></li>
                            <li>{{ \App\Http\Controllers\HomeController::translateWord('saturday')}} <span>{{\App\Repositories\SettingRepository::getSettingValue('saturday_time')}}</span></li>
                            <li>{{ \App\Http\Controllers\HomeController::translateWord('sunday')}} <span>{{\App\Repositories\SettingRepository::getSettingValue('sunday_time')}}</span></li>
                            <li>{{ \App\Http\Controllers\HomeController::translateWord('monday')}} <span>{{\App\Repositories\SettingRepository::getSettingValue('monday_time')}}</span></li>
                            <li>{{ \App\Http\Controllers\HomeController::translateWord('tuesday')}} <span>{{\App\Repositories\SettingRepository::getSettingValue('tuesday_time')}}</span></li>
                            <li>{{ \App\Http\Controllers\HomeController::translateWord('wednesday')}} <span>{{\App\Repositories\SettingRepository::getSettingValue('wednesday_time')}}</span></li>
                            <li>{{ \App\Http\Controllers\HomeController::translateWord('thursday')}} <span>{{\App\Repositories\SettingRepository::getSettingValue('thursday_time')}}</span></li>
                           
                        </ul>
                    </div>
                                                        
                    </div>
                </div>
            </div>
        </footer>
        <!-- Required JS Files -->
        @include('front.includes.js')
        @include('front.includes.message')
    </body>
</html>