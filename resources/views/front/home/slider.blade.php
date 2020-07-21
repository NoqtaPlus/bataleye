<!-- Home Slider -->
<div class="home-slider slider-component">
    @foreach($sliders as $i=>$slider)
            <!-- Item -->
            
            <div class="item" data-src="{{UPLOADS}}/sliders/{{$slider->image}}">
                 @if($i==0)
                <div class="container" style="direction: ltr;">
                    <div class="content">
                        <h2 style="color:black;">{{$slider->short_description}}</h2>
                        <h3>{{$slider->title}}</h3>
                    </div>
                </div>
           
                 @else
                <div class="container" >
                    <div class="content">
                        <h2 style="color:black;">{{$slider->short_description}}</h2>
                        <h3>{{$slider->title}}</h3>
                    </div>
                </div>
                @endif
            </div>
        
            <!-- // Item -->
    @endforeach        
</div>
<!-- // Home Slider -->