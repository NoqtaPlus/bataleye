
<div class="section news-section">
    <div class="container">
        <h2 class="section-title wow fadeInUp">{{ \App\Http\Controllers\HomeController::translateWord('lateast-news-tit')}}</h2>
        <p class="wow fadeInUp">{{ \App\Http\Controllers\HomeController::translateWord('lateast-news-disc')}}</p>
        <!-- Grid -->
        <div class="row news-slider">
            <!-- News Block -->
            @foreach($latestNews as $news)
            <div class="news-block col-12 col-m-6 col-l-4 wow fadeInUp">
                <div class="content-box">
                    <a href="{{route('getBlogDetails', ['id' => $news->id, 'title' => str_replace(' ', '-', $news->title)])}}" class="image" data-src="{{UPLOADS}}/posts/images/{{$news->image}}"></a>
                    <span class="date">{{$news->created_at}}</span>
                    <a href="{{route('getBlogDetails', ['id' => $news->id, 'title' => str_replace(' ', '-', $news->title)])}}"><h3>{{$news->title}}</h3></a>
                    <p>{{$news->short_description}}</p>
                    <a href="{{route('getBlogDetails', ['id' => $news->id, 'title' => str_replace(' ', '-', $news->title)])}}" class="btn secondary">{{ \App\Http\Controllers\HomeController::translateWord('read_more')}}</a>
                </div>
            </div>
            @endforeach
            <!-- // News Block -->
            <!-- News Block -->
            
            <!-- // News Block -->
            
            <!-- // News Block -->
            <!-- News Block -->
            

            <!-- // News Block -->
            <!-- News Block -->
            
            <!-- // News Block -->
            <!-- News Block -->
            
            <!-- // News Block -->
        </div>
    </div>
</div>
<!-- // News Section -->
