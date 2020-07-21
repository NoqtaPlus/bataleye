@extends('backend.layouts.main_layout')
@section('content')
<div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">{{ \App\Http\Controllers\HomeController::translateWord('Message')}}</h4>
            </div>
            <div class="modal-body">
              {{Session::get('sucess')}}
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">{{ \App\Http\Controllers\HomeController::translateWord('Close')}}</button>
            </div>
          </div>
          
        </div>
      </div>
    <script>
      
      var exist = '{{Session::has('sucess')}}';
      if(exist){
        $('#myModal').modal('show');
         setTimeout(function () {
       $('#myModal').modal('hide');
    }, 4000); 
      }
        </script>
<div class="row">
    <div class="col-md-12">
        <a style="margin: 5px;" class="btn blue" href="{{route('getAddMeta')}}">
            <i class="fa fa-pencil"></i> {{trans('meta.add_meta')}}
        </a>
        <form  method="post"  action="{{route('deleteAllMeta')}}">
          {{ csrf_field() }}
         <input type="hidden" id="ids" name="ids">
         <button type="submit" class="btn red "id="button"><i class="fa fa-pencil"></i>{{trans('backend.delete_all')}}
         </button>
         </form>
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe">  {{trans('meta.all_meta')}}</i></div>
                    <div class="tools"> </div>
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                        <thead>
                            <tr>
                            <th ><input type="checkbox" id="select"></th>
                                <th>#</th>
                                <th>{{trans('meta.title')}}</th>
                                <th>{{trans('meta.Description')}}</th>
                                <th>{{trans('meta.keywords')}}</th>
                                <th>{{trans('meta.MetaType')}}</th>
                               
                                <th width="1%">{{trans('backend.action')}}</th>
                            <th width="1%"></th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($meta as $i=>$me)
                            <tr class="odd gradeX" >
                            <td><input type="checkbox" class="selectitem" data-id="{{$me->id}}"></td>
                                <td>{{$i+1}}</td>
                                <td>{{$me->title}}</td>
                                <td>{!! html_entity_decode( $me->description) !!}</td>
                                <td>{!! html_entity_decode( $me->keywords) !!}</td>
                                <td>@if($me->Link!=null){{$me->Link->title}}@endif</td>
                                <td>
                                <div class="clearfix">
                                    <a class="btn green btn-outline" href="{{route('getMetaById',['metaId'=>$me->id])}}">
                                        {{trans('backend.update')}}
                                    </a>
                                </div>
                                </td>
                                <td>
                                <div class="clearfix">
                                    <form class="form-delete-c" method="post" onclick="return confirm('<?php echo trans('backend.confirmDelete');?>')" action="{{route('deleteMetaById',['metaId'=>$me->id])}}">
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
        <!-- END EXAMPLE TABLE PORTLET-->
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