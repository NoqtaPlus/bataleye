@extends('front.layouts.front_layout')
@section('meta')
    <title> كل الرحلات</title>
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
        <h1 class="ti-phone-classic">كل الرحلات</h1>
        <div class="breadcrumb">
            <a href="{{route('getFrontHome')}}">الرئيسية</a>
            <a style="contact-pointer-events: none; cursor: default;us"> كل الرحلات</a>
        </div>
    </div>
</div>
<!-- // Page Head -->

     <!-- Page Content -->
            <div class="page-content container">
                <!-- Content Splite -->
                <div class="row row-reverse">
                    <!-- Content Side -->
                    <div class="col-12 col-m-8 col-l-9">
                        <!-- Area Head -->
                        <h2 class="area-head">
                            <span class="title ti-book-open-page-variant">الرحلات</span>
                            <!-- Search -->
                        </h2>

                        <!-- travel block -->
                      
                            @include('front.includes.previous-journey')
                            @if(Session::has('ticket'))
                                <div class="alert alert-success">{{ Session::get('ticket') }}</div>
                            @endif
                        <!-- Next Journey Wideget -->
  <?php $journes = \App\Repositories\JourneyRepository::nextJourney() ?>
  
    @if( $journes !== null)
        @foreach ($journes as $i=>$journey)
          
           <div class="news-block travel-block">
                <a href="#" data-modal="register-modal{{$i+100000}}" data-src="http://www.altarsana.com/public/assets/images/journey/{{$journey->journey_img}}" class="image ti-zoom-in">
                    <span class="next-badge">الرحله القادمه</span>
                </a> 
                <div class="info">
                    <a href="#"><h3> {{$journey->title}} </h3></a>
                    <span class="date">بتاريخ {{$journey->journey_date}} الساعه {{$journey->journey_time}}</span>
                        <p>{{$journey->desc}}</p>
                       
                         
                    <a href="javascript:void(0)" data-name="{{$journey->title}}" class="btn primary send">اشتراك فى الرحله</a>
                </div>
            </div>
           <div class="modal-box tornado-ui" id="register-modal{{$i+100000}}">

         <div class="modal-content">
           <div class="modal-head">
               
               {{$journey->journey_date}}
           

           </div>
           <div class="modal-body">

              بتاريخ {{$journey->journey_date}} الساعه {{$journey->journey_time}}
                {{$journey->desc}}
            
              </div>
            </div>
        </div>
        <div class="modal-box tornado-ui ticket" id="travel-form">
            <div class="modal-content">
                <div class="modal-head">
                    الاشتراك فى الرحله
                    <span class="close-modal ti-clear"></span>
                </div>
        
               <div class="modal-body form-ui">
            
                    <form method="post" action="{{route('postGetTickeBooking')}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <input type="hidden" name="ticket_name" value="@if( $journey != null) : {{$journey->title}} @endif " placeholder=" اسم الرحله " >
                        <label>الاسم بلكامل</label>
                        <input name="full_name" type="text" placeholder="الاسم بلكامل" required>
                        <label>رقم الهاتف</label>
                        <input  name="phone" type="text" placeholder="رقم الهاتف" required>
                        <label>رقم العضويه</label>
                        <input name="membership_no" type="text" placeholder="رقم العضويه" >
                        <label>عدد المرافقين</label>
                        <input name="Facilities_no" type="text" placeholder="عدد المرافقين" >
                        
                        <input type="submit" class="btn primary" value="اشتراك">
                    </form>
                </div>
            </div>
        </div>
        @endforeach
    @endif 
        
        
                   
                        <!-- // travel block -->
                         
                    </div>
                    <!-- // Content Side -->

                    <!-- widegets Side -->
                    <div class="col-12 col-m-4 col-l-3">
                        @include('front.includes.most-readable')
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
            <!-- // Page Content -->
@endsection
@section('js')
  <script>
  $(document).ready(function(){
      $('.send').click(function(){
          $('.ticket').addClass('active');
          $("input[name='ticket_name']").val($(this).attr('data-name'));
      })
  });
  </script>
@endsection