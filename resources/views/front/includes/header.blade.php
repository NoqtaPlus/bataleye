
 <!-- Top Navigation -->
 <div class="top-navigation wow fadeInDown">
            <div class="container">
                <h4 class="info ti-phone-in-talk">{{\App\Repositories\SettingRepository::getSettingValue('phone')}}</h4>
                <h4 class="info ti-mail">{{\App\Repositories\SettingRepository::getSettingValue('email_1')}}</h4>
                
                <div class="social"> 
                       
                    <a href="{{\App\Repositories\SettingRepository::getSettingValue('facebook_link')}}" class="ti-facebook tooltip-bottom" data-title="Follow Us on Facebook"></a>
                    <a href="{{\App\Repositories\SettingRepository::getSettingValue('twitter_link')}}" class="ti-twitter tooltip-bottom" data-title="Follow Us on Twitter"></a>
                    <a href="{{\App\Repositories\SettingRepository::getSettingValue('instagram_link')}}" class="ti-instagram tooltip-bottom" data-title="Follow Us on Instagram"></a>
                    <a href="{{\App\Repositories\SettingRepository::getSettingValue('youtube')}}" class="ti-youtube-play tooltip-bottom" data-title="Follow Us on Youtube"></a>
                    @foreach (Config::get('languages') as $lang => $language)
                    @if ($lang != App::getLocale())
                    <a href="{{ route('lang.switch', $lang) }}" class="ti-earth tooltip-bottom" data-title="{{$language}}"></a>
                    @endif
                    @endforeach
                </div>
            </div>
        </div>
        <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TR97R7R"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
        <!-- // Top Navigation -->
        <header class="tornado-header wow fadeIn main-header" data-sticky>
            <div class="container">
                @if ( App::getLocale()=="ar")
                <a href="{{route('getFrontHome')}}" class="logo">
                    <img src="/getFile/{{\App\Repositories\SettingRepository::getSettingValue('logo_ar')}}" alt="batal" style="width: 115px; height: 47px">
                </a>
                @else
                <a href="{{route('getFrontHome')}}" class="logo">
                    <img src="/getFile/{{\App\Repositories\SettingRepository::getSettingValue('logo_en')}}" alt="batal" style="width: 115px; height: 47px">
                </a>
                @endif
                <!-- Navigation Menu -->
                <div class="navigation-menu" data-id="main-menu" data-logo="/getFile/{{\App\Repositories\SettingRepository::getSettingValue('logo_ar')}}">
                    
                    <ul>
                        @php $links=\App\Repositories\LinkRepository::getAllFrontLinks()->where('active',1) @endphp
                        @php $latetestlink=\App\Repositories\LinkRepository::getAllFrontLinks()->where('route','getFrontTechnologies')->first() @endphp
                        @foreach($links as $i=>$link)
                        @if(Route::has($link->route))
                        <li><a href="{{route($link->route)}}">{{$link->title}}</a>
                           <?php
                           $types=\App\Repositories\ServiceRepository::serviceType(); 
                           ?>
                            @if($link->route=='getFrontEquipments')                                
                            <ul> 
                                @foreach ($types as $type )
                               <li><a href="{{route('getFrontEquipmentsbyid',['id'=>$type->id])}}">{{$type->name}}</a></li>
                                @endforeach
                                <li><a href="{{route($latetestlink->route)}}">{{$latetestlink->title}}</a></li>
                               </ul>
                               @endif
                               </li>
                        @else
                        <li><a href="{{route($link->route)}}">{{$link->title}}</a></li>
                        @endif
                        @endforeach
                    </ul>
                </div>
                <!-- Action Buttons -->
                <div class="action-btns">
                    <a href="{{route('getFrontHome')}}" class="menu-btn icon-btn ti-menu-round" data-id="main-menu"></a>
                    <a href="{{route('getFrontdocors')}}" class="btn small primary">{{ \App\Http\Controllers\HomeController::translateWord('ask_your_doctor')}}</a>
                    <a href="{{route('getFrontonlinedocors')}}" class="btn small primary">{{ \App\Http\Controllers\HomeController::translateWord('online_appointment')}}</a>
                </div>
            </div>
        </header>