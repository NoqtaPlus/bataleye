@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('backend.add_ads')}}</div>
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
                    {!! Form::open(['route' => 'ads_management.store','method' => 'post','files' => true]) !!}
                        <div class="form-body">
                            <div class="form-group">
                                {!! form::label('image','رفع صوره الاعلان', ['class' => 'control-label']) !!}
                                {!! form::file('image',['id'=>'image'], ['class' => 'form-control']) !!}
                                @if($errors->has('image'))
                                    <span class="help-block">{{$errors->first('image')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                    {!! form::label('link','اضافه لينك الاعلان', ['class' => 'control-label']) !!}
                                    {!! form::text('link',old('link'),['id'=>'link','class'=>'form-control']) !!}
                                    @if($errors->has('link'))
                                        <span class="help-block">{{$errors->first('link')}}</span>
                                    @endif
                            </div>
                            <div class="form-group">
                                <select class="form-control" name="position_id">
                                    @foreach($positions as $value)
                                        <option value="{!! $value->id !!}">{{trans('ads.'.$value->slug)}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                {!! form::submit(trans('backend.save'),['class'=>'btn green']) !!}
                                <a class="btn blue" href="{{route('ads_management.index')}}">{{trans('backend.cancel')}}</a>
                            </div>
                        </div>
                    {!! Form::close() !!}
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
@endsection