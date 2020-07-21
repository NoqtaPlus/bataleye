@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('slider.update_slider')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('updateSliderById',['sliderId'=>$slider->slider_id])}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label">اللغة</label>
                                <div class="radio">
                                    <label><input type="radio" name="type" value="ar"  checked="checked">Arabic</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="type" value="en">English</label>
                                </div>
                            </div>    
                            <div id="tap_ar">
                                <div class="form-group">
                                    <label class="control-label">{{trans('slider.title')}}</label>
                                    <input name="title:ar" value="{{ $slider->translate('ar')->title}}" type="text" class="form-control" placeholder="{{trans('slider.title:ar')}}" >
                                    @if($errors->has('title:ar'))
                                        <span class="help-block">{{$errors->first('title:ar')}}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label class="control-label">{{trans('slider.short_description')}}</label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-envelope"></i>
                                        </span>
                                        <textarea name="short_description:ar" class="form-control" placeholder="{{trans('slider.short_description')}}">{{ $slider->translate('ar')->short_description}}</textarea>
                                    </div>
                                    @if($errors->has('short_description:ar'))
                                        <span class="help-block">{{$errors->first('short_description:ar')}}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label class="control-label">{{trans('slider.long_description')}}</label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-envelope"></i>
                                        </span>
                                        <textarea name="long_description:ar" class="form-control" placeholder="{{trans('slider.long_description')}}">{{ $slider->translate('ar')->long_description}}</textarea>
                                    </div>
                                    @if($errors->has('long_description:ar'))
                                        <span class="help-block">{{$errors->first('long_description:ar')}}</span>
                                    @endif
                                </div>
                            </div>

                            <div id="tap_en">
                                <div class="form-group">
                                    <label class="control-label">Tittle</label>
                                    <input name="title:en" value="{{ $slider->translate('en')->title}}" type="text" class="form-control" placeholder="Tittle" >
                                    @if($errors->has('title:en'))
                                        <span class="help-block">{{$errors->first('title:en')}}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Short Description</label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-envelope"></i>
                                        </span>
                                        <textarea name="short_description:en" class="form-control" placeholder="Short Description">{{ $slider->translate('en')->short_description}}</textarea>
                                    </div>
                                    @if($errors->has('short_description:en'))
                                        <span class="help-block">{{$errors->first('short_description:en')}}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Long Description</label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-envelope"></i>
                                        </span>
                                        <textarea name="long_description:en" class="form-control" placeholder=">Long Description">{{ $slider->translate('en')->long_description}}</textarea>
                                    </div>
                                    @if($errors->has('long_description:en'))
                                        <span class="help-block">{{$errors->first('long_description:en')}}</span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label">{{trans('slider.active')}}</label>
                                <div class="input-group">
                                    @if($slider->active == 1)
                                        <input type="checkbox" name="active" class="checkbox" value="1" checked>
                                    @else
                                        <input type="checkbox" name="active" class="checkbox" value="1">
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('slider.image')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-picture-o"></i>
                                    </span>
                                    <input name="image" type="file" class="form-control" >
                                    <img height="100" src="{{UPLOADS}}/sliders/{{$slider->image}}">
                                    @if($errors->has('image'))
                                        <span class="help-block">{{$errors->first('image')}}</span>
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn btn-danger" href="{{route('getAllSliders')}}">{{trans('backend.cancel')}}</a>
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