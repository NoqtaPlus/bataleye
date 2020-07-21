<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags always come first -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="A Description Of The Project">
        <meta name="keywords" content="The keywords">
        <title>نادى الترسانة الرياضى</title>
        <link rel="stylesheet" href="{{ASSETS}}/front/tersana/css/tornado-rtl.min.css">
    </head>
    <body>
    <!-- Page Wrapper -->
    <div class="reg-page">
            <div class="container">
                <img src="{{ASSETS}}/front/tersana/img/logo.png" alt="logo" class="logo">
                <h1>تسجيل بيانات بطاقة جمهور نادي الترسانه الرياضى</h1>
                <p class="large-text">رجاء ان تكون البيانات المسجلة صحيحة لضمان تسجيل بيانات بطاقة جمهور نادي الترسانه الرباضى مع الوضع في الاعتبار ان البيانات التي يتم ادخالها مؤمنة من قبل إدارة النادي .</p>
                <h3>نموذج البيانات</h3>
                @if(Session::has('dataCard'))
                  <!-- Success Message -->
                <div class="alert success tx-align-center" style="color:#FFF;">
                    <div class="content">
                       
                        <h4 style="font-size:18px;margin:0 auto; color:#0b072d;" >شكراً لأنضمامك لجمهور الشواكيش</h4>
                        <h3 style="font-size:21px;margin:10px auto; color:#0b072d;"># شجع الشواكيش</h3>
                        <h4 style="font-size:18px;margin:0 auto; color:#0b072d;">الترسانة راجع للممتاز</h4>
                        <p style="color:#0b072d;">للمزيد و للإستفسار برجاء التواصل علي   |   0233028610   |   01092858085</p>
                       <a href="{{route('getFrontHome')}}" class="btn btn-dark">الرجوع لصفحه الرئيسية</a>
                    </div>
                    <span class="ti-close remove-parent"></span>
                </div>
                <!-- // Success Message -->
                @endif
                <!-- Form -->
                  <!-- Form -->
                <form class="form-ui row" method="post" action="{{route('postCardData')}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                    <!-- Form Control -->
                    <div class="col-12 col-m-6">
                        <label>الإسم بالكامل</label>
                        <input name="fullname" type="text" placeholder="الإسم بالكامل" Required>
                    </div>
                    <!-- // Form Control -->
                    <!-- Form Control -->
                    <div class="col-12 col-m-6">
                        <label>حالة العضوية</label>
                        <!-- Radio -->
                        <label class="radio-button">
                            <input type="radio" name="active" value="0" id="notactive" >
                            <span>غير عضو</span>
                        </label>
                        <!-- // Radio  -->
                        <!-- Radio -->
                        <label class="radio-button">
                            <input type="radio" name="active" value="1" id="active" checked>
                            <span>عضو بالنادي</span>
                        </label>
                        <!-- // Radio  -->
                    </div>
                    <!-- // Form Control -->
                    <!-- Form Control -->
                    <div class="col-12 col-m-6" id="member">
                        <label>رقم العضوية</label>
                        <input name="MemberID" type="text" placeholder="" >

                    </div>
                    <!-- // Form Control -->
                    <!-- Form Control -->
                   
                    <!-- // Form Control -->
                    <!-- Form Control -->
                    <div class="col-12 col-m-6">
                        <label>الرقم القومي</label>
                        <input name="IdCard" type="text" placeholder="" Required >
                    </div>
                    <!-- // Form Control -->
                    <!-- Form Control -->
                    <div class="col-12 col-m-6">
                        <label>البريد الإلكتروني (هام)</label>
                        <input name="email" type="text" placeholder="" Required>
                    </div>
                    <!-- // Form Control -->
                    <!-- Form Control -->
                    <div class="col-12 col-m-6">
                        <label>رقم الموبايل</label>
                        <input name="phone" type="text" placeholder="" Required>
                    </div>
                    <!-- // Form Control -->
                    <!-- Form Control -->
                    <div class="col-12 col-m-6">
                        <label>رقم تليفون المنزل (إختياري)</label>
                        <input name="homePhone" type="text" placeholder="">
                    </div>
                    <!-- // Form Control -->
                    <!-- Form Control -->
                    <div class="col-12 col-m-6">
                        <label>العنوان (برجاء كتابة العنوان بالتفصيل)</label>
                        <input name="address" type="text" placeholder="" Required>
                    </div>
                    <!-- // Form Control -->
                    <!-- Form Control -->
                    <div class="col-12 col-m-6">
                        <label>المحافظة</label>
                        <select name="city_id">
                            @if($cities)
                                @foreach($cities as $city)
                                    <option value="{!! $city->id !!}">{{ $city->name }}</option>
                                @endforeach
                            @endif
                           
                        </select>
                    </div>
                    <!-- // Form Control -->
                    <!-- Form Control -->
                    <div class="col-12">
                        <label>الصورة الشخصية ( صورة حديثة ألوان واضحة خلفية بيضاء )</label>
                        <!-- File input -->
                        <div class="file-input">
                            <input type="file" name="personalPhoto" >
                            <span class="btn primary">اختيار</span>
                            <input  class="file-path" placeholder="File Upload" Required>

                        </div>
                    </div>
                    <!-- // Form Control -->
                    <!-- Form Control -->
                    <div class="col-12" id="photo">
                       <label>صورة بطاقة عضوية النادي</label>
                        <!-- File input -->
                        <div class="file-input">
                            <input type="file"  name="MembershipPhoto">
                            <span class="btn primary">اختيار</span>
                            <input class="file-path" placeholder="File Upload" >
                        </div>
                    </div>
                    <!-- // Form Control -->
                     <!-- // Form Control -->
                      <div class="col-12">
                        <label>صورة بطاقة الرقم القومى</label>
                        <!-- File input -->
                        <div class="file-input">
                            <input type="file" name="IdCardphoto">
                            <span class="btn primary">اختيار</span>
                            <input class="file-path" placeholder="File Upload" Required>
                        </div>
                    </div>
                      <!-- // Form Control -->
                    <!-- Form Control -->
                    <div class="col-12">
                        <label>صورةشهاده الميلاد</label>
                        <!-- File input -->
                        <div class="file-input">
                            <input type="file" name="photoBirthday">
                            <span class="btn primary">اختيار</span>
                            <input  class="file-path" placeholder="File Upload" Required>
                        </div>
                    </div>
                    <!-- // Form Control -->
                    <!-- Form Control -->
                    <div class="col-12">
                        <!-- Checkbox -->
                        <label class="checkbox">
                            <input type="checkbox" name="checkbox" checked>
                            <span>أوافق وأتعهد بالإلتزام بما جاء بقانون الرياضة رقم 71 لسنة 2017 وجميع الإجراءات الخاصة بدخول المباريات </span>
                        </label>
                        <!-- // Checkbox -->
                        <p> قيمة رسوم بطاقة العضوية خمسون جنيها للموسم الرياضي تسدد عند إستلام البطاقة</p>
                        <input type="submit" class="btn primary block-lvl" value="تسجيل بيانات البطاقه ">
                    </div>
                    <!-- // Form Control -->
                </form>
                <!-- // Form -->
                <!-- // Form -->
            </div>
        </div>
        <!-- // Page Wrapper -->

        <!-- Required JS Files -->
        <script src="{{ASSETS}}/front/tersana/js/jquery-3.3.1.min.js"></script>
         <script>
            $('#active').click(function() {
                if ($(this).is(':checked')) {
                   $('#photo').show();
                   $('#member').show();
                } 
            });
             $('#notactive').click(function() {
                if ($(this).is(':checked')) {
                   $('#photo').hide();
                   $('#member').hide();
                } 
            });
        </script>
        <script src="{{ASSETS}}/front/tersana/js/tornado.min.js"></script>
    </body>
</html>

 