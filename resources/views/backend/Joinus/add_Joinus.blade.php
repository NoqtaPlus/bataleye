@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('backend.add_Joinus')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
               
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('postAddJoinus')}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                        @include('backend.includes.check_language')
                        
                       
                        @foreach (\Config::get('languages') as $locale=>$language) 
                        <div id="tap_{{$locale}}">
                        <div class="form-group">
                                <label class="control-label">{{trans('backend.title',[''],$locale)}}</label>
                                <input name="title:{{$locale}}" value="{{old('title:'.$locale)}}" type="text" class="form-control" maxlength="65" placeholder="{{trans('backend.title',[''],$locale)}}" >
                                @if($errors->has('title:{{$locale}}'))
                                    <span class="help-block">{{$errors->first('title:'.$locale)}}</span>
                                @endif
                            </div>      
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.description',[''],$locale)}}</label>
                                <input name="description:{{$locale}}" value="{{old('description:'.$locale)}}" type="text" class="form-control"  placeholder="{{trans('backend.description',[''],$locale)}}" >
                                @if($errors->has('description:{{$locale}}'))
                                    <span class="help-block">{{$errors->first('description:'.$locale)}}</span>
                                @endif
                            </div>                                                                               
                        </div>

                        @endforeach                               
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn btn-danger" href="{{route('getAllJoinus')}}">{{trans('backend.cancel')}}</a>
                            </div>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
@endsection