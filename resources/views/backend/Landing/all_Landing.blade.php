@extends('backend.layouts.main_layout')
@section('content')
<div class="row">
    <div class="col-md-12">
        
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe">  صفحه التسويق</i></div>
                    <div class="tools"> </div>
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>{{trans('service.name')}}</th>
                                <th width="30%">{{trans('service.short_description')}}</th>
                                <th>{{trans('service.image')}}</th>                           
                                <th width="1%">{{trans('backend.action')}}</th>
                                <th width="1%"></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($Landing as $i=>$item)
                            <tr class="odd gradeX">
                                <td>{{$i+1}}</td>
                                <td>{{$item->name}}</td>
                                <td>{{$item->short_description}}</td>
                                <td><img height="70" src="{{UPLOADS}}/services/{{$item->image}}"></td>
                               <td>
                                <div class="clearfix">
                                    <a class="btn green btn-outline" href="{{route('getLandingById',['LandingId'=>$item->id])}}">
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