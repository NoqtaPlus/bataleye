@extends('backend.layouts.main_layout')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="portlet box yellow">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>{{trans('backend.addVideo')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('videoLandingUpload')}}" enctype="multipart/form-data">
					{{ csrf_field() }}
					<div class="form-body">
						<div class="form-group">
							<label class="control-label">{{trans('backend.video_title')}}</label>
							<input class="form-control" type="text" name="title" value="{{old('title')}}">
							@if($errors->has('title'))
								<span class="help-block">{{$errors->first('title')}}</span>
							@endif
						</div>
						<div class="form-group">
							<label class="control-label">{{trans('backend.video_description')}}</label>
							<textarea class="form-control" type="text" name="description">{{old('description')}}</textarea>
							@if($errors->has('description'))
								<span class="help-block">{{$errors->first('description')}}</span>
							@endif
						</div>
						<div class="form-group">
							<label class="control-label">{{trans('backend.video_type')}}</label>
							<div class="radio">
								<label><input type="radio" name="type" value="file" checked="checked">{{trans('backend.file')}}</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="type" value="youtube">{{trans('backend.youtube')}}</label>
							</div>
						</div>
						<div id="video-file" class="form-group">
							<label class="control-label">{{trans('backend.video')}}</label>
							<input class="form-control" type="file" name="video_file">
							@if($errors->has('video'))
								<span class="help-block">{{$errors->first('video')}}</span>
							@endif
                        </div>
                        <div id="video-thumb" class="form-group">
							<label class="control-label">{{trans('backend.video_thumbnail')}}</label>
							<input class="form-control" type="file" name="thumbnail">
							@if($errors->has('thumbnail'))
								<span class="help-block">{{$errors->first('thumbnail')}}</span>
							@endif
						</div>
						<div id="video-link" style="display:none;" class="form-group">
							<label class="control-label">{{trans('backend.video_link')}}</label>
							<input class="form-control" type="text" name="video_link">
							@if($errors->has('video'))
								<span class="help-block">{{$errors->first('video')}}</span>
							@endif
                        </div>
					</div>
					<input name="type_page" type="hidden" value="landing_page">
					<div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn blue" href="{{route('videosLandingIndex')}}">{{trans('backend.cancel')}}</a>
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
	$(document).ready(function() {
		$("input[type=radio][name=type]").change(function() {
			$("#video-link").hide();
			$("#video-thumb").hide();
			$("#video-file").hide();

			if (this.value == "file") {
				$("#video-file").show();
				$("#video-thumb").show();
			}

			if (this.value == "youtube") {
				$("#video-link").show();
			}
		});
	});
</script>
@endsection