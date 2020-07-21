
@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('backend.update_ads')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                <!-- BEGIN FORM-->
                    {!! Form::model($ads,array('route' => ['ads_management.update',$ads->id],'method' => 'put','files' => true)) !!}
                        <div class="form-body">
                            <div class="form-group">
                                {!! form::label('image','Upload Ad Image') !!}
                                {!! form::file('image',old('image'),['id'=>'image']) !!}
                                <img src="{{route('getAdsImage', ['id' => $ads->id])}}"  style="height: 150px; width: 150px; border-radius: 50%">
                                @if($errors->has('image'))
                                    <span class="help-block">{{$errors->first('image')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                {!! form::label('link','Enter Ad Link') !!}
                                {!! form::text('link',old('link'),['id'=>'link','class'=>'form-control']) !!}

                            @if($errors->has('link'))
                                    <span class="help-block">{{$errors->first('link')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <select class="form-control" name="position_id">                                                 
                                    @foreach($positions as $i=>$position)
                                        <option value="{!! $position->id !!}" @if($ads->position_id == $position->id) selected="selected" @endif>{!!trans('ads.'. $position->slug) !!}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                {!! form::submit(trans('backend.update'),['class'=>'btn green']) !!}
                                <a class="btn blue" href="{{route('ads_management.index')}}">{{trans('backend.cancel')}}</a>
                            </div>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
@endsection