@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('backend.updaterole')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                <!-- BEGIN FORM-->
                    <form method="post" action="{{route('updateRoleById',['roleId'=>$role->role_id])}}">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.name')}}</label>
                                <input name="role_name" value="{{$role->role_name}}" type="text" class="form-control" placeholder="{{trans('backend.role_name')}}" >
                                @if($errors->has('role_name'))
                                    <span class="help-block">{{$errors->first('role_name')}}</span>
                                @endif
                            </div>
                                                        
                        </div>
                        
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>

    <div class="row">
    <div class="col-md-12">

        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe"></i>اختر الصلاحيات المناسبة المسموح بها لهذا العضو</div>
                    <div class="tools"> 
                    <input class="form-control" type="checkbox" onclick="toggle(this);" />تحديد الكل
                    </div>
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>الصلاحية</th>
                                <th>تعيين</th>
                                <th width="1%"></th>

                            </tr>
                        </thead>
                        <tbody>
                        @php
                        $items= \App\Entities\SidebarItems::all();
                        $items_access=unserialize($role->items_access);
                        @endphp
                        {{csrf_field()}}
                        
                        @foreach($items as $i=>$item)
                            <tr class="odd gradeX">
                                <td>{{$i+1}}</td>
                                <td>{{trans('backend.'.$item->name)}}</td>
                                @if(in_array($item->route, $items_access))
                                <td><input class="form-control" name="items_access[]" type="checkbox" value="{{$item->route}}" checked="checked"/></td>
                                @else
                                <td><input class="form-control" name="items_access[]" type="checkbox" value="{{$item->route}}"/></td>
                                @endif
                            </tr>
                        @endforeach
                        
                    </tbody>
                </table>
                <input type="hidden" name="_method" value="PUT">
                <button type="submit" class="btn green">{{trans('backend.update')}}</button>
                <a class="btn blue" href="{{route('getAllRoles')}}">{{trans('backend.cancel')}}</a>
                </form>
            </div>
        </div>
        <!-- END EXAMPLE TABLE PORTLET-->
    </div>
    </div>
@endsection

@section('js')
<script>
function toggle(source) {
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i] != source)
            checkboxes[i].checked = source.checked;
    }
}
</script>
@endsection