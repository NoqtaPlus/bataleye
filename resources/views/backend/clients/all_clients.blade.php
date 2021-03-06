@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
        <a style="margin: 5px;" class="btn blue" href="{{route('getAddClient')}}">
            <i class="fa fa-pencil"></i> {{trans('backend.addClient')}}
        </a>
            <!-- BEGIN EXAMPLE TABLE PORTLET-->
            <div class="portlet box green">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-globe"></i>{{trans('backend.allClients')}}</div>
                    <div class="tools"> </div>
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                        <thead>
                        <tr>
                            <th>{{trans('backend.clientName')}}</th>
                            <th>{{trans('backend.opinion')}}</th>
                            <th>{{trans('backend.country')}}</th>
                            <th>{{trans('backend.activation')}}</th>
                            <th>{{trans('backend.logo')}}</th>
                            <th width="1%">{{trans('backend.action')}}</th>
                            <th width="1%"></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($clients as $i=>$client)
                            <tr class="odd gradeX">
                                <td>{{$client->name}}</td>
                                <td>{{$client->opinion}}</td>           
                                <td>{{$client->country}}</td>
                                <td>{{($client->active)==1?trans('backend.active'):trans('backend.disactive')}}</td>
                                <td><img height="50" src="{{ASSETS}}/images/clients/{{$client->logo}}"></td>
                                <td>
                                <div class="clearfix">
                                    <a class="btn green btn-outline" href="{{route('getClientById',['clientId'=>$client->client_id])}}">
                                        {{trans('backend.update')}}
                                    </a>
                                </div>
                                </td>
                                <td>
                                <div class="clearfix">
                                    <form class="form-delete-c" method="post" onclick="return confirm('هل أنت  متأكد من  هذا الحذف')" action="{{route('deleteClientById',['clientId'=>$client->client_id])}}" action="{{route('deleteClientById',['clientId'=>$client->client_id])}}">
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