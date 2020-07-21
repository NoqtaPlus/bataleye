@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('journey.add_journey')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('postAddJourney')}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label">{{trans('journey.title')}}</label>
                                <input name="title" value="{{old('title')}}" type="text" class="form-control" placeholder="{{trans('journey.title')}}" >
                                @if($errors->has('title'))
                                    <span class="help-block">{{$errors->first('title')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('journey.date')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                    <input type="date" name="journey_date" class="form-control">
                                </div>
                                @if($errors->has('journey_date'))
                                    <span class="help-block">{{$errors->first('journey_date')}}</span>
                                @endif
                            </div>
                              <div class="form-group">
                                <label class="control-label">{{trans('journey.time')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                    <input type="time" name="journey_time" class="form-control">
                                </div>
                                @if($errors->has('journey_time'))
                                    <span class="help-block">{{$errors->first('journey_time')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('journey.desc')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                    <textarea  name="desc" class="form-control"></textarea>
                                </div>
                                @if($errors->has('desc'))
                                    <span class="help-block">{{$errors->first('desc')}}</span>
                                @endif
                            </div>
                              <div class="form-group">
                                <label class="control-label">{{trans('journey.img')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                   <input type="file" name="journey_img">
                                </div>
                                @if($errors->has('journey_img'))
                                    <span class="help-block">{{$errors->first('journey_img')}}</span>
                                @endif
                            </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn btn-danger" href="{{route('getAllJourney')}}">{{trans('backend.cancel')}}</a>
                            </div>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
@endsection