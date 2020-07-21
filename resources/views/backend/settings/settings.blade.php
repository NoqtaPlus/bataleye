@extends('backend.layouts.main_layout')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="portlet box yellow">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>{{trans('link.update_link')}}</div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"> </a>
                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                        <a href="javascript:;" class="reload"> </a>
                        <a href="javascript:;" class="remove"> </a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <!-- BEGIN FORM-->
                    <form method="post" action="{{route('updateSettings')}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.site_title')}}</label>
                                <input name="site_title" value="{{$setting->site_title}}" type="text" class="form-control" placeholder="{{trans('setting.site_title')}}" >
                                @if($errors->has('site_title'))
                                <span class="help-block">{{$errors->first('site_title')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.saturday_time')}}</label>
                                <input name="saturday_time" value="{{$setting->saturday_time}}" type="text" class="form-control" placeholder="{{trans('setting.saturday_time')}}" >
                                @if($errors->has('saturday_time'))
                                <span class="help-block">{{$errors->first('saturday_time')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.sunday_time')}}</label>
                                <input name="sunday_time" value="{{$setting->sunday_time}}" type="text" class="form-control" placeholder="{{trans('setting.sunday_time')}}" >
                                @if($errors->has('sunday_time'))
                                <span class="help-block">{{$errors->first('sunday_time')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.monday_time')}}</label>
                                <input name="monday_time" value="{{$setting->monday_time}}" type="text" class="form-control" placeholder="{{trans('setting.monday_time')}}" >
                                @if($errors->has('monday_time'))
                                <span class="help-block">{{$errors->first('monday_time')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.tuesday_time')}}</label>
                                <input name="tuesday_time" value="{{$setting->tuesday_time}}" type="text" class="form-control" placeholder="{{trans('setting.tuesday_time')}}" >
                                @if($errors->has('tuesday_time'))
                                <span class="help-block">{{$errors->first('tuesday_time')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.wednesday_time')}}</label>
                                <input name="wednesday_time" value="{{$setting->wednesday_time}}" type="text" class="form-control" placeholder="{{trans('setting.wednesday_time')}}" >
                                @if($errors->has('wednesday_time'))
                                <span class="help-block">{{$errors->first('wednesday_time')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.thursday_time')}}</label>
                                <input name="thursday_time" value="{{$setting->thursday_time}}" type="text" class="form-control" placeholder="{{trans('setting.thursday_time')}}" >
                                @if($errors->has('thursday_time'))
                                <span class="help-block">{{$errors->first('thursday_time')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.site_description')}}</label>
                                <textarea name="site_description" class="form-control" placeholder="{{trans('setting.site_description')}}" >{{$setting->site_description}}</textarea>
                                @if($errors->has('site_description'))
                                <span class="help-block">{{$errors->first('site_description')}}</span>
                                @endif
                            </div>
                             <div class="form-group">
                                <label class="control-label">{{trans('setting.subscript_description')}}</label>
                                <textarea name="subscript_description" class="form-control" placeholder="{{trans('setting.subscript_description')}}" >{{$setting->subscript_description}}</textarea>
                                @if($errors->has('subscript_description'))
                                <span class="help-block">{{$errors->first('subscript_description')}}</span>
                                @endif
                            </div>
                             <div class="form-group">
                                <label class="control-label">{{trans('setting.address_ar')}}</label>
                                <textarea name="address_ar" class="form-control" placeholder="{{trans('setting.address_ar')}}" >{{$setting->address_ar}}</textarea>
                                @if($errors->has('address_ar'))
                                <span class="help-block">{{$errors->first('address_ar')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.address_en')}}</label>
                                <textarea name="address_en" class="form-control" placeholder="{{trans('setting.address_en')}}" >{{$setting->address_en}}</textarea>
                                @if($errors->has('address_en'))
                                <span class="help-block">{{$errors->first('address_en')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.email_1')}}</label>
                                <input name="email_1" value="{{$setting->email_1}}" type="email" class="form-control" placeholder="{{trans('setting.email_1')}}" >
                                @if($errors->has('email_1'))
                                <span class="help-block">{{$errors->first('email_1')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.email_2')}}</label>
                                <input name="email_2" value="{{$setting->email_2}}" type="text" class="form-control" placeholder="{{trans('setting.email_2')}}" >
                                @if($errors->has('email_2'))
                                <span class="help-block">{{$errors->first('email_2')}}</span>
                                @endif
                            </div>
                              <div class="form-group">
                                <label class="control-label">{{trans('setting.phone')}}</label>
                                <input name="phone" value="{{$setting->phone}}" type="text" class="form-control" placeholder="{{trans('setting.phone')}}" >
                                @if($errors->has('phone'))
                                <span class="help-block">{{$errors->first('phone')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.facebook_link')}}</label>
                                <input name="facebook_link" value="{{$setting->facebook_link}}" type="text" class="form-control" placeholder="{{trans('setting.facebook_link')}}" >
                                @if($errors->has('facebook_link'))
                                <span class="help-block">{{$errors->first('facebook_link')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">لينك التويتر</label>
                                <input name="twitter_link" value="{{$setting->twitter_link}}" type="text" class="form-control" placeholder="لينك التويتر" >
                                @if($errors->has('twitter_link'))
                                <span class="help-block">{{$errors->first('twitter_link')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                 <label class="control-label"> لينك اليوتيوب</label>
                                <input name="youtube" value="{{$setting->youtube}}" type="text" class="form-control" placeholder="لينك اليوتيوب" >
                                @if($errors->has('youtube'))
                                <span class="help-block">{{$errors->first('youtube')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">الواتس اب</label>
                                <input name="whatsapp" value="{{$setting->whatsapp}}" type="text" class="form-control" placeholder="{{trans('setting.whatsapp')}}" >
                                @if($errors->has('whatsapp'))
                                <span class="help-block">{{$errors->first('whatsapp')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.instagram_link')}}</label>
                                <input name="instagram_link" value="{{$setting->instagram_link}}" type="text" class="form-control" placeholder="{{trans('setting.instagram_link')}}" >
                                @if($errors->has('instagram_link'))
                                <span class="help-block">{{$errors->first('instagram_link')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.google_link')}}</label>
                                <input name="google_link" value="{{$setting->google_link}}" type="text" class="form-control" placeholder="{{trans('setting.google_link')}}" >
                                @if($errors->has('google_link'))
                                <span class="help-block">{{$errors->first('google_link')}}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('setting.about')}}</label>
                                <textarea name="about" class="form-control" rows="10" placeholder="{{trans('setting.about')}}" >{{$setting->about}}</textarea>
                                @if($errors->has('about'))
                                <span class="help-block">{{$errors->first('about')}}</span>
                                @endif
                            </div>
                         
                                <div class="form-group">
                                <label class="control-label">{{trans('setting.map')}}</label>
                                <div class="responsive-map">
        <iframe src="{{$setting->map_link}}" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <label class="control-label">{{trans('backend.link')}}</label>
                                <input  name="map_link" value="{{$setting->map_link}}" type="text" class="form-control" required>
                              
                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.logo_ar')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-picture-o"></i>
                                    </span>
                                    <input class="form-control" type="file" name="logo_ar">
                                    @if($errors->has('logo_ar'))
                                        <span class="help-block">{{$errors->first('logo_ar')}}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <img src="/getFile/{{$setting->logo_ar}}" style="width: 150px; height: 150px"></img>

                            </div>
                            <div class="form-group">
                                <label class="control-label">{{trans('backend.logo_en')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-picture-o"></i>
                                    </span>
                                    <input class="form-control" type="file" name="logo_en" >
                                    @if($errors->has('logo_en'))
                                        <span class="help-block">{{$errors->first('logo_en')}}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <img src="/getFile/{{$setting->logo_en}}" style="width: 150px; height: 150px"></img>

                            </div>

                            <div class="form-group">
                                <label class="control-label">{{trans('backend.site_map')}}</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-picture-o"></i>
                                    </span>
                                    <input class="form-control" type="file" name="site_map" >
                                    @if($errors->has('site_map'))
                                        <span class="help-block">{{$errors->first('site_map')}}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <a href="/siteMap" target="_blank">Site Map Preview</a>
                            </div>
                         
                        </div>
                        <div class="form-actions">
                            <div class="btn-set pull-left">
                                <button type="submit" class="btn green">{{trans('backend.save')}}</button>
                                <a class="btn btn-danger" href="{{route('getSettings')}}">{{trans('backend.cancel')}}</a>
                            </div>
                            <input name="_method" type="hidden" value="PUT">
                        </div>

                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
    </div>
    <style type="text/css">

.acf-map {
	width: 100%;
	height: 400px;
	border: #ccc solid 1px;
	margin: 20px 0;
}

/* fixes potential theme css conflict */
.acf-map img {
   max-width: inherit !important;
}

</style>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnEX6zLgaPJTW1Eb7rJJoADHvtNzee8hs"></script>
<script type="text/javascript">
(function($) {
// global var
var map = null;
var markersArray = [];
/*
*  new_map
*
*  This function will render a Google Map onto the selected jQuery element
*
*  @type	function
*  @date	8/11/2013
*  @since	4.3.0
*
*  @param	$el (jQuery element)
*  @return	n/a
*/

function new_map( $el ) {
	
	// var
	var $markers = $el.find('.marker');
	
	
	// vars
	var args = {
		zoom		: 10,
		center		: new google.maps.LatLng(30.0608866, 31.2050317),
		mapTypeId	: google.maps.MapTypeId.ROADMAP
	};

	// create map	        	
	var map = new google.maps.Map( $el[0], args);

	// return
	return map;
	
}

function placeMarker(location) {
	// first remove all markers if there are any
	deleteOverlays();

	var marker = new google.maps.Marker({
		position: location, 
		map: map
	});

	// add marker in markers array
	markersArray.push(marker);

	//map.setCenter(location);
	map.panTo(location);
}

// Deletes all markers in the array by removing references to them
function deleteOverlays() {
	if (markersArray) {
		for (i in markersArray) {
			markersArray[i].setMap(null);
		}
	markersArray.length = 0;
	}
}

/*
*  document ready
*
*  This function will render each map when the document is ready (page has loaded)
*
*  @type	function
*  @date	8/11/2013
*  @since	5.0.0
*
*  @param	n/a
*  @return	n/a
*/

$(document).ready(function(){

	$('.acf-map').each(function(){

		// create map
		map = new_map( $(this) );
		
		var old_lat = "<?=$setting->map_lat?>";
		var old_lng = "<?=$setting->map_lng?>";

		if (old_lat !== "" && old_lng !== "") {
			placeMarker(new google.maps.LatLng(old_lat, old_lng));
		}

		google.maps.event.addListener(map, 'click', function(event) {
			placeMarker(event.latLng);
			$("input[name='map_lat']").val(event.latLng.lat().toFixed(3));
			$("input[name='map_lng']").val(event.latLng.lng().toFixed(3));
		});

	});

});

})(jQuery);
</script>
 @endsection