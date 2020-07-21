@extends('backend.layouts.main_layout')
@section('content')
<div class="row">
    <div class="col-md-12">
       
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe">  {{trans('backend.all_Joinus')}}</i></div>
                    <div class="tools"> </div>
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>{{trans('backend.title')}}</th>
                                <th>{{trans('backend.description')}}</th>
                                <th width="1%">{{trans('backend.action')}}</th>
                                <th width="1%"></th>
                            </tr>
                        </thead>
                        <tbody>
                       
                            @foreach($Joinus as $i=>$Join)
                            <tr class="odd gradeX">
                            <td>{{$i+1}}</td>
                            <td>{{$Join->title}}</td>
                                <td>{{$Join->description}}</td>
                        
                                <td>
                                <div class="clearfix">
                                    <a class="btn green btn-outline" href="{{route('getJoinusById',['JoinusId'=>$Join->id])}}">
                                        {{trans('backend.update')}}
                                    </a>
                                </div>
                                </td>
                                <td>
                                <a href="javascript:;" class="btn default disabled"> {{trans('backend.delete')}} </a>
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