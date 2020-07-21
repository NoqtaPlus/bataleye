@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('backend.updateUser')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                <?php $roles=\App\Repositories\RolesRepository::getAllRolesToUsers(); ?>
                <!-- BEGIN FORM-->
                    <form method="post" action="{{route('updateUserById',['userId'=>$user->id])}}">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.name')}}</label>
                                <input name="name" value="{{$user->name}}" type="text" class="form-control" placeholder="{{trans('backend.name')}}" >
                                @if($errors->has('name'))
                                    <span class="help-block">{{$errors->first('name')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.email')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                    <input name="email" value="{{$user->email}}" type="email" class="form-control" placeholder="{{trans('backend.email')}}" required> </div>
                                @if($errors->has('email'))
                                    <span class="help-block">{{$errors->first('email')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.permission')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <select name="role_id" id="single-prepend-text" class="form-control">
                                        @foreach($roles as $role)
                                            @if($user->role_id == $role->role_id)
                                                <option value="{{$role->role_id}}" selected>{{$role->role_name}}</option>
                                            @else
                                                <option value="{{$role->role_id}}">{{$role->role_name}}</option>
                                            @endif
                                        @endforeach
                                </select>
                            </div>
                            <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                            </form>
                            <input name="_method" type="hidden" value="PUT">
                        </div>
                        
                    <!-- END FORM-->
                </div>
            </div>
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