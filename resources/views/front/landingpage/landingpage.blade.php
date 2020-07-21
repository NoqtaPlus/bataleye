@extends('front.layouts.landingpage')
@section('content')
@section('meta')
    <title>{{$service->name}}  </title>
    <meta name="description" content="{{$service->name}}">
    <meta name="twitter:card" content="{{$service->name}}" />
    <meta name="twitter:description" content="{{$service->name}}" />
    <meta name="twitter:title" content="{{$service->name}}" />
    <meta name="twitter:image" content=" " />
    <meta property="og:title" content="{{$service->name}}" />
    <meta property="og:description" content="{{$service->name}}" />
@endsection
 <!-- Page Content -->
 <div class="container page-content">
            <!-- Profile -->
            <div class="profile row">
                <!-- Main info -->
                <div class="col-12  col-l-8">
                    <h3 class="tx-align-center primary-color">{{$service->name}}</h3>
                 <iframe width="100%" height="350" src="{{(str_replace('watch?v=', 'embed/', $vide->video).'?autoplay=1')}}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen autoplay></iframe>
                
             
                {!! html_entity_decode($service->long_description) !!}
                <div class="row">  
                 @foreach($videos as $i=>$video)
                 @if($i>0)
                 <div class="col-12 col-m-12">                 
                  <div class="video">
                 
                    @if($video->type=='youtube')
  
                        <iframe width="100%" height="315" src="{{str_replace('watch?v=', 'embed/', $video->video)}}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                        <br>
                        {{$video->description}}
                    @else
                    <video width="750" height="315" controls>
                    <source src="{{Route('viewVideo', [$video->id])}}">
                    Your browser does not support the video tag.
                    </video>
                    @endif 
                   
                </div>
                </div>   
                @endif          
                @endforeach                    
                </div>
                </div>
                <!-- Details -->
                <div class="col-12  col-l-1"></div>
                <!-- Booking Form -->
                <div class="col-12 col-l-3">
                    <form method="post" action="{{route('postAddContactus')}}" class="form-ui booking-form">
                        {{csrf_field()}}
                        <h3>{{ \App\Http\Controllers\HomeController::translateWord('we_are_here')}} </h3>
                        <h2>{{ \App\Http\Controllers\HomeController::translateWord('book_an_appintment')}}</h2>
                        <input name="name" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_name')}}">
                        <input name="email" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_email')}}">
                        <input name="phone" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_phone')}}">
                        <input name="doctor_time" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('doctor_time')}}" data-toggle="datepicker" required>
                        <input name="contact_from" type="hidden" value="book_of_landingpage">
                        <textarea name="message" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_message')}}"></textarea>
                        <input type="submit" value="{{ \App\Http\Controllers\HomeController::translateWord('book_now')}}" class="btn secondary block-lvl">
                    </form>
                </div>     
            </div>
        </div>
    </div>
</div>

@endsection