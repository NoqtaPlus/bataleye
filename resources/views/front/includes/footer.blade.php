<?php //$fb[]=\App\Repositories\FacebookRepository::facebooknotification(); 
     $items=\Modules\Frontend\Pages\Http\Controllers\PageController::getAllpostsinstagram();
?>
<?php
/*$facebook=\App\Repositories\FacebookRepository::getFacebook();
use Facebook\Facebook;
use Facebook\Exceptions\FacebookResponseException;
use Facebook\Exceptions\FacebookSDKException;
require_once 'vendor/facebook/graph-sdk/src/Facebook/autoload.php';
require_once 'vendor/facebook/graph-sdk/src/Facebook/Exceptions/FacebookResponseException.php';
require_once 'vendor/facebook/graph-sdk/src/Facebook/Exceptions/FacebookSDKException.php';
require_once 'vendor/facebook/graph-sdk/src/Facebook/Helpers/FacebookRedirectLoginHelper.php';

if($fb[0]!="success"){
$appId = $facebook->app_id;
$appSecret = $facebook->app_secret;
$fb = new \Facebook\Facebook([
 
    'app_id' => $appId,
    'app_secret' => $appSecret,
    'default_graph_version' => 'v3.1',
]);
$accessToken = $facebook->access_token;
$posts=[];


if($response = $fb->get('/me?fields=posts.limit(2){picture,message,link}', $accessToken))
{
    
    $user = $response->getGraphObject();
    $posts=json_decode($user['posts']);
}
}

elseif($fb[0]=="success"){
    $posts=[];

}*/
?>
<footer class="main-footer">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-m-6 col-l-4">
                        <h2>{{ \App\Http\Controllers\HomeController::translateWord('about_us')}}</h2>
                        <p>{{\App\Http\Controllers\HomeController::getAboutusFooter()}}</p>
                        <ul class="contact-list">
                            <li class="phone-icon"><span>{{\App\Repositories\SettingRepository::getSettingValue('phone')}}</span> {{\App\Repositories\SettingRepository::getSettingValue('email_1')}}</li>
                            <li class="placemark-icon"><span>{{ \App\Http\Controllers\HomeController::translateWord('morjan_tower')}}</span>{{\App\Repositories\SettingRepository::getSettingValue('address_'.App::getLocale())}}</li>
                        </ul>
                    </div> 
                    @if($items != null)
                                <div class="col-12 col-m-6 col-l-4">
                        <h3 style="margin-bottom: 25px;">{{ \App\Http\Controllers\HomeController::translateWord('Instgram')}}</h3>
                        <div class="row gutter-small" >
                                   
                 @foreach($items as $item)
                  @if(isset($item->videos))
                  <div class="col-6 col-m-4" style="margin-bottom: 10px;">
                  <video width="100%" height="100%" controls="">
                 <source src="{{$item->videos->standard_resolution->url}}" >
                   </video>
                </div>
                  @else
                   @if(isset($item->images))
                  <div class="col-6 col-m-4" style="margin-bottom: 10px;">
                            
                                <a href="{{$item->link}}" target="_blank"><img  src="{{$item->images->thumbnail->url}}" /></a>
                            </div>
                
                   @endif
                   
                   @endif
                   @endforeach
                           
                           
                        </div>
                    </div> @endif
                  
                    <div class="col-12 col-m-6 col-l-4">
                        <ul class="time-list">
                            <li class="time-icon"></li>
                            <li>{{ \App\Http\Controllers\HomeController::translateWord('saturday')}} <span>{{\App\Repositories\SettingRepository::getSettingValue('saturday_time')}}</span></li>
                            <li>{{ \App\Http\Controllers\HomeController::translateWord('sunday')}} <span>{{\App\Repositories\SettingRepository::getSettingValue('sunday_time')}}</span></li>
                            <li>{{ \App\Http\Controllers\HomeController::translateWord('monday')}} <span>{{\App\Repositories\SettingRepository::getSettingValue('monday_time')}}</span></li>
                            <li>{{ \App\Http\Controllers\HomeController::translateWord('tuesday')}} <span>{{\App\Repositories\SettingRepository::getSettingValue('tuesday_time')}}</span></li>
                            <li>{{ \App\Http\Controllers\HomeController::translateWord('wednesday')}} <span>{{\App\Repositories\SettingRepository::getSettingValue('wednesday_time')}}</span></li>
                            <li>{{ \App\Http\Controllers\HomeController::translateWord('thursday')}} <span>{{\App\Repositories\SettingRepository::getSettingValue('thursday_time')}}</span></li>
                            <li> <a href="{{route('getFrontPersons')}}" class="btn primary block-lvl small">{{ \App\Http\Controllers\HomeController::translateWord('online_appointment')}}</a> </li>
                        </ul>
                    </div>
                    <div class="col-12 copyrights">
                        <div class="mahacode-copyrights">
                            
                            
                            
                            <div class="mc-tooltip">
                                <h3>تصميم وتطوير شركة مها كود</h3>
                                <h4 class="ti-mail">info@mahacode.com</h4>
                                <h4 class="ti-phone">+02686 4621312 14849 8789</h4>
                                <div class="btns-icons">
                                    <a href="http://mahacode.com/" target="_blank" class="ti-home"></a>
                                    <a href="https://www.linkedin.com/company/10801558" target="_blank" class="ti-linkedin"></a>
                                    <a href="https://api.whatsapp.com/send?phone=00201093678012" target="_blank" class="ti-whatsapp-line"></a>
                                    <a href="https://www.behance.net/mahacode" target="_blank" class="ti-behance"></a>
                                    <a href="https://www.instagram.com/maha.code/" target="_blank" class="ti-instagram"></a>
                                    <a href="http://www.twitter.com/mahacode" target="_blank" class="ti-twitter"></a>
                                    <a href="https://www.facebook.com/MahaCode/" class="ti-facebook"></a>
                                </div>
                            
                            </div>
                        </div>
                        <ul class="links-bar hidden-m-down">
                            @php $links=\App\Repositories\LinkRepository::getAllFrontLinks()->where('active',1) @endphp
                            @foreach($links as $i=>$link)
                            @if(Route::has($link->route))
                            <li><a href="{{route($link->route)}}">{{$link->title}}</a></li>
                            @else
                            <li><a href="{{$link->route}}">{{$link->title}}</a></li>
                            @endif
                            @endforeach
                        </ul>
                        <div class="social">
                            <a href="{{\App\Repositories\SettingRepository::getSettingValue('facebook_link')}}" class="ti-facebook tooltip" data-title="Follow Us on Facebook"></a>
                            <a href="{{\App\Repositories\SettingRepository::getSettingValue('twitter_link')}}" class="ti-twitter tooltip" data-title="Follow Us on Twitter"></a>
                            <a href="{{\App\Repositories\SettingRepository::getSettingValue('instagram_link')}}" class="ti-instagram tooltip" data-title="Follow Us on Instagram"></a>
                            <a href="{{\App\Repositories\SettingRepository::getSettingValue('youtube')}}" class="ti-youtube-play tooltip" data-title="Follow Us on Youtube"></a>
                            @foreach (Config::get('languages') as $lang => $language)
                            @if ($lang != App::getLocale())
                            <a href="{{ route('lang.switch', $lang) }}" class="ti-earth tooltip" data-title="{{$language}}"></a>
                            @endif
                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
            
<div class="copyright" align="center">
    


  <script>
    document.write('&copy;' );
    document.write(' 2018 - ');
    document.write(new Date().getFullYear());
    document.write('<strong>&copy; .bataleyecenter - All Rights Reserved</strong>');
  </script>
</div>


            
        </footer>