@extends('backend.layouts.main_layout')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="portlet box yellow">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>{{trans('backend.editAlbum')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('updateImage',['id'=>$image->id])}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.albumTitle')}}</label>
                                <input name="album_title" value="{{$image->album_title}}" type="text" class="form-control" placeholder="{{trans('backend.albumTitle')}}" >
                                @if($errors->has('album_title'))
                                <span class="help-block">{{$errors->first('album_title')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.imageTitle')}}</label>
                                <input name="image_title" value="{{isset($image->image_title) ? $image->image_title : $image->album_title}}" type="text" class="form-control" placeholder="{{trans('backend.imageTitle')}}" >
                                @if($errors->has('image_title'))
                                    <span class="help-block">{{$errors->first('image_title')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.images')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <input class="form-control" type="file" name="images[]" multiple>
                                    @if($errors->has('image'))
                                    <span class="help-block">{{$errors->first('uploadNewImage')}}</span>
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn blue" href="{{route('imagesIndex')}}">{{trans('backend.cancel')}}</a>
                            </div>
                        </div>
                        <input type="hidden" name="_method" value="PUT">
                    </form>
                    <div class="album">
                        <label class="control-label">{{trans('backend.storedImages')}}</label>
                        <div class="row">
                            @foreach($images as $index => $i)
                            <div class="col-sm-6 col-md-3">
                                <a class="thumbnail">
                                    <img src="{{route('getAlbumImage',['id'=>$image->id,'index'=>$index])}}" style="height: 180px; width: 100%; display: block;">
                                </a>
                                <form class="form-delete-c" method="post" onclick="return confirm('<?php echo trans('backend.confirmDelete');?>')" action="{{route('deleteSingleImage',['id'=>$image->id, 'name'=>$i])}}">
                                    {{ csrf_field() }}
                                    <button type="submit" class="btn red">{{trans('backend.delete')}}
                                    </button>
                                </form>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
    <style>
        .album{padding:0 15px;}
        .album .col-md-3{position: relative;}
        .album .form-delete-c{
            position: absolute;
            top:50%;
            left:50%;
            transform:translateX(-50%) translateY(-50%);
        }
    </style>
    @endsection