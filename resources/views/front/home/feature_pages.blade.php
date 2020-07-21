<!-- Features -->
<div class="features container">
    <div class="row no-gutter">

        @foreach($feature_pages as $i=>$feature_page)
                <!-- Feature block -->
                <div class="feature-block col-12 col-m-6 col-l-3 wow fadeInUp">
                    <h3>{{$feature_page->title}}</h3>
                    <p>{{$feature_page->short_description}}</p>
                    <a href="{{route($feature_page->external_link)}}" target="_blank" class="btn small light outline">{{ \App\Http\Controllers\HomeController::translateWord('go_to_external_link')}}</a>
                </div>
                <!-- // Feature block -->
        @endforeach        
              
    </div>
</div>
<!-- // Features -->