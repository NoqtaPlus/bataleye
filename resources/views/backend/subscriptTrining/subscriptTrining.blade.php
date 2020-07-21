@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('backend.updateSubscriptionTrainingTime')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                <!-- BEGIN FORM-->
                    <form method="post" action="{{route('updateSubscriptionTrainingTimeById',['subscriptId'=>$subscript->id])}}" enctype = "multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label for="single-prepend-text" class="control-label">{{trans('blog.blog_category')}}</label>
                                <div class="input-group select2-bootstrap-prepend">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button" data-select2-open="single-prepend-text">
                                            <span class="glyphicon glyphicon-search"></span>
                                        </button>
                                    </span>
                                    <select name="category" id="single-prepend-text" class="form-control select2">
                                    <option value="{{$subscript->category}}">
                                    {!! \App\Entities\BlogCategory::where('name',$subscript->category)->first()['category'] !!}
                                    </option>
                                        @foreach($categories as $i=>$category)
                                        <option value="{{$category->name}}">{{$category->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                             </div>
                             <div class="form-group">
                                <label class="control-label">{{trans('blog.long_description')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                    <textarea name="desc" class="ckeditor" placeholder="{{trans('blog.long_description')}}" required>{{$subscript->desc}}</textarea> 
                                    </div>
                                    @if($errors->has('desc'))
                                        <span class="help-block">{{$errors->first('desc')}}</span>
                                    @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.price')}}</label>
                                <input name="price" value="{{$subscript->price}}" type="text" class="form-control" placeholder="{{trans('backend.price')}}" >
                                @if($errors->has('price'))
                                <span class="help-block">{{$errors->first('price')}}</span>
                                @endif
                            </div>
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.update')}}</button>
                                <a class="btn blue" href="{{route('getAllSubscriptionTrainingTime')}}">{{trans('backend.cancel')}}</a>
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