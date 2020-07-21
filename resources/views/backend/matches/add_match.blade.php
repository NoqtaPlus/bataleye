@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('backend.addMatch')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('postAddMatch')}}" enctype = "multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.opposing_team')}}</label>
                                <input name="opposing_team" value="{{old('opposing_team')}}" type="text" class="form-control" placeholder="{{trans('backend.opposing_team')}}" >
                                @if($errors->has('opposing_team'))
                                    <span class="help-block">{{$errors->first('opposing_team')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.logo')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                    <input name="logo" type="file" class="form-control" >
                                    @if($errors->has('logo'))
                                        <span class="help-block">{{$errors->first('logo')}}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.championship')}}</label>
                                <input name="championship" value="{{old('championship')}}" type="text" class="form-control" placeholder="{{trans('backend.championship')}}" >
                                @if($errors->has('championship'))
                                    <span class="help-block">{{$errors->first('championship')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.stadium')}}</label>
                                <input name="stadium" value="{{old('stadium')}}" type="text" class="form-control" placeholder="{{trans('backend.stadium')}}" >
                                @if($errors->has('stadium'))
                                    <span class="help-block">{{$errors->first('stadium')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.date')}}</label>
                                <input name="date" value="{{old('date')}}" type="date" class="form-control" placeholder="{{trans('backend.date')}}" >
                                @if($errors->has('date'))
                                    <span class="help-block">{{$errors->first('date')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.time')}}</label>
                                <input name="time" value="{{old('time')}}" type="time" class="form-control" placeholder="{{trans('backend.time')}}" >
                                @if($errors->has('time'))
                                    <span class="help-block">{{$errors->first('time')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.result')}}</label>
                                <input name="result" value="{{old('result')}}" type="text" class="form-control" placeholder="{{trans('backend.result')}}" >
                                @if($errors->has('result'))
                                    <span class="help-block">{{$errors->first('result')}}</span>
                                @endif
                            </div>
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn btn-danger" href="{{route('getAllMatches')}}">{{trans('backend.cancel')}}</a>
                            </div>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
@endsection