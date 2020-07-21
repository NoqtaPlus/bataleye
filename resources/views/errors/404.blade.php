@extends('front.layouts.landingpage')
@section('content')
<div class="container page-content">
            <div class="row align-center-z row-reverse error-404">
                <div class="col-12 col-m-6 col-l-7">
                    <img src="{{ASSETS}}/images/background/error.png" alt="error" class="block-lvl">
                </div>
                <div class="col-12 col-m-6 col-l-5">
                    <div class="content">
                        <h1>{{ \App\Http\Controllers\HomeController::translateWord('sorry')}}</h1>
                        <h1>404</h1>
                        <h2>{{ \App\Http\Controllers\HomeController::translateWord('The Page Your Looking for Does Not Exist.')}}</h2>
                    </div>
                </div>
            </div>
        </div>
@endsection