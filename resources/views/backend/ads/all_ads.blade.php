
    @extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <a style="margin: 5px;" class="btn blue" href="{{route('ads_management.create')}}">
                <i class="fa fa-pencil"></i> {{trans('backend.add_ads')}}
            </a>
            <!-- BEGIN EXAMPLE TABLE PORTLET-->
            <div class="portlet box green">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-globe"></i>{{trans('backend.add_ads')}}</div>
                    <div class="tools"> </div>
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>{{trans('backend.image')}}</th>
                            <th>{{trans('backend.link')}}</th>
                            <th>{{ trans('backend.positions') }}</th>
                            <th width="1%">{{trans('backend.action')}}</th>
                            <th width="1%"></th>

                        </tr>
                        </thead>
                        <tbody>
                        @foreach($ads as $i=> $ad)
                            <tr class="odd gradeX">
                                <td>{{$i+1}}</td>
                                <td>
                                    {{ Html::image("admin/backend-ads/$ad->id/image", "",['class' => 'img-rounded', "style = width:150px;height:150px;margin-top:5px"]) }}

                                </td>
                                <td>{{ $ad->link }}</td>
                                <td>{{trans('ads.'. $ad->position->slug) }}</td>
                               
                                <td>
                                    <div class="clearfix">
                                        <a class="btn green btn-outline" href="{{route('ads_management.edit',['id'=>$ad->id])}}">
                                            {{trans('backend.update')}}
                                        </a>
                                    </div>
                                </td>
                                <td>
                                    <div class="clearfix">
                                        {!! Form::open(['route' => ['ads_management.destroy',$ad->id],'method' => 'DELETE',
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
    <script src="{{ASSETS}}/pages/scripts/table-datatables-colreorder.min.js" type="text/javascript"></script>
@endsection
@section('css')
    <link href="{{ASSETS}}/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
    <link href="{{ASSETS}}/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap-rtl.css" rel="stylesheet" type="text/css" />
@endsection
