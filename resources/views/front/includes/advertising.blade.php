@if(isset($adverrise) && $adverrise->enableAds == 1)
<div id="popup">
    <div>
        <!-- for desktop -->
        <a class="dis-desktop" href="{{$adverrise->url}}"><img style="" src="/getFile/{{$adverrise->desktop_image}}"></a>

        <!-- for Mobile -->
        <a class="dis-mobile" href="{{$adverrise->url}}"><img style="" src="/getFile/{{$adverrise->mobile_image}}"></a>

        <!-- close button -->
        <span><i class="fa fa-close"  onclick="hide_popup();"></i></span>
    </div>
</div>
@endif