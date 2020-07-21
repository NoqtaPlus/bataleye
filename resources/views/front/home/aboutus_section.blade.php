<!-- About Section -->
<div class="section about-section overflow">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-m-7 align-self-center wow fadeInStart">
                        <h2>{{ \App\Http\Controllers\HomeController::translateWord('about_us')}}</h2>
                        <h3>{{$aboutus->title}}</h3>
                        <p>{{$aboutus->short_description}}</p>
                        <a href="{{route('getFrontPageById',['pageId'=>$aboutus->page_id,'title'=>$aboutus->title])}}" class="btn primary">{{ \App\Http\Controllers\HomeController::translateWord('read_more')}}</a>
                    </div>
                    <div class="col-12 col-m-5 align-self-end wow fadeInEnd">
                        <img src="{{ASSETS}}/front/img/about-man.png" alt="">
                    </div>
                </div>
            </div>
</div>
<!-- // About Section -->