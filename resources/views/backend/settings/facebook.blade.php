@extends('backend.layouts.main_layout')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="portlet box yellow">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>{{trans('link.update_link')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('updateFacebook')}}">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label">{{trans('facebook.app_id')}}</label>
                                <input name="app_id" value="{{$facebook->app_id}}" type="text" class="form-control" placeholder="{{trans('facebook.app_id')}}" >
                                @if($errors->has('app_id'))
                                <span class="help-block">{{$errors->first('app_id')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('facebook.app_secret')}}</label>
                                <input name="app_secret" value="{{$facebook->app_secret	}}" type="text" class="form-control" placeholder="{{trans('facebook.app_secret')}}" >
                                @if($errors->has('app_secret'))
                                <span class="help-block">{{$errors->first('app_secret')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('facebook.access_token')}}</label>
                                <input name="access_token" value="{{$facebook->access_token}}" type="text" class="form-control" placeholder="{{trans('facebook.access_token')}}" >
                                @if($errors->has('access_token'))
                                <span class="help-block">{{$errors->first('access_token')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('facebook.from_date')}}</label>
                                <input name="from_date" value="{{$facebook->from_date}}" type="date" class="form-control" placeholder="{{trans('facebook.from_date')}}" >
                                @if($errors->has('from_date'))
                                <span class="help-block">{{$errors->first('from_date')}}</span>
                                @endif
                            </div>
                            

                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn btn-danger" href="{{route('getFacebook')}}">{{trans('backend.cancel')}}</a>
                            </div>
                            <input name="_method" type="hidden" value="PUT">
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
   
 @endsection