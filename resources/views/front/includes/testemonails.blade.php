<!-- Testemonails -->
<div class="testemonails-section wow fadeInUp container">
            <div class="testemonails-slider">
            @php 
            $testmonials=\App\Http\Controllers\HomeController::getFrontTestmonials();
            @endphp
                @foreach($testmonials as $index=>$testmonial)
                <!-- item -->
                <div class="item">
                    <div class="auther">
                        <img src="{{ASSETS}}/images/clients/{{$testmonial->logo}}" alt="">
                        <h3>{{$testmonial->name}} <span>{{$testmonial->country}}</span></h3>
                    </div>
                    <div class="info ti-quote-right">{{$testmonial->opinion}}</div>
                </div>
                @endforeach
                
            </div>
</div>
<!-- // Testemonails -->