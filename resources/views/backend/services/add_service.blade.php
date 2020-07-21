@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('service.add_service')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('postAddService')}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                        @include('backend.includes.check_language')
                        <div class="form-group">
                            <label for="single-prepend-text" class="control-label">{{trans('service.section_name')}}</label>
                            <div class="input-group select2-bootstrap-prepend">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button" data-select2-open="single-prepend-text">
                                <span class="glyphicon glyphicon-search"></span>
                                </button>
                                </span>
                            <select name="service_section_id" id="single-prepend-text" class="form-control select2">
                                <option value="1">{{trans('service.select_section')}}</option>
                                @foreach($sections as $i=>$section)
                                <option value="{{$section->service_section_id}}">{{$section->name}}</option>
                                @endforeach
                            </select>
                            </div>
                        </div>
                        <div class="form-group" id="process">
                            <label class="control-label">{{ \App\Http\Controllers\HomeController::translateWord('service_type')}}</label>        
                            <select name="service_type_id[]"  class="form-control chosen-select" multiple >
                                <option value="">{{ \App\Http\Controllers\HomeController::translateWord('please_select')}}</option>
                                @foreach($types as $type)                          
                                  <option value="{{ $type->id }}">{{ $type->name }}</option>
                                @endforeach
                              </select>
                        </div>
                        @foreach (\Config::get('languages') as $locale=>$language) 
                        <div id="tap_{{$locale}}">
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.service_name',[''],$locale)}}</label>
                                <input name="name:{{$locale}}" value="{{old('name:'.$locale)}}" type="text" class="form-control" placeholder="{{trans('service.service_name',[''],$locale)}}" >
                                @if($errors->has('name:{{$locale}}'))
                                    <span class="help-block">{{$errors->first('name:'.$locale)}}</span>
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
                                <label class="control-label">{{trans('service.active')}}</label>
                                <div class="input-group">
                                    <input type="checkbox" name="active" class="checkbox" value="1">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('service.show_in_homepage')}}</label>
                                <div class="input-group">
                                    <input type="checkbox" name="show_in_homepage" class="checkbox" value="1" >
                                </div>
                            </div>
                            <div class="form-group" id="show">
							<label class="control-label">{{trans('backend.type')}}</label>
							<div class="radio">
								<label><input type="radio" name="type1" value="image" checked="checked">{{trans('backend.image')}}</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="type1" value="video">{{trans('backend.video')}}</label>
							</div>
						   </div>
                            <div class="form-group" id="image">
                                <label class="control-label">{{trans('service.image')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <input name="image" type="file" class="form-control">
                                    @if($errors->has('image'))
                                        <span class="help-block">{{$errors->first('image')}}</span>
                                    @endif
                                </div>
                            </div>
                            <div id="video" class="form-group">
                                <div id="video-link"  class="form-group">
                                <label class="control-label">{{trans('backend.video_link')}}</label>
                                <input class="form-control" type="text" name="video_link">
                                @if($errors->has('video'))
                                    <span class="help-block">{{$errors->first('video')}}</span>
                                @endif
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn btn-danger" href="{{route('getAllServices')}}">{{trans('backend.cancel')}}</a>
                            </div>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
    @endsection
    @section('js')
    <script>
    $(".chosen-select").chosen({});
    $("#show").hide(); 
    $("#video").hide();  
    $('#single-prepend-text').on('change', function() {
       
        if ( this.value == '4')
      //.....................^.......
      {
        $("#show").show();
        $("#process").hide();
        $("input[type=radio][name=type1]").change(function() {
			$("#image").hide();
			$("#video").hide();

			if (this.value == "image") {
				$("#image").show();
			}

			if (this.value == "video") {
				$("#video").show();
			}
		});
      }
     else
    {
        $("#show").hide();
    }
   
    })
    </script>
@endsection