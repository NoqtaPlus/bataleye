@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i> {{trans('backend.updateClient').' '.$client->name}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                <!-- BEGIN FORM-->
                    <form method="post" action="{{route('updateClientById',['clientId'=>$client->client_id])}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.clientName')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <input name="name" value="{{$client->name}}" type="text" class="form-control" placeholder="{{trans('backend.clientName')}}" required> </div>
                                    @if($errors->has('name'))
                                        <span class="help-block">{{$errors->first('name')}}</span>
                                    @endif
                            </div>
                        
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.country')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                    <input name="country" value="{{$client->country}}" type="text" class="form-control" placeholder="{{trans('backend.country')}}" required>
                                </div>
                                    @if($errors->has('country'))
                                        <span class="help-block">{{$errors->first('country')}}</span>
                                    @endif
                            </div>
                           
                   

                            <div class="form-group">
                                <label class="control-label">{{trans('backend.opinion')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-pencil-square-o"></i>
                                    </span>
                                    <textarea  name="opinion" placeholder="{{trans('backend.opinion')}}" class="form-control" >{{$client->opinion}}</textarea>
                                    @if($errors->has('opinion'))
                                        <span class="help-block">{{$errors->first('opinion')}}
                                        </span>
                                    @endif
                            </div>

                            <div class="form-group">
                                <label class="control-label">{{trans('backend.active')}}</label>
                                <div class="input-group">
                                    @if($client->active==1)
                                    <input type="checkbox" name="active" class="checkbox" value="1" checked="">
                                    @else
                                    <input type="checkbox" name="active" class="checkbox" value="1">
                                    @endif
                                </div>    
                                    
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.logo')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-picture-o"></i>
                                    </span>
                                    <input name="logo" type="file" class="form-control" >
                                    
                                    @if($errors->has('logo'))
                                        <span class="help-block">{{$errors->first('logo')}}</span>
                                    @endif
                                </div>
                                <img height="70" src="{{ASSETS}}/images/clients/{{$client->logo}}">
                            </div>
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn blue" href="{{route('getAllClients')}}">{{trans('backend.cancel')}}</a>
                            </div>
                            <input type="hidden" name="_method" value="PUT">
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
@endsection