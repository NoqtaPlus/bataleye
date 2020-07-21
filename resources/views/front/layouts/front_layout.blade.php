<!DOCTYPE html>
<html lang="en" dir="rtl">
    <head>
        @include('front.includes.meta')
        <!-- Stylesheets -->
        @include('front.includes.css')
        <!-- Responsive -->
        @yield('css')
    </head>
    <body>
        
  <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TV67R3S"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

        <!-- Header -->
        @include('front.includes.header')
        <!-- // Header -->
        @yield('content')
        <!-- Testmonials -->
        @include('front.includes.testemonails')
        <!-- Footer -->
        
        @include('front.includes.footer')
        <!-- Required JS Files -->
        @include('front.includes.js')
  @yield('js')
        @include('front.includes.message')
        <script>
        (function(w,d,u){
                var s=d.createElement('script');s.async=true;s.src=u+'?'+(Date.now()/60000|0);
                var h=d.getElementsByTagName('script')[0];h.parentNode.insertBefore(s,h);
        })(window,document,'https://cdn.bitrix24.com/b13867387/crm/site_button/loader_4_n5n6c5.js');
</script>
    </body>
</html>