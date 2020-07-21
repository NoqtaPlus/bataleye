<!-- Gallery Section -->
<div class="section gallery-section">
    <div class="container">
        <h2 class="section-title wow fadeInUp">{{ \App\Http\Controllers\HomeController::translateWord('gallery')}}</h2>
       
        <!-- Filters Menu -->
        <ul class="mixit-filters wow fadeInUp">
            <li data-filter="all" class="filter">{{trans('frontend.all')}}</li>
            <li data-filter=".photos" class="filter">{{trans('frontend.photos')}}</li>
            <li data-filter=".videos" class="filter">{{trans('frontend.videos')}}</li>
        </ul>
        <!-- Grid -->
        <div class="row" id="mixitup">
            @if(isset($images))    
            @foreach($images as $i=>$image)
               
                <div class="col-12 col-m-6 col-l-4 gallery-block mix photos">                   
                <a href="{{UPLOADS}}/images/{{$image[0]}}" class="image" data-src="{{UPLOADS}}/images/{{$image[0]}}" data-lightbox="gallery-{{$i}}"></a>
                @foreach($image as $x=>$imag)
                @if($x!=0)
                <div class="hidden">
                        <a href="{{UPLOADS}}/images/{{$imag}}" data-lightbox="gallery-{{$i}}"></a>
                    </div>
                    @endif
                    @endforeach             
                </div> 
               
                @endforeach     
            @endif
            <!-- // Gallery Block -->
            <!-- Gallery Block -->
            @if(isset($videos))  
            @foreach($videos as $i=>$video)
                <div class="col-12 col-m-6 col-l-4 gallery-block mix videos">
                <div class="video">
                    @if($video->type=='youtube')
  
                        <iframe width="560" height="315" src="{{str_replace('watch?v=', 'embed/', $video->video)}}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    @else
                    <video width="560" height="315" controls>
                    <source src="{{Route('viewVideo', [$video->id])}}">
                    Your browser does not support the video tag.
                    </video>
                    @endif   
                </div>       
                    </div>
                <!-- // Gallery Block -->
                @endforeach
            @endif

           
        </div>
    </div>
</div>
<!-- // Gallery Section -->