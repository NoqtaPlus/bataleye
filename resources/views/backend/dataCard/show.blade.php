@extends('backend.layouts.main_layout')
@section('content')
<div class="row">
    <div class="col-md-12">
       
        </a>
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe"></i>بيانات العضو</div>
                    <div class="tools"> </div>
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover" id="example">
                    <thead>
                        <th >بيانات العضو</th>
                        <th ></th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>الاسم</td>
                            <td>{{$data->fullname}}</td>
                        </tr>
                        <tr>
                            <td> حالة العضو</td>
                            @if($data->active == 1)
                              <td >عضو بالنادى</td>
                            @else
                              <td >غير عضو بالنادى</td>
                            @endif
                        </tr>
                        @if($data->active == 1)
                        <tr>
                            <td class="col-xs-3"> رقم العضوية</td>
                            <td class="col-xs-9"> {{$data->MemberID}}</td>
                        </tr>
                        @endif
                        <tr>
                            <td>البريد الالكترونى</td>
                            <td> {{$data->email}}</td>
                        </tr>
                        <tr>
                            <td>العنوان بالكامل</td>
                            <td>{{$data->allData}}</td>
                        </tr>
                        <tr>
                            <td>رقم القومى</td>
                            <td>{{$data->IdCard}}</td>
                        </tr>  
                        <tr>
                            <td>رقم الهاتف</td>
                            <td>{{$data->phone}}</td>
                        </tr>
                        <tr>
                            <td>رقم الهاتف الارضى</td>
                            <td>{{$data->homePhone}}</td>
                        </tr>
                        <tr>
                            <td>اسم المدينة</td>
                            <td>{{$data->cites->name}}</td>
                        </tr>
                        <tr>
                            <td> الصوره الشخصية</td>
                            <td><img style="max-height: 150px; width: auto;" src="<?=url('public/assets/images/dataCard/'.$data->personalPhoto.'')?>"></td>
                        </tr>
                        <tr>
                            <td>صوره تاريخ الميلاد</td>
                            <td><img style="max-height: 150px; width: auto;" src="<?=url('public/assets/images/dataCard/'.$data->photoBirthday.'')?>"></td>
                        </tr>
                        <tr>
                        <td>صوره الرقم القومى</td>
                            <td><img style="max-height: 150px; width: auto;" src="<?=url('public/assets/images/dataCard/'.$data->IdCardphoto.'')?>"></td>
                        </tr>
                        <tr>
                        <tr>
                            <td>صوره بطاقة العضوية</td>
                            @if($data->active == 1)

                                <td><img style="max-height: 150px; width: auto;" src="<?=url('public/assets/images/dataCard/'.$data->Membershipphoto.'')?>"></td>
                         @else
                        <td> غير عضو بالنادى</td>

                       @endif
                        </tr>
                                  
                    </tbody>
                </table>
     <div class="form-actions">
        <div class="btn-set pull-left">
            <a class="btn btn-primary" href="{{route('getAllData')}}">الرجوع لخلف</a>
            <a class="btn btn-primary " href="{{route('pdfData',['dataId'=>$data->id])}}"> طبع البيانات الشخصية</a>
            <a class="btn btn-primary " href="{{route('pdfDataPersonalphoto',['dataId'=>$data->id])}}"> طبع الصوره الشخصيه</a>
            <a class="btn btn-primary " href="{{route('pdfBarthdayPhoto',['dataId'=>$data->id])}}"> طبع شهاده الميلاد</a>
            <a class="btn btn-primary " href="{{route('pdfDataIdPhoto',['dataId'=>$data->id])}}"> طبع صوره الرقم القومى </a>
            <a class="btn btn-primary " href="{{route('pdfMemberPhoto',['dataId'=>$data->id])}}"> طبع صوره بطاقة العضوية </a>
            <a class="btn btn-primary " href="{{route('pdfAllData',['dataId'=>$data->id])}}">كل البيانات </a>

       </div>
  </div>
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