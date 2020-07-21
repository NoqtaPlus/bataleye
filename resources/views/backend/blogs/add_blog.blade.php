@extends('backend.layouts.main_layout')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="portlet box yellow">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>{{trans('blog.add_news')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('postAddBlog')}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                        @include('backend.includes.check_language')
                            <div class="form-group">
                                <label for="single-prepend-text" class="control-label">{{trans('blog.blog_category')}}</label>
                                <div class="input-group select2-bootstrap-prepend">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button" data-select2-open="single-prepend-text">
                                            <span class="glyphicon glyphicon-search"></span>
                                        </button>
                                    </span>
                                    <select name="category_id" id="single-prepend-text" class="form-control select2">
                                        @foreach($categories as $i=>$category)
                                        <option value="{{$category->category_id}}">{{$category->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        @foreach (\Config::get('languages') as $locale=>$language) 
                        <div id="tap_{{$locale}}">
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.title',[''],$locale)}}</label>
                                <input name="title:{{$locale}}" value="{{old('title:'.$locale)}}" type="text" class="form-control" placeholder="{{trans('backend.title',[''],$locale)}}" >
                                @if($errors->has('title:{{$locale}}'))
                                    <span class="help-block">{{$errors->first('title:'.$locale)}}</span>
                                @endif
                            </div>

                            <div class="form-group">
                                <label class="control-label">{{trans('backend.short_description',[''],$locale)}}</label>
                                <textarea name="short_description:{{$locale}}" class="form-control" placeholder="{{trans('backend.short_description',[''],$locale)}}">{{old('short_description:'.$locale)}}</textarea>
                                @if($errors->has('short_description:{{$locale}}'))
                                    <span class="help-block">
                                    {{$errors->first('short_description'.$locale)}}
                                    </span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.long_description',[''],$locale)}}</label>
                                <textarea name="long_description:{{$locale}}" class="ckeditor" placeholder="{{trans('backend.long_description',[''],$locale)}}">{{old('long_description:'.$locale)}}</textarea>
                                @if($errors->has('long_description:{{$locale}}'))
                                    <span class="help-block">
                                    {{$errors->first('long_description'.$locale)}}
                                    </span>
                                @endif
                            </div>
                        </div>    

                        @endforeach

                            <div class="form-group">
                                <label class="control-label">{{trans('blog.keywards')}}</label>
                                <input name="keywards" value="{{old('keywards')}}" type="text" class="form-control"  placeholder="{{trans('blog.keywards')}}" >
                                @if($errors->has('keywards'))
                                    <span class="help-block">{{$errors->first('keywards')}}</span>
                                @endif
                            </div>

                            <div class="form-group">
                                <label class="control-label">{{trans('blog.active')}}</label>
                                <div class="input-group">
                                    <input type="checkbox" name="active" class="checkbox" value="1" checked>
                                </div>    
                                
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('blog.slider')}}</label>
                                <div class="input-group">
                                    <input type="checkbox" name="slider" class="checkbox" value="1">
                                </div>    
                                
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('blog.breaking')}}</label>
                                <div class="input-group">
                                    <input type="checkbox" name="breaking" class="checkbox" value="1">
                                </div>    
                                
                            </div>

                            <div class="form-group">
                                <label class="control-label">{{trans('blog.image')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-picture-o"></i>
                                    </span>
                                    <input name="image" type="file" class="form-control" >
                                    @if($errors->has('image'))
                                    <span class="help-block">{{$errors->first('image')}}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="single-prepend-text" class="control-label">{{trans('blog.used_tags')}}</label>
                                <div class="input-group select2-bootstrap-prepend">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button" data-select2-open="single-prepend-text">
                                            <span class="glyphicon glyphicon-search"></span>
                                        </button>
                                    </span>
                                    <select name="tag[]" multiple="multiple" id="single-prepend-text" class="form-control select2">
                                        <option value="">{{ trans('blog.select_tags') }}</option>
                                        @foreach($tags as $i=>$tag)
                                        <option value="{{$tag->id}}">{{$tag->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('blog.new_tags')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-leanpub"></i>
                                    </span>
                                    <input name="content:ar" value="" type="text" class="form-control" placeholder="{{trans('blog.new_tags')}}" >
                                </div>
                                <span class="help-block">{{ trans('blog.tags_help') }}</span>
                            </div>

                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn btn-danger" href="{{route('getAllBlogs')}}">{{trans('backend.cancel')}}</a>
                            </div>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
    @endsection