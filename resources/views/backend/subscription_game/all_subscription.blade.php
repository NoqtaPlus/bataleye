@extends('backend.layouts.main_layout')
@section('content')
<div class="row">
    <div class="col-md-12">
   
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe"></i>{{trans('subscription.all_subscription')}}</div>
                    <div class="tools">               
                    </div>
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover" id="example">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>{{trans('subscription.name')}}</th>
                                <th>{{trans('subscription.email')}}</th>
                                <th>{{trans('subscription.membership_no')}}</th>
                                <th>{{trans('subscription.phone')}}</th>
                                <th>{{trans('subscription.category')}}</th>
                                <th>{{trans('subscription.age')}}</th>
                                <th>{{trans('subscription.time')}}</th>
                               <th width="1%">{{trans('backend.action')}}</th>
                              <!--  <th width="1%"></th> -->

                            </tr>
                        </thead>
                        <tbody>
                            @foreach($subscription as $i=>$subscriptions)
                            <tr class="odd gradeX">
                                <td>{{$i+1}}</td>
                                <td>{{$subscriptions->fullname}}</td>
                                <td>{{$subscriptions->email}}</td>
                                <td>{{$subscriptions->membership_no}}</td>
                                <td>{{$subscriptions->phone}}</td>
                                <td>{{$subscriptions->category}}</td>
                                <td>{{$subscriptions->age}}</td>
                                <td>{{$subscriptions->time}}</td>

                                 <td>
                                <div class="clearfix">
                                    <form class="form-delete-c" method="post" onclick="return confirm('<?php echo trans('backend.confirmDelete');?>')" action="{{route('deleteSubscriptionGameById',['id'=>$subscriptions->id])}}">
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
<script>
    $(document).ready(function() {
       $('#example').DataTable( {
           dom: 'Bfrtip',
           buttons: [
               'copy', 'csv', 'excel', 'pdf', 'print'
           ]
       });
    });
</script>
<script src="{{ASSETS}}/pages/scripts/table-datatables-colreorder.min.js" type="text/javascript"></script>
@endsection
@section('css')
<link href="{{ASSETS}}/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
<link href="{{ASSETS}}/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap-rtl.css" rel="stylesheet" type="text/css" />
@endsection