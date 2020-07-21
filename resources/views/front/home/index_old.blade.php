@extends('front.layouts.front_layout')
@section('meta')
    <title>{!! \App\Repositories\SettingRepository::getSettingValue('site_title') !!}</title>
    <meta name="description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}">
    <meta name="twitter:card" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />
    <meta name="twitter:image" content=" " />
    <meta property="og:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_title') !!}" />
    <meta property="og:description" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_description') !!}" />

@endsection
@section('main_container')
    <!-- Website Wraper -->

          @include('front.includes.breaking-news')


    <!-- Home Slider -->
    <div class="home-slider container">
        @foreach ($sliderNews as $new)
        <!-- item -->
        <div class="item">
            <a href="{{route('getArticleDetails', ['id' => $new->id, 'title' => str_replace(' ', '-', $new->title)])}}" data-src="{{route('getBlogImage', ['id' => $new->id])}}" class="image"></a>
            <div class="info">
                <a href="{{route('getArticleDetails', ['id' => $new->id, 'title' => str_replace(' ', '-', $new->title)])}}"><h3>{{$new->title}}</h3></a>
                <p>{{$new->short_description}}</p>
            </div>
        </div>
        @endforeach
    </div>
    <!-- // Home Slider -->
   
    <!-- Page Content -->
    <div class="page-content container">
        <!-- Content Splite -->
        <div class="row row-reverse">
            <!-- Content Side -->
            <div class="col-12 col-m-8 col-l-9">
                <!-- About Block -->
                <div class="about-block wideget-block">
                    <h3 class="head blue-dark">نبذه عن نادي الترسانة <a href="{{route('historyPage')}}" class="more">قراءة المزيد</a></h3>
                    <div class="row align-center-y">
                        <a href="{{route('historyPage')}}" class="hidden-s-down col-m-3"><img src="{{ASSETS}}/front/tersana/img/logo2.png" alt=""></a>
                        <div class="col-12 col-m-9">
                            <p>{!! \App\Repositories\SettingRepository::getSettingValue('about') !!}</p>
                        </div>
                    </div>
                </div>
                <!-- // About Block -->

                <!-- Lateast News -->
                  
                  @if(isset($latestNews))
                <h2 class="area-head blue">
                    <span class="title ti-book-open-page-variant">اخر الاخبار</span>
                    <a href="{{route('getLatestNews')}}" class="btn secondary rounded">مشاهدة المزيد</a>
                </h2>
                 @endif
                <div class="row news-grid">
                    <!-- news block -->
                    <div class="col-12 news-block">
                        @if(isset($newestNews[0]))
                        <a href="{{route('getArticleDetails', ['id' => $newestNews[0]->id, 'title' => str_replace(' ', '-', $newestNews[0]->title)])}}" data-src="{{route('getBlogImage', ['id' => $newestNews[0]->id])}}" class="image ti-zoom-in"></a>
                        <div class="info">
                            <a href="{{route('getArticleDetails', ['id' => $newestNews[0]->id, 'title' => str_replace(' ', '-', $newestNews[0]->title)])}}"><h3>{{$newestNews[0]->title}}</h3></a>
                            <span class="date">{{$newestNews[0]->created_at}}</span>
                            <p>{{$newestNews[0]->short_description}}</p>
                        </div>
                        @endif
                    </div>
                    <!-- // news block -->

                    <!-- news block -->
                    <div class="col-12 news-block">
                        @if(isset($newestNews[1]))

                        <a href="{{route('getArticleDetails', ['id' => $newestNews[1]->id, 'title' => str_replace(' ', '-', $newestNews[1]->title)])}}" data-src="{{route('getBlogImage', ['id' => $newestNews[1]->id])}}" class="image ti-zoom-in"></a>
                        <div class="info">
                            <a href="{{route('getArticleDetails', ['id' => $newestNews[1]->id, 'title' => str_replace(' ', '-', $newestNews[1]->title)])}}"><h3>{{$newestNews[1]->title}}</h3></a>
                            <span class="date">{{$newestNews[1]->created_at}}</span>
                            <p>{{$newestNews[1]->short_description}}</p>
                        </div>
                        @endif

                    </div>
                    <!-- // news block -->
                    <!-- Small News -->
                    <div class="small-news-slider">
                        <div class="content-box">
                            <h2 class="head">احدث الاخبار</h2>
                            <div class="slider">
                                <!-- small block -->
                                @for($i =2 ;$i< count($newestNews);$i++)
                                <div class="small-block">
                                    <a href="{{route('getArticleDetails', ['id' => $newestNews[$i]->id, 'title' => str_replace(' ', '-', $newestNews[$i]->title)])}}" data-src="{{route('getBlogImage', ['id' => $newestNews[$i]->id])}}"></a>
                                    <div class="info">
                                        <a href="{{route('getArticleDetails', ['id' => $newestNews[$i]->id, 'title' => str_replace(' ', '-', $newestNews[$i]->title)])}}"><h3>{{$newestNews[$i]->title}}</h3></a>
                                        <span class="date">{{$newestNews[$i]->created_at}}</span>
                                    </div>
                                </div>
                                @endfor
                            </div>
                        </div>
                    </div>
                    <!-- // Small News -->
                </div>
                <!-- // Lateast News -->

                <!-- Lateast Videos -->
                <h2 class="area-head blue-dark">
                    <span class="title ti-slow-motion">مكتبه الفيديوهات</span>
                    <a href="{{route('getFrontVideos')}}" class="btn primary rounded">مشاهدة المزيد</a>
                </h2>

                <div class="row video-grid">
                    <!-- video block -->
                    @if(isset($videos[0]))
                    <div class="col-12 col-m-6 video-block">
                        <div class="content-box">
                            <a href="{{Route('getFrontVideo', $videos[0]->id)}}" class="image ti-play" data-src="{{Route('getVideoThumbnail', [$videos[0]->id])}}"></a>
                            <a href="{{Route('getFrontVideo', $videos[0]->id)}}"><h3>{{$videos[0]->title}}</h3></a>
                            <span class="date">{{$videos[0]->created_at}}</span>
                            <p>{{$videos[0]->description}}</p>
                        </div>
                    </div>
                    @endif
                    <!-- // video block -->

                    <!-- Small Videos -->
                    <div class="col-12 col-m-6">
                        <div class="row">
                            @for($i=1; $i< count($videos); $i++)
                            <!-- small video -->
                            <div class="small-video col-6">
                                <a href="{{Route('getFrontVideo', $videos[$i]->id)}}" class="image ti-play" data-src="{{Route('getVideoThumbnail', [$videos[$i]->id])}}"></a>
                                <a href="{{Route('getFrontVideo', $videos[$i]->id)}}"><h3>{{$videos[$i]->title}}</h3></a>
                                <span class="date">{{$videos[$i]->created_at}}</span>
                            </div>
                            <!-- // small video -->
                            @endfor
                        </div>
                    </div>
                    <!-- // Small Videos -->
                </div>
                <!-- // Lateast Videos -->
            </div>
            <!-- // Content Side -->

            @include('front.includes.home-sidebar')

        </div>
        <!-- // Content Splite -->
        @if(count($champions) > 0)
        <!-- Awards -->
        <div class="awards">
            <h2 class="head"><span class="title">بطولات وانجازات نادي الترسانه</span></h2>
            <div class="awards-slider row">
                <!-- Award Block -->
                @foreach($champions as $champion)
                <div class="award-block col-12 col-m-6 col-l-3">
                    <div class="content-box">
                        <a href="{{route('getChampionshipsImage', ['id' => $champion->id])}}" class="image">
                            <img class="img-rounded" src="{{route('getChampionshipsImage', ['id' => $champion->id])}}" style="width:150px;height:150px;margin-top:5px" alt="{{ $champion->name }}">
                        </a>
                        <h3>  {{ $champion->name }}</h3>
                        <h4>{{ $champion->years }}</h4>
                    </div>
                </div>
                @endforeach
                <!-- // Award Block -->

            </div>
        </div>
        <!-- // Awards -->
        @endif
        <!-- Other Games -->
        <div class="other-games">
            <h2 class="wide-head">اخبار ونشاطات الالعاب الاخري</h2>
            <div class="row">
                <!-- Small News Wraper -->
                <div class="small-news-slider col-12 col-m-6 col-l-4">
                    <div class="content-box">
                        <h2 class="head">اخر اخبار الكرة الطائرة</h2>
                        <div class="slider">
                            @foreach($volleyballNews as $new)
                            <div class="small-block">
                                <a href="{{route('getArticleDetails', ['id' => $new->id, 'title' => str_replace(' ', '-', $new->title)])}}" data-src="{{route('getBlogImage', ['id' => $new->id])}}"></a>
                                <div class="info">
                                    <a href="{{route('getArticleDetails', ['id' => $new->id, 'title' => str_replace(' ', '-', $new->title)])}}"><h3>{{$new->title}}</h3></a>
                                    <span class="date">{{$new->created_at}}</span>
                                </div>
                            </div>
                            @endforeach
                            <!-- // small block -->
                        </div>
                    </div>
                </div>
                <!-- // Small News Wraper -->

                <!-- Small News Wraper -->
                <div class="small-news-slider col-12 col-m-6 col-l-4">
                    <div class="content-box">
                        <h2 class="head">اخر اخبار كرة السله</h2>
                        <div class="slider">
                            <!-- small block -->
                            @foreach($basketballNews as $new)
                            <div class="small-block">
                                <a href="{{route('getArticleDetails', ['id' => $new->id, 'title' => str_replace(' ', '-', $new->title)])}}" data-src="{{route('getBlogImage', ['id' => $new->id])}}"></a>
                                <div class="info">
                                    <a href="{{route('getArticleDetails', ['id' => $new->id, 'title' => str_replace(' ', '-', $new->title)])}}"><h3>{{$new->title}}</h3></a>
                                    <span class="date">{{$new->created_at}}</span>
                                </div>
                            </div>
                            @endforeach
                            <!-- // small block -->
                        </div>
                    </div>
                </div>
                <!-- // Small News Wraper -->

                <!-- Small News Wraper -->
                <div class="small-news-slider col-12 col-m-6 col-l-4">
                    <div class="content-box">
                        <h2 class="head">اخر اخبار كرة اليد</h2>
                        <div class="slider">
                            <!-- small block -->
                            @foreach($handballNews as $new)
                            <div class="small-block">
                                <a href="{{route('getArticleDetails', ['id' => $new->id, 'title' => str_replace(' ', '-', $new->title)])}}" data-src="{{route('getBlogImage', ['id' => $new->id])}}"></a>
                                <div class="info">
                                    <a href="{{route('getArticleDetails', ['id' => $new->id, 'title' => str_replace(' ', '-', $new->title)])}}"><h3>{{$new->title}}</h3></a>
                                    <span class="date">{{$new->created_at}}</span>
                                </div>
                            </div>
                            @endforeach
                            <!-- // small block -->
                        </div>
                    </div>
                </div>
                <!-- // Small News Wraper -->
            </div>
        </div>
        <!-- // Other Games -->

        <!-- Sponsers -->
        <div class="sponsers">
            <h2>الرعاة الرسميين</h2>
            <div class="row sponsers-slider">
            @foreach($sponsors as $sponsor)
                <!-- item -->
                <div class="item"><a href="#">
                 <img class="img-rounded" src="{{route('getSponsorImage', ['id' => $sponsor->id])}}" alt="">
                   </a>
                </div>
            @endforeach
                <!-- item -->
            </div>
        </div>
        <!-- // Sponsers -->

        <!-- Managers Slider -->
        <div class="managers-section">
            <h2 class="area-tit">رؤساء النادي السابقين</h2>

            <div class="row players-slider">
                @foreach($managers as $manager)
                <!-- manager Block -->
                <div class="manager-block col-12 col-m-6 col-l-3">
                    <a href="#" class="image" data-src="{{route('getPersonImage', ['id' => $manager->id])}}"></a>
                    <h3>{{ $manager->number }}</h3>
                    <h4>{{ $manager->description }}</h4>
                </div>
                <!-- // manager Block -->
                @endforeach
            </div>
        </div>
        <!-- // Managers Slider -->


        <!-- Players Slider -->
        <h2 class="area-tit">لاعبي الفريق الاول</h2>
        <div class="row players-slider">
            @foreach($players as $player)
            <!-- Player Block -->
            <div class="col-12 col-m-6 col-l-4 player-block">
                <div class="content-box">
                    <div class="image" data-src="{{route('getPersonImage', ['id' => $player->id])}}">
                        <span class="number">{{ $player->number }}</span>
                        <ul>
                            <li>تاريخ الميلاد  :  {{ $player->birth_date }}</li>
                            <li>تاريخ الانضمام :  {{ $player->joining_date }}</li>
                            <li>مركز اللعب  :  {{ $player->description }}</li>
                        </ul>
                    </div>
                    <h3>{{ $player->name }}</h3>
                </div>
            </div>
            @endforeach

            <!-- // Player Block -->
        </div>

        <!-- // Players Slider -->

        <!-- Arsenal Legends -->
        <div class="arsenal-legends">
            <h2>أساطير نادي الترسانة</h2>
            <div class="legends-slider row">
                @foreach($legends as $legend)
                <!-- Legend Block -->
                <div class="legend-block col-12 col-m-6 col-l-3">
                    <div class="content-box">
                        <img src="{{route('getPersonImage', ['id' => $legend->id])}}" alt="{{ $legend->name }}">
                        <h3>{{ $legend->name }}</h3>
                        <h4>{{ $legend->description }}</h4>
                    </div>
                </div>
                <!-- // Legend Block -->
                @endforeach
            </div>
        </div>
        <!-- // Arsenal Legends -->
    </div>
    <!-- // Page Content -->

@endsection