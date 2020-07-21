@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('service.addType')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('postAddServiceType')}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        @include('backend.includes.check_language')
                        @foreach (\Config::get('languages') as $locale=>$language) 
                        <div id="tap_{{$locale}}">
                            <div class="form-group">
                                <label class="control-label">{{trans('service.service_Type',[''],$locale)}}</label>
                                <input name="name:{{$locale}}" value="{{old('name:'.$locale)}}" type="text" class="form-control" placeholder="{{trans('service.service_Type',[''],$locale)}}" >
                                @if($errors->has('name:{{$locale}}'))
                                    <span class="help-block">{{$errors->first('name:'.$locale)}}</span>
                                @endif
                            </div>

                        </div>
                        @endforeach
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn blue" href="{{route('getAddServiceType')}}">{{trans('backend.cancel')}}</a>
                            </div>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
@endsection