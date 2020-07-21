@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('backend.updateBlogCategory')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('updateBlogCategoryById',['categoryId'=>$category->category_id])}}">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label">{{trans('blog.name')}}</label>
                                <input name="name" value="{{$category->name}}" type="text" class="form-control" placeholder="{{trans('blog.name')}}" >
                                @if($errors->has('name'))
                                    <span class="help-block">{{$errors->first('name')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('blog.description')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                    <textarea name="description" class="form-control" placeholder="{{trans('blog.description')}}" required>{{$category->description}}</textarea> 
                                    </div>
                                    @if($errors->has('description'))
                                        <span class="help-block">{{$errors->first('description')}}</span>
                                    @endif
                            </div>
                            
                            <div class="form-group">
                                <label for="single-prepend-text" class="control-label">{{trans('blog.parent_category')}}</label>
                                <div class="input-group select2-bootstrap-prepend">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button" data-select2-open="single-prepend-text">
                                            <span class="glyphicon glyphicon-search"></span>
                                        </button>
                                    </span>
                                    <select name="parent_id" id="single-prepend-text" class="form-control select2">
                                        <option value="">
                                        @foreach($categories as $i => $c)
                                        @if($c->blog_category_id != $category->blog_category_id)
                                        <option value="{{$c->blog_category_id}}" @if($c->blog_category_id === $category->parent_id) selected="selected" @endif>{{$c->name}}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                </div>
                                @if($errors->has('parent_id'))
                                    <span class="help-block">{{$errors->first('parent_id')}}</span>
                                @endif
                            </div>
                            
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn btn-danger" href="{{route('getAllBlogCategories')}}">{{trans('backend.cancel')}}</a>
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