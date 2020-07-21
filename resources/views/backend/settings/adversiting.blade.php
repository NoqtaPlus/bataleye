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
                    <form method="post" action="{{route('updateAdver')}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                      
                        <div class="form-group">
                                <label class="control-label">{{trans('backend.desktop_image')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <input name="desktop_image" type="file" class="form-control">
                                </div>
                            </div>
                        <div class="album">
                            <div class="row">
                                @if($Adver&&$Adver->desktop_image !=null)

                                    <div class="col-sm-6 col-md-3">

                                        <a class="thumbnail"><img height="80" src="/getFile/{{$Adver->desktop_image}}">
                                        </a >
                                    </div>
                                @endif
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">{{trans('backend.mobile_image')}}</label>
                            <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                <input name="mobile_image" type="file" class="form-control">
                            </div>
                        </div>
                        <div class="album">
                            <div class="row">
                                @if($Adver&&$Adver->mobile_image!=null)

                                    <div class="col-sm-6 col-md-3">

                                        <a class="thumbnail"><img height="80" src="/getFile/{{$Adver->mobile_image}}">
                                        </a >
                                    </div>
                                @endif
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">{{trans('backend.url')}}</label>
                            <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-link"></i>
                                    </span>
                                <input name="url" type="text" class="form-control" value="{{$Adver->url}}">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group col-md-1">
                                <label class="control-label">{{trans('backend.adsEnable')}}</label>
                            </div>

                            <div class=" input-group col-md-1">

                                <input name="enableAds" type="checkbox" @if($Adver->enableAds == 1) checked @endif  class="form-control" style="margin-right: -42px">
                            </div>
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn btn-danger" href="{{route('getAdver')}}">{{trans('backend.cancel')}}</a>
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