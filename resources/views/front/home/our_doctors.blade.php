<!-- Our Doctors -->
<div class="section our-doctors">
    <div class="container">
        <h2 class="section-title wow fadeInUp">{{ \App\Http\Controllers\HomeController::translateWord('medical team')}}</h2>
        <h2 class="section-title"></h2>
        <p class="wow fadeInUp"> {{ \App\Http\Controllers\HomeController::translateWord('doctors_second_title')}}</p>
        <!-- Grid -->
        <div class="doctors-slider row">
        @foreach($persons as $i=>$person)
            <!-- Doctor Block -->
            <div class="doctor-block col-12 col-m-6 col-l-3 wow fadeInUp">
                <div class="content-box">
                      @if($person->id==3)
                           <a href="{{route('getPersonDetailsbara',['routename'=>$route])}}" class="image" data-src="{{UPLOADS}}/persons/{{$person->image}}"></a>
                           <a href="{{route('getPersonDetailsbara',['routename'=>$route])}}"><h3>{{$person->name}}</h3></a>
                          @else
                        <a href="{{route('getPersonDetails',['personId'=>$person->id,'routename'=>$route])}}" class="image" data-src="{{UPLOADS}}/persons/{{$person->image}}"></a>
                        <a href="{{route('getPersonDetails',['personId'=>$person->id,'routename'=>$route])}}"><h3>{{$person->name}}</h3></a>
                        @endif
                    <p>{{$person->short_description}}</p>
                    <div class="social">
                    <a href="{{$person->facebook_link}}" class="ti-facebook" target="_blank"></a>
                    <a href="{{$person->twitter_link}}" class="ti-twitter" target="_blank"></a>
                    <a href="{{$person->insta_link}}" class="ti-instagram" target="_blank"></a>
                    <a href="{{$person->youtube_link}}" class="ti-youtube-play" target="_blank"></a>
                    </div>
                </div>
            </div>
            <!-- // Doctor Block -->
        @endforeach    
         
        </div>
    </div>
</div>
<!-- // Our Doctors -->