
@extends('backend.layouts.main_layout')
@section('content')
<form action="{{route('backendLanguage')}}">
{{csrf_field()}}
<div class="row">
    <div class="col-md-12">
            <input type="submit" class="btn blue"  value="{{trans('backend.save')}}">
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe"></i>{{trans('backend.allUsers')}}</div>
                    <div class="tools"> </div>
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>{{trans('backend.lang')}}</th>
                                <th>{{trans('backend.word')}}</th>
                                <th>{{trans('backend.translation')}}</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($translations as $i=>$trans)
                            <tr class="odd gradeX">
                                <td>{{$i+1}}</td>
                                <td>{{$trans->lang}}</td>
                                <td>{{$trans->word}}</td>
                                <td width="50%"><input name="translation[]" class="form-control" type="text" value="{{$trans->translation}}"> </td>
                                <input name="id[]" type="hidden" value="{{$trans->id}}">
                                <td style="display:none">{{$trans->translation}}</td>
                        </tr>
                        @endforeach
                        
                        </tbody>

                    
                </table>

            </div>
        </div>
        <!-- END EXAMPLE TABLE PORTLET-->
    </div>

</div>
<input name="_method" type="hidden" value="PUT">
</form>
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