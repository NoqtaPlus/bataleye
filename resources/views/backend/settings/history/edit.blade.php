@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('setting.editHistory')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="POST" action="{{route('updateHistory')}}">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.pageContent')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                    <textarea name="content" class="ckeditor" placeholder="{{trans('blog.long_description')}}" required>{{$content->content}}</textarea> 
                                </div>
                                @if($errors->has('content'))
                                    <span class="help-block">{{$errors->first('content')}}</span>
                                @endif
                            </div>
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn blue" href="{{route('getAllUsers')}}">{{trans('backend.cancel')}}</a>
                            </div>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>

            <a style="margin: 5px;" data-toggle="modal" class="btn blue" href="#basic">
                <i class="fa fa-pencil"></i> {{trans("setting.addNewYear")}}
            </a>
            <div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">{{trans("setting.addNewYear")}}</h4>
                        </div>
                        <form action="{{route('storeYear')}}" method="POST">
                            {{ csrf_field() }}
                            <div class="modal-body">
                                <div class="form-body">
                                    <div class="form-group">
                                        <label class="control-label">{{trans('setting.year')}}</label>
                                        <input name="year" type="number" class="form-control" placeholder="{{trans('setting.year')}}" required>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">{{trans('setting.content')}}</label>
                                        <textarea name="content" class="form-control" placeholder="{{trans('setting.content')}}" required></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn dark btn-outline" data-dismiss="modal">{{trans('backend.cancel')}}</button>
                                <input type="submit" class="btn green" value="{{trans('backend.save')}}" />
                            </div>
                        </form>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <div class="modal fade" id="edit" role="basic" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <img src="{{ASSETS}}/global/img/loading-spinner-grey.gif" alt="" class="loading">
                            <span> &nbsp;&nbsp;Loading... </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-cogs"></i>{{trans('setting.years')}}
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
                                <th>{{trans('setting.year')}}</th>
                                <th>{{trans('setting.content')}}</th>
                                <th width="1%">{{trans('backend.action')}}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($history as $i=>$video)
                            <tr>
                                <td>{{$video->year}}</td>
                                <td>{{$video->content}}</td>
                                <td>
                                <div class="clearfix">
                                    <a class="btn green btn-outline year-edit" data-id="{{$video->id}}">
                                        {{trans('backend.update')}}
                                    </a>
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
<script>
$(document).on("click", ".year-edit", function() {
    $('#edit').modal();
    $.ajax({
        url: "{{url('/admin/api/history/')}}/" + $(this).data("id") + "/edit",
        type: "GET",
        dataType: "json",
        headers: {
            "Accept": "application/json"
        },
        error: function (response) {
            console.log(response);
            $('#loading #fountainG').remove();
            $('#alert').html('<div class="alert danger">'+response.responseJSON.message+'</div>');
        },
        success: function (response) {
            $('#edit .modal-content').html(`
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">{{trans("setting.editYear")}}</h4>
            </div>
            <form action="{{url('/admin/api/history/')}}/${response.id}/update" method="POST">
                {{ csrf_field() }}
                <input type="hidden" name="_method" value="PUT">
                <div class="modal-body">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label">{{trans('setting.year')}}</label>
                            <input name="year" type="number" class="form-control" placeholder="{{trans('setting.year')}}" value="${response.year}" required>
                        </div>
                        <div class="form-group">
                            <label class="control-label">{{trans('setting.content')}}</label>
                            <textarea name="content" class="form-control" placeholder="{{trans('setting.content')}}" required>${response.content}</textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn dark btn-outline" data-dismiss="modal">{{trans('backend.cancel')}}</button>
                    <input type="submit" class="btn green" value="{{trans('backend.save')}}" />
                </div>
            </form>
            `);
        }
    });
});
</script>
@endsection
@section('css')
<link href="{{ASSETS}}/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
<link href="{{ASSETS}}/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap-rtl.css" rel="stylesheet" type="text/css" />
@endsection