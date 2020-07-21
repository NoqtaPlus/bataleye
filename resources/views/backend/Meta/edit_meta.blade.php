@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('meta.edit_meta')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('updateMetaById',['metaId'=>$meta->id])}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                            @include('backend.includes.check_language')
                            @foreach (\Config::get('languages') as $locale=>$language) 
                            <div id="tap_{{$locale}}">
                                <div class="form-group">
                                    <label class="control-label">{{trans('meta.title',[''],$locale)}}</label>
                                    <input name="title:{{$locale}}" value="{{ $meta->translate($locale)->title}}" type="text" class="form-control" placeholder="{{trans('meta.title',[''],$locale)}}"required >
                                    @if($errors->has('title:{{$locale}}'))
                                        <span class="help-block">{{$errors->first('title:'.$locale)}}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label class="control-label">{{trans('meta.description',[''],$locale)}}</label>
                                    <textarea name="description:{{$locale}}" class="form-control" placeholder="{{trans('meta.description',[''],$locale)}}"required>{!! html_entity_decode( $meta->translate($locale)->description) !!}</textarea>
                                    @if($errors->has('description:{{$locale}}'))
                                        <span class="help-block">
                                        {{$errors->first('description'.$locale)}}
                                        </span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label class="control-label">{{trans('meta.keywords',[''],$locale)}}</label>
                                    <textarea name="keywords:{{$locale}}" class="form-control" placeholder="{{trans('meta.keywords',[''],$locale)}}"required>{!! html_entity_decode( $meta->translate($locale)->keywords	) !!}</textarea>
                                    @if($errors->has('keywords:{{$locale}}'))
                                        <span class="help-block">
                                        {{$errors->first('keywords'.$locale)}}
                                        </span>
                                    @endif
                                </div>
                                                                                                                   
                            </div>    
    
                            @endforeach                    
                            <div class="form-group">
                                <label class="control-label">{{trans('meta.type')}}</label>
                                <select name="link_id"  class="form-control"required>
                                    <option value="">{{ "please_select" }}</option>
                                    @foreach($links as $link)                          
                                      <option value="{{ $link->link_id }}"{{ $selectedlink == $link->link_id ? 'selected="selected"' : '' }}> {{ $link->title }} </option>
                                    @endforeach
                                  </select>
                            </div>
                     
                        <div class="form-group">
                            <label class="control-label">{{trans('meta.content')}}</label>
                            <select name="content_id"  class="form-control"required>
                                <option value="">{{ "please_select" }}</option>
                                @foreach($contents as $content)                          
                                  <option value="{{ $content->id }}"{{ $selectedcontent == $content->id ? 'selected="selected"' : '' }}> {{ $content->name }} </option>
                                @endforeach
                              </select>
                        </div>
                       
                        <div class="form-group">
                            <label class="control-label">{{trans('meta.language')}}</label>        
                            <select name="lang_id"  class="form-control"required>
                                <option value="">{{ "please_select" }}</option>
                                @foreach($items as $item)                          
                                  <option value="{{ $item->id }}"{{ $selecteditem == $item->id ? 'selected="selected"' : '' }}>{{ $item->name }}</option>
                                @endforeach
                              </select>
                        </div>
                                    
                        </div>
                        
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn btn-danger" href="{{route('getAllMeta')}}">{{trans('backend.cancel')}}</a>
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