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
                    <form method="post" action="{{route('updateInstagram')}}">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label">{{trans('facebook.app_id')}}</label>
                                <input name="client_id" value="{{$Instagram->client_id}}" type="text" class="form-control" placeholder="{{trans('facebook.api_id')}}" readonly>
                                
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.link')}}</label>
                                <a href="{{$Instagram->link	}}" target="_blank" class="form-control">{{$Instagram->link	}}</a>
                               
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('facebook.access_token')}}</label>
                                <input name="accesstoken" value="{{$Instagram->accesstoken	}}" type="text" class="form-control" placeholder="{{trans('facebook.accesstoken')}}" >
                                @if($errors->has('accesstoken'))
                                <span class="help-block">{{$errors->first('accesstoken')}}</span>
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