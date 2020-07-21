@extends('backend.layouts.main_layout')
@section('content')
<div class="row">
    <div class="col-md-12">
   
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe"></i>{{trans('blog.all_comments')}}</div>
                    <div class="tools">               
                    </div>
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>{{trans('blog.name')}}</th>
                                <th>{{trans('blog.email')}}</th>
                                <th>{{trans('blog.comment')}}</th>
                                <th>{{trans('backend.activation')}}</th>
                                <th width="1%">{{trans('backend.action')}}</th>
                                <th width="1%"></th>

                            </tr>
                        </thead>
                        <tbody>
                            @foreach($comments as $i=>$comment)
                            <tr class="odd gradeX">
                                <td>{{$i+1}}</td>
                                <td>{{$comment->name}}</td>
                                <td>{{$comment->email}}</td>
                                <td>{{$comment->comment}}</td>
                                <td>{{($comment->active)==1?trans('backend.active'):trans('backend.disactive')}}</td>
                        
                                 <td>
                                <div class="clearfix">
                                    <form class="form-delete-c" method="post" onclick="return confirm('<?php echo trans('backend.confirmDelete');?>')" action="{{route('deleteCommentsById',['id'=>$comment->id, 'blogId' => $comment->post->id])}}">
                                        {{ csrf_field() }}
                                        <input type="hidden" name="_method" value="delete">
                                        <button type="submit" class="btn red btn-outline">{{trans('backend.delete')}}
                                        </button>
                                    </form>
                                </div>  
                                </td>
                                <td>
                                <div class="clearfix">    
                                <form method="post" action="{{route('activateCommentById',['comment_id'=>$comment->id, 'blogId' => $comment->post->id])}}" class="form-delete-c">
                                    {{ csrf_field() }}
                                    <input class="btn btn-success" type="submit" value="{{($comment->active)!=1?trans('backend.activate'):trans('backend.disactivate')}}">    
                                   
                                </td>
                                </form>
                                </div>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END EXAMPLE TABLE PORTLET-->
    </div>
</div>
@endsection
@section('js')
<script src="{{ASSETS}}/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<script src="{{ASSETS}}/pages/scripts/table-datatables-colreorder.min.js" type="text/javascript"></script>
@endsection
@section('css')
<link href="{{ASSETS}}/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
<link href="{{ASSETS}}/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap-rtl.css" rel="stylesheet" type="text/css" />
@endsection