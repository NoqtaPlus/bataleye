@extends('backend.layouts.main_layout')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>{{trans('backend.updatePerson')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                <!-- BEGIN FORM-->
                    <form method="post" action="{{route('updatePersonById',['personId'=>$person->id])}}" enctype = "multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                        <div class="form-group">
                                    <label class="control-label">{{ \App\Http\Controllers\HomeController::translateWord('person_type')}}</label>        
                                    <select name="person_type_id" onchange="report(this.value)" class="form-control "  required>
                                        <option value="">{{ \App\Http\Controllers\HomeController::translateWord('please_select')}}</option>
                                        @foreach($types as $type)                          
                                          <option value="{{ $type->id }}"{{ $selectedtype == $type->id ? 'selected="selected"' : '' }}>{{ $type->name }}</option>
                                        @endforeach
                                      </select>
                                </div>  
                        @include('backend.includes.check_language')
                        @foreach (\Config::get('languages') as $locale=>$language) 
                        <div id="tap_{{$locale}}">
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.name',[''],$locale)}}</label>
                                <input name="name:{{$locale}}" value="{{ $person->translate($locale)->name}}" type="text" class="form-control" placeholder="{{trans('backend.name',[''],$locale)}}" >
                                @if($errors->has('name:{{$locale}}'))
                                    <span class="help-block">{{$errors->first('name:'.$locale)}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.role',[''],$locale)}}</label>
                                <input name="role:{{$locale}}" value="{{ $person->translate($locale)->role}}" type="text" class="form-control" placeholder="{{trans('backend.role',[''],$locale)}}" >
                                @if($errors->has('role:{{$locale}}'))
                                    <span class="help-block">{{$errors->first('role:'.$locale)}}</span>
                                @endif
                            </div>
                            <div class="table">
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.degree',[''],$locale)}}</label>
                                <input name="degree:{{$locale}}" value="{{ $person->translate($locale)->degree}}" type="text" class="form-control" placeholder="{{trans('backend.degree',[''],$locale)}}" >
                                @if($errors->has('degree:{{$locale}}'))
                                    <span class="help-block">{{$errors->first('degree:'.$locale)}}</span>
                                @endif
                            </div>
                           
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.specialist_in',[''],$locale)}}</label>
                                <input name="specialist_in:{{$locale}}" value="{{ $person->translate($locale)->specialist_in}}" type="text" class="form-control" placeholder="{{trans('backend.specialist_in',[''],$locale)}}" >
                                @if($errors->has('specialist_in:{{$locale}}'))
                                    <span class="help-block">{{$errors->first('specialist_in:'.$locale)}}</span>
                                @endif
                            </div>
                           
                           
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.work_days',[''],$locale)}}</label>
                                <input name="work_days:{{$locale}}" value="{{ $person->translate($locale)->work_days}}" type="text" class="form-control" placeholder="{{trans('backend.work_days',[''],$locale)}}" >
                                @if($errors->has('work_days:{{$locale}}'))
                                    <span class="help-block">{{$errors->first('work_days:'.$locale)}}</span>
                                @endif
                            </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.short_description',[''],$locale)}}</label>
                                <textarea name="short_description:{{$locale}}" class="form-control" placeholder="{{trans('backend.short_description',[''],$locale)}}">{{ $person->translate($locale)->short_description}}</textarea>
                                @if($errors->has('short_description:{{$locale}}'))
                                    <span class="help-block">
                                    {{$errors->first('short_description'.$locale)}}
                                    </span>
                                @endif
                            </div> 
                            <div class="services">  
                            @if($person->services_topics != null)    
                            <div class="form-group">
                                        <table class="table table-bordered dynamic_field{{$locale}}" > 
                                        <tr>   
                                               <td> <label class="control-label">{{trans('backend.services_topics',[''],$locale)}}</label></td>
                                                <td><button type="button" name="add"  class="btn btn-success add_include">+</button></td>  
                                         </tr>  
                                                  
                                                        @foreach($person->translate($locale)->services_topics as $w=>$its) 
                                                        <tr >  
                                                    <td><input type="text" name="services_topics:{{$locale}}[]" value="{{$its}}" placeholder="{{trans('backend.services_topics',[''],$locale)}}" class="form-control name_list"  /></td>
                                                   @if($w!=0) <td><button type="button" name="remove"  class="btn btn-danger btn_remove ">X</button></td>@endif
                                                      
                                                    </tr>                             
                                                    @endforeach  
                                                   
                                                  
                                            </table>
                                        </div>  
                                         @endif                                        
                                        </div>   
                                       
                        </div>
                        @endforeach  
                       
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.image')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                    <input name="image" type="file" class="form-control" >
                                    @if($errors->has('image'))
                                        <span class="help-block">{{$errors->first('image')}}</span>
                                    @endif
                                </div>
                                <img height="150" src="{{UPLOADS}}/persons/{{$person->image}}">
                            </div>
                            <div class="table">
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.contact_info')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <input name="contact_info" value="{{ $person->contact_info}}" type="number" class="form-control" placeholder="{{trans('backend.contact_info')}}">
                                    @if($errors->has('contact_info'))
                                        <span class="help-block">{{$errors->first('contact_info')}}</span>
                                    @endif
                                </div>
                            </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.facebook_link')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <input name="facebook_link" value="{{ $person->facebook_link}}" type="text" class="form-control" placeholder="{{trans('backend.facebook_link')}}">
                                    @if($errors->has('facebook_link'))
                                    <span class="help-block">{{$errors->first('facebook_link')}}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.twitter_link')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <input name="twitter_link" value="{{ $person->twitter_link}}" type="text" class="form-control" placeholder="{{trans('backend.twitter_link')}}">
                                    @if($errors->has('twitter_link'))
                                    <span class="help-block">{{$errors->first('twitter_link')}}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.insta_link')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <input name="insta_link" value="{{ $person->insta_link}}" type="text" class="form-control" placeholder="{{trans('backend.insta_link')}}">
                                    @if($errors->has('insta_link'))
                                    <span class="help-block">{{$errors->first('insta_link')}}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.youtube_link')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <input name="youtube_link" value="{{ $person->youtube_link}}" type="text" class="form-control" placeholder="{{trans('backend.youtube_link')}}">
                                    @if($errors->has('youtube_link'))
                                    <span class="help-block">{{$errors->first('youtube_link')}}</span>
                                    @endif
                                </div>
                            </div>
                            
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.update')}}</button>
                                <a class="btn blue" href="{{route('getAllPersons')}}">{{trans('backend.cancel')}}</a>
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
@section('js')
<script>

$(".table").hide();
		$(".services").hide();
        var id = "<?=$selectedtype?>";
            if (id==2) { 
 
 $(".table").show();
       $(".services").show();
   }
        function report(period) {
           
   if (period==2) { 
 
   $(".table").show();
         $(".services").show();
     }
     else{
        $(".table").hide();
		$(".services").hide(); 
     }
            }    ;
 var i=1; 
            
            var x=1;   
               $('.add_include').click(function(){                       
              if(($('input[name=type]:checked').val())=="ar") { 
               i++;             
              $('.dynamic_fieldar').append('<tr id="row'+i+'" class="dynamic-added"><td><input type="text"  name="services_topics:ar[]" value="{{old('services_topics:ar')}}" placeholder="الخدمات المتاحه" class="form-control name_list" required /></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>'); 
              }
              else{
               x++;             
              $('.dynamic_fielden').append('<tr id="row'+x+'" class="dynamic-added"><td><input type="text"  name="services_topics:en[]" value="{{old('services_topics:en')}}" placeholder="services" class="form-control name_list" required /></td><td><button type="button" name="remove" id="'+x+'" class="btn btn-danger btn_remove">X</button></td></tr>'); 
              }
         });
   
         $(document).on('click', '.btn_remove', function(){  
            $(this).parents("tr").remove();
            
         }); 
    $(document).ready(function()
    {
        var selected = $(".job :selected").text();
        if(selected == "Football Player") {
            $('#playerBlock').show();
        } else {
            $('#playerBlock').hide();
        }
        $(".job").change(function() {
            var selected = $(this).find("option:selected").text();
            if(selected == "Football Player") {
                $('#playerBlock').show();
            } else {
                $('#playerBlock').hide();
            }
          });
    })
</script>
@endsection