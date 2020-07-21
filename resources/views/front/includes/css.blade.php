@if(App::getLocale()=='ar')
<link rel="stylesheet" href="{{ASSETS}}/front/css/tornado-rtl.min.css">
@else
<link rel="stylesheet" href="{{ASSETS}}/front/css/tornado.min.css">
@endif
<link rel="stylesheet" href="{{ASSETS}}/front/outer/css/sweetalert.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
{{--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">--}}
<style>
.whatsapp-btn {
    position:fixed;
    top:50%;
    right:0;
    width:48px;
    height: 48px;
    font-size:18px;
    line-height: 48px;
    color:#FFF;
    background: #10d058;
    text-align:center;
    transform:translateY(-50%);
}

.scroll-up {
    position:fixed;
    bottom:70px;
    right:50px;
    width:48px;
    height: 48px;
    font-size:18px;
    line-height: 48px;
    color:#FFF;
    background: #343a40;
    text-align:center;
    direction: ltr;
    border-radius:50%;
}

/*#popup{
    position: fixed;
    width: 100%;
    height: 100vh;
    background-color: rgba(0,0,0,0.8);
    left: 0;
    top: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 99999;
    
}*/



#popup {position: fixed; width: 100%; height: 100vh; background-color: rgba(0,0,0,0.8); left: 0; top: 0; display: flex; justify-content: center; align-items: center; z-index: 99999;}
#popup > div {width: 45%; background-color: #fff; position: relative;}
#popup > div img{width: 100%;height:auto;}
#popup > div span{position: absolute; top:10px; right: 10px; background-color: 

#fff; 

    padding: 10px; cursor: pointer;
    box-shadow: 0px 0px 0px 0px #ffffff;
	background-color:#FFFFFF;
	border-radius:25px;
	border:1px solid #dcdcdc;
	display:inline-block;
	cursor:pointer;
	color:#666666;
	font-family:Arial;
	font-size:19px;
	font-weight:bold;
	padding:1px 8px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
	
	
}


.dis-desktop{display: block;}
.dis-mobile{display: block;}

@media screen and (max-width: 850px) {
    /* mobile */
    #popup > div {width: 95%;}
    .dis-desktop{display: none;}
}

@media screen and (min-width: 850px) {
    /* desktop */
    #popup > div {width: 60%;}
    .dis-mobile{display: none;}
}

</style>