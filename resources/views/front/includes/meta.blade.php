
    @php $links=\App\Repositories\LinkRepository::getAllFrontLinks();
            $route=Route::currentRouteName();
            $link=\App\Repositories\LinkRepository::getAllFrontLinks()->where('route',$route)->first();
            if($link!=null){
            $meta=\App\Repositories\MetaRepository::getMeta($link->link_id);} 
            @endphp
        <!-- Required Meta Tags -->
        @if($meta!=null)
   <head>
    <link rel="icon" href="{{ASSETS}}/front/img/logo.png" type="image/png" sizes="34x30">
    <!-- Required Meta Tags -->
    <meta name="language" content="ar">
    <meta http-equiv="x-ua-compatible" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="title" content="{{$meta->title}}" />
    <meta name="description" content="{{$meta->description}}" />
     <meta name="keywords" content="{{$meta->keywords}}" />
    <title> مجمع بطل التخصصي</title>
    <!-- Open Graph Meta Tags -->
    <meta property="og:url" content="{{Request::fullUrl()}}" />
     <meta property="og:type" content="website" />
    <meta property="og:title" content="{{$meta->title}}" />
    <meta property="og:image" content="{{ASSETS}}/front/img/logo-fa2.png" />
    <meta property="og:description" content="{{$meta->description}}" />
    <!-- Twitter Card Meta Tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="{{$meta->title}}">
    <meta name="twitter:description" content="{{$meta->description}}">
    <meta name="twitter:image" content="img/logo-fa2.png">
    <meta name="twitter:url" content="{{Request::fullUrl()}}" />
    <!-- Facebook Card Meta Tags -->
    
    <meta name="facebook:title" content="{{$meta->title}}" />
    <meta name="facebook:description" content="{{$meta->description}}" />
    <meta name="facebook:url" content="{{Request::fullUrl()}}" />
    <meta name="facebook:image" content="{{ASSETS}}/front/img/logo-fa2.png" />
    <!-- Other Meta Tags -->
    <meta name="robots" content="index, follow" />
    <meta name="copyright" content="Sitename Goes Here">
    <link rel="shortcut icon" type="image/png" href="img/logo.png">
    <!-- Required CSS Files -->
    @endif
    <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TR97R7R');</script>
<!-- End Google Tag Manager -->

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TV67R3S');</script>
<!-- End Google Tag Manager -->

</head>