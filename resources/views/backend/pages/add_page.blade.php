@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('backend.addPage')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('postAddPage')}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                            @include('backend.includes.check_language')
                            @foreach (\Config::get('languages') as $locale=>$language) 
                            <div id="tap_{{$locale}}">
                                <div class="form-group">
                                    <label class="control-label">{{trans('backend.title',[''],$locale)}}</label>
                                    <input name="title:{{$locale}}" value="{{old('title:'.$locale)}}" type="text" class="form-control" placeholder="{{trans('backend.title',[''],$locale)}}" >
                                    @if($errors->has('title:{{$locale}}'))
                                        <span class="help-block">{{$errors->first('title:'.$locale)}}</span>
                                    @endif
                                </div>

                                <div class="form-group">
                                    <label class="control-label">{{trans('backend.short_description',[''],$locale)}}</label>
                                    <textarea name="short_description:{{$locale}}" class="form-control" placeholder="{{trans('backend.short_description',[''],$locale)}}">{{old('short_description:'.$locale)}}</textarea>
                                    @if($errors->has('short_description:{{$locale}}'))
                                        <span class="help-block">
                                        {{$errors->first('short_description'.$locale)}}
                                        </span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label class="control-label">{{trans('backend.long_description',[''],$locale)}}</label>
                                    <textarea name="long_description:{{$locale}}" class="ckeditor" placeholder="{{trans('backend.long_description',[''],$locale)}}">{{old('long_description:'.$locale)}}</textarea>
                                    @if($errors->has('long_description:{{$locale}}'))
                                        <span class="help-block">
                                        {{$errors->first('long_description'.$locale)}}
                                        </span>
                                    @endif
                                </div>
                            </div>    

                            @endforeach

                            <div class="form-group">
                                <label class="control-label">{{trans('backend.activation')}}</label>
                                <div class="input-group">
                                    <input type="checkbox" name="active" class="checkbox" value="1">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.image')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <input name="image" type="file" class="form-control" >
                                    @if($errors->has('image'))
                                        <span class="help-block">{{$errors->first('image')}}</span>
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn btn-danger" href="{{route('getAllPages')}}">{{trans('backend.cancel')}}</a>
                            </div>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
@endsection