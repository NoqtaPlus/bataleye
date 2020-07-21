@extends('front.layouts.front_layout')
@section('meta')
    <title> {{trans('categories.'.$category->name)}}</title>
    <meta name="description" content="{{$category->description}}">
    <meta name="twitter:card" content="{{$category->description}}" />
    <meta name="twitter:description" content="{{$category->description}}" />
    <meta name="twitter:title" content="{{$category->description}}" />
    <meta name="twitter:image" content=" " />
    <meta property="og:title" content="{!! \App\Repositories\SettingRepository::getSettingValue('site_title') !!}" />
    <meta property="og:description" content="{{$category->description}}" />
@endsection
@section('main_container')
<!-- Page Head -->
<div class="page-head container">
    <div class="content">
        <h1 class="ti-book-open-page-variant">{{trans('categories.'.$category->name)}}</h1>
        <div class="breadcrumb">
            <a href="{{route('getFrontHome')}}">الرئيسية</a>
            <a style="contact-pointer-events: none; cursor: default;us">{{trans('categories.'.$category->name)}}</a>
        </div>
    </div>
</div>
<!-- // Page Head -->

@include('front.includes.top-ads')
 @include('front.includes.breaking-news')

<!-- Page Content -->
<div class="page-content container">
   
    <!-- Content Splite -->
    <div class="row row-reverse">
        <!-- Content Side -->
        <div class="col-12 col-m-8 col-l-9">
            <!-- Area Head -->
            <h2 class="area-head">
                <span class="title ti-book-open-page-variant">{{trans('categories.'.$category->name)}}</span>
                <!-- Search -->
                <form class="nav-search" method="GET" action="{{route('search')}}">
                    <input name="q" type="text" placeholder="البحث فى القسم">
                    <input type="hidden" name="category" value="{{$category->category_id}}">
                    <input type="submit" value="">
                </form>
            </h2>
            <!-- Page Description -->
            
             <!-- Page Description -->
    @if($category->name != 'reports' && $category->name != 'interviews' && $category->name != 'socialism' && $category->name !='journey' && $category->name != 'football-news')
             <!-- Tersans Info List -->
        <div class="tersana-info">
           @if($subscript_trinig)
              {!! $subscript_trinig->desc !!}
             <h2>قيمه الاشتراك</h2>
            <p>{{$subscript_trinig->price}}</p>
            @endif
            @if($champion_desc)
            <h2>بطولات النادي</h2>
             {!! $champion_desc->desc !!}
            @endif
            
           @if(Session::has('done'))
             <div class="alert alert-success">{{ Session::get('done') }}</div>
          @endif
              
            <h2> أشترك الان</h2>
            <form class="form-ui row" method="post" action="{{ route('postSubscriptGameTraining') }}" enctype="multipart/form-data">
                      {{ csrf_field() }}
                <!-- Form Control -->
                <div class="col-12">
                        <label>الاسم بالكامل</label>
                        <input type="text" name="fullname" placeholder="اكتب اسمك" required>
                    @if($errors->has('fullname'))
                        <span class="help-block">{{$errors->first('fullname')}}</span>
                    @endif
                </div>
       
                <!-- // Form Control -->
                <!-- Form Control -->
                <div class="col-12 col-m-6">
                        <label>البريد الالكتروني</label>
                        <input type="email" name="email" placeholder="بريدك الالكتروني" required>
                     @if($errors->has('email'))
                        <span class="help-block">{{$errors->first('email')}}</span>
                    @endif
                </div>
                <!-- // Form Control -->
                <!-- Form Control -->
                    <div class="col-12 col-m-6">
                        <label>رقم الهاتف</label>
                        <input type="text" name="phone" placeholder="رقم هاتفك" required>
                    @if($errors->has('phone'))
                        <span class="help-block">{{$errors->first('phone')}}</span>
                    @endif  
                </div>
                <!-- // Form Control -->
                <!-- Form Control -->
                <div class="col-12 col-m-6">
                        <label>رقم العضويه</label>
                        <input type="text" name="membership_no" placeholder="رقم عضويتك بالنادي" required>
                    @if($errors->has('membership_no'))
                        <span class="help-block">{{$errors->first('membership_no')}}</span>
                    @endif      
                </div>
                <!-- // Form Control -->
                <!-- Form Control -->
                <div class="col-12 col-m-6">
                        <label>السن</label>
                        <input type="text" name="age" placeholder="كم تبلغ من العمر" required>
                    @if($errors->has('age'))
                        <span class="help-block">{{$errors->first('age')}}</span>
                    @endif    
                </div>
                <div class="col-12">
                    <input type="hidden" name="category" value="{{trans('categories.'.$category->name)}}">
                </div>
                <div class="col-12">
                     <input type="submit" class="btn primary" value="اشتراك">
                </div>
                <!-- // Form Control -->
            </form>
         
        </div>
        <!-- // Tersans Info List -->
    @endif
        <p class="page-description">{{$category->description}}</p>
            <!-- news block -->
            @foreach($blogs as $blog)
            <div class="news-block">
                <a href="{{route('getArticleDetails', ['id' => $blog->id, 'title' => str_replace(' ', '-', $blog->title)])}}" data-src="{{route('getBlogImage', ['id' => $blog->id])}}" class="image ti-zoom-in"></a>
                <div class="info">
                    <a href="{{route('getArticleDetails', ['id' => $blog->id, 'title' => str_replace(' ', '-', $blog->title)])}}"><h3>{{$blog->title}}</h3></a>
                    <span class="date">{{$blog->created_at}}</span>
                    <p>{{$blog->short_description}}</p>
                </div>
            </div>
            @endforeach
            <!-- // news block -->
            {{ $blogs->links() }}
        </div>
        <!-- // Content Side -->

        @include('front.includes.sidebar')

    </div>
    <!-- // Content Splite -->
</div>
 @endsection