@extends('backend.layouts.main_layout')
@section('content')
<div class="row">
    <div class="col-md-12">
      
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe"></i>بطاقة جمهور</div>
                    <div class="tools">               
                    </div>
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover" id="example">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>{{trans('dataCard.fullname')}}</th>
                                <th>{{trans('dataCard.IdCard')}}</th>
                                <th>{{trans('dataCard.email')}}</th>
                                <th>{{trans('dataCard.phone')}}</th>
                                <th>{{trans('dataCard.homePhone')}}</th>
                                <th>{{trans('dataCard.address')}}</th>
                                <th width="1%">{{trans('backend.action')}}</th>
                                <th width="1%"></th>
                             
                            </tr>
                        </thead>
                        <tbody>
                             @foreach($datas as $i=>$data)
                            <tr class="odd gradeX">
                                <td>{{$i+1}}</td>
                                <td>{{$data->fullname}}</td>
                                <td>{{$data->IdCard}}</td>
                                <td>{{$data->email}}</td>
                                <td>{{$data->phone}}</td>
                                <td>{{$data->homePhone}}</td>
                                <td>{{$data->address}}</td>
                            <td>
                                <div class="clearfix">
                                    <a class="btn green btn-outline" href="{{route('data.show',['dataId'=>$data->id])}}">
                                    مشاهده البيانات
                                    </a>
                                </div>
                            </td> 
                            <td>
                                <div class="clearfix">
                                    {!! Form::open(['route' => ['data.destroy',$data->id],'method' => 'DELETE',
                                    'onclick'=>'return confirm("هل أنت متأكد من هذا الحذف")','class'=>'form-delete-c']) !!}
                                    {!! Form::submit(trans('backend.delete'), ['class' => 'btn red btn-outline']) !!}
                                    {!! Form::close() !!}

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
                'excel'
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
