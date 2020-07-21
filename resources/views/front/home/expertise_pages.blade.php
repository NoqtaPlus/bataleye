    <!-- Expertise -->
    <div class="section expertise-section">
            <div class="container">
                <h2 class="section-title wow fadeInUp">{{ \App\Http\Controllers\HomeController::translateWord('expertise')}}</h2>
                <!-- Grid -->
                <div class="row">
                @foreach($expertise_pages as $i=>$expertise_page)
                    <!-- Expertise Block -->
                    <div class="expertise-block col-12 col-m-6 col-l-3 wow fadeInUp">
                        <div class="content-box">
                            <i class="icon"><img src="{{UPLOADS}}/pages/{{$expertise_page->image}}" alt=""></i>
                            <a href="#"><h3>{{$expertise_page->title}}</h3></a>
                            <p>{{$expertise_page->short_description}}</p>
                            <a href="{{route('getFrontPageById',['pageId'=>$expertise_page->page_id,'title'=>$expertise_page->title])}}" class="btn small secondary">{{trans('frontend.read_more')}}</a>
                        </div>
                    </div>
                    <!-- // Expertise Block -->
                @endforeach    
                </div>
            </div>
        </div>
        <!-- // Expertise -->