@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('blog.update_news')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('updateBlogById',['blogId'=>$blog->id])}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                            
                            <div class="form-group">
                                <label class="control-label">اللغة</label>
                                <div class="radio">
                                    <label><input type="radio" name="type" value="ar"  checked="checked">العربية</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="type" value="en">English</label>
                                </div>
                            </div> 
                            <div class="form-group">
                                <label for="single-prepend-text" class="control-label">{{trans('blog.blog_category')}}</label>
                                <div class="input-group select2-bootstrap-prepend">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button" data-select2-open="single-prepend-text">
                                            <span class="glyphicon glyphicon-search"></span>
                                        </button>
                                    </span>
                                    <select name="category_id" id="single-prepend-text" class="form-control select2">
                                    <option value="{{$blog->category_id}}">
                                    {!! \App\Entities\BlogCategory::where('category_id',$blog->category_id)->first()['name'] !!}
                                    </option>
                                        @foreach($categories as $i=>$category)
                                        <option value="{{$category->category_id}}">{{$category->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div id="tap_ar">
                                <div class="form-group">
                                    <label class="control-label">{{trans('blog.title')}}</label>
                                    <input name="title:ar" value="{{ $blog->translate('ar')->title}}" type="text" class="form-control" placeholder="{{trans('blog.title:ar')}}" >
                                    @if($errors->has('title:ar'))
                                        <span class="help-block">{{$errors->first('title:ar')}}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label class="control-label">{{trans('blog.short_description')}}</label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-envelope"></i>
                                        </span>
                                        <textarea name="short_description:ar" class="form-control" placeholder="{{trans('blog.short_description')}}">{{ $blog->translate('ar')->short_description}}</textarea>
                                    </div>
                                    @if($errors->has('short_description:ar'))
                                        <span class="help-block">{{$errors->first('short_description:ar')}}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label class="control-label">{{trans('blog.long_description')}}</label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-envelope"></i>
                                        </span>
                                        <textarea name="long_description:ar" class="ckeditor" placeholder="{{trans('blog.long_description')}}">{{ $blog->translate('ar')->long_description}}</textarea>
                                    </div>
                                    @if($errors->has('long_description:ar'))
                                        <span class="help-block">{{$errors->first('long_description:ar')}}</span>
                                    @endif
                                </div>
                            </div>

                            <div id="tap_en">
                                <div class="form-group">
                                    <label class="control-label">Tittle</label>
                                    <input name="title:en" value="{{ $blog->translate('en')->title}}" type="text" class="form-control" placeholder="Tittle" >
                                    @if($errors->has('title:en'))
                                        <span class="help-block">{{$errors->first('title:en')}}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Short Description</label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-envelope"></i>
                                        </span>
                                        <textarea name="short_description:en" class="form-control" placeholder="Short Description">{{ $blog->translate('en')->short_description}}</textarea>
                                    </div>
                                    @if($errors->has('short_description:en'))
                                        <span class="help-block">{{$errors->first('short_description:en')}}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Long Description</label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-envelope"></i>
                                        </span>
                                        <textarea name="long_description:en" class="ckeditor" placeholder=">Long Description">{{ $blog->translate('en')->long_description}}</textarea>
                                    </div>
                                    @if($errors->has('long_description:en'))
                                        <span class="help-block">{{$errors->first('long_description:en')}}</span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label">{{trans('blog.keywards')}}</label>
                                <input name="keywards" value="{{$blog->keywards}}" type="text" class="form-control"  placeholder="{{trans('blog.keywards')}}" >
                                @if($errors->has('keywards'))
                                    <span class="help-block">{{$errors->first('keywards')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.active')}}</label>
                                <div class="input-group">
                                    @if($blog->active == 1)
                                    <input type="checkbox" name="active" class="checkbox" value="1" checked>
                                    @else
                                    <input type="checkbox" name="active" class="checkbox" value="1">
                                    @endif
                                </div>    
                                    
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.blog')}}</label>
                                <div class="input-group">
                                    @if($blog->blog == 1)
                                    <input type="checkbox" name="blog" class="checkbox" value="1" checked>
                                    @else
                                    <input type="checkbox" name="blog" class="checkbox" value="1">
                                    @endif
                                </div>    
                                    
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.breaking')}}</label>
                                <div class="input-group">
                                    @if($blog->breaking == 1)
                                    <input type="checkbox" name="breaking" class="checkbox" value="1" checked>
                                    @else
                                    <input type="checkbox" name="breaking" class="checkbox" value="1">
                                    @endif
                                </div>    
                                    
                            </div>
                            

                            <div class="form-group">
                                <label class="control-label">{{trans('backend.image')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-picture-o"></i>
                                    </span>
                                    <input name="image" type="file" class="form-control" >
                                    <img height="200" src="{{asset('/uploads/posts/images/'.$blog->image)}}" >
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
                                    <select multiple="multiple" name="tag[]" id="single-prepend-text" class="form-control select2">
                                        @foreach($tags as $k => $tag)
                                            @php $selected = ""; @endphp
                                            @foreach($blog->tags as $key => $blogTag)
                                                @if($tag->id == $blogTag->id)
                                                    @php $selected = "selected"; @endphp
                                                @endif
                                            @endforeach
                                            <option value="{{$tag->id}}" {{ $selected }}>{{$tag->name}}</option>
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
                                    <input name="content:ar" value="{{ $blog->translate('ar')->content}}" type="text" class="form-control" placeholder="{{trans('blog.new_tags')}}" >
                                </div>
                                <span class="help-block">{{ trans('blog.tags_help') }}</span>
                            </div>
                            
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn blue" href="{{route('getAllBlogs')}}">{{trans('backend.cancel')}}</a>
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