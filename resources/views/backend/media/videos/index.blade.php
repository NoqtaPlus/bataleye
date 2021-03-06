@extends('backend.layouts.main_layout')
@section('content')
<div class="row">
	<div class="col-md-12">
		<a style="margin: 5px;" class="btn blue" href="{{route('addVideo')}}">
			<i class="fa fa-pencil"></i> {{trans('backend.upload_video_title')}}
		</a>
		<div class="portlet box green">
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-cogs"></i>{{trans('backend.videos')}}
				</div>
				<div class="tools">
					<a href="javascript:;" class="collapse"> </a>
					<a href="#portlet-config" data-toggle="modal" class="config"> </a>
					<a href="javascript:;" class="reload"> </a>
					<a href="javascript:;" class="remove"> </a>
				</div>
				</div>
				<div class="portlet-body flip-scroll">
					<table class="table table-bordered table-striped table-condensed flip-content" id="sample_2">
						<thead class="flip-content">
							<tr>
								<th>{{trans('backend.video_thumbnail')}}</th>
								<th>{{trans('backend.video_title')}}</th>
								<th>{{trans('backend.video_description')}}</th>
								<th width="100">{{trans('backend.video')}}</th>
								<th width="1%">{{trans('backend.action')}}</th>
								<th width="1%"></th>
							</tr>
						</thead>
						<tbody>
							@foreach($videos as $i=>$video)
							<tr>
								<td><img width="100" src="{{route('getVideoThumb', ['id' => $video->id])}}"></td>
								<td>{{$video->title}}</td>
								<td>{{$video->description}}</td>
								<td>
                                <div class="clearfix">
                                    <a class="btn green btn-outline" href="{{route('getVideo',['id'=>$video->id])}}">
                                        {{trans('backend.update')}}
                                    </a>
                                </div>
                                </td>
                                <td>
                                <div class="clearfix">
                                    <form class="form-delete-c" method="post" onclick="return confirm('<?php echo trans('backend.confirmDelete');?>')" action="{{route('deleteVideo',['id'=>$video->id])}}">
                                        {{ csrf_field() }}
                                        <button type="submit" class="btn red btn-outline">{{trans('backend.delete')}}
                                        </button>
                                    </form>
                                </div>
                                </td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	@endsection
@section('js')
<script src="{{ASSETS}}/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<script src="{{ASSETS}}/pages/scripts/table-datatables-colreorder.min.js" type="text/javascript"></script>
@endsection
@section('css')
<link href="{{ASSETS}}/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
<link href="{{ASSETS}}/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap-rtl.css" rel="stylesheet" type="text/css" />
@endsection