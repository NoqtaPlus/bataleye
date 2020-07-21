<!DOCTYPE html>
<html dir="rtl">
<head>
    <a href="#" class="logo"><img src="{{ASSETS}}/front/tersana/img/logo.png" alt=""> <span>الموقع الرسمي لنادي الترسانه الرياضي</span></a>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="A Description Of The Project">
    <meta name="keywords" content="The keywords">
    <script>window.Laravel = { csrfToken: '{{ csrf_token() }}' }</script>
    <meta name="_token" content="{{ csrf_token() }}"/>
    <title>نادى الترسانة الرياضى</title>
    <!-- Required CSS Files -->


    <style>
        div.right { direction: rtl; }
        table{margin-top:35px;border:1px solid rgba(0, 0, 0, 0.10);}
        tr:nth-child(odd){background:#FFF;color:#036db6;border:1px solid rgba(0, 0, 0, 0.10);}
        tr:nth-child(even){background:#f2f2f2;color:#036db6;border:1px solid rgba(0, 0, 0, 0.10);}
        td{font-size:17px;font-weight:500;border:1px solid rgba(0,0,0,.10);color:#036db6;}

    </style>
</head>
<body style="font-family: Arial,firefly, DejaVu Sans, sans-serif;" dir="rtl">
<div class="panel panel-default">
    <a href="#" class="logo"><img src="{{ASSETS}}/front/tersana/img/logo.png" alt=""> <span>الموقع الرسمي لنادي الترسانه الرياضي</span></a>

    <!-- Default panel contents -->
    <div class="panel-heading"><h3 style="color: #ff0000;">بيانات المشترك</h3></div>
    <!-- Table -->
    <table class="table table-striped table-bordered table-hover" >
        <tbody>
        <tr>
            <td class="col-xs-3">الاسم كامل</td>
            <td class="col-xs-9"> {{$data->fullname}}</td>
        </tr>
        <tr>
            <td class="col-xs-3"> حالة العضو</td>
            @if($data->active == 1)
                <td col-xs-9>عضو بالنادى</td>
            @else
                <td col-xs-9>غير عضو بالنادى</td>
            @endif
        </tr>
           @if($data->active == 1)
        <tr>
                <td class="col-xs-3"> رقم العضوية</td>
                <td class="col-xs-9"> {{$data->MemberID}}</td>
        </tr>
           @endif
        <tr>
            <td class="col-xs-3"> البريد الالكترونى</td>
            <td class="col-xs-9"> {{$data->email}}</td>
        </tr>
        <tr>
            <td class="col-xs-3"> العنوان بالكامل</td>
            <td class="col-xs-9"> {{$data->address}}</td>
        </tr>
        <tr>
            <td class="col-xs-3">رقم بطاقة الرقم القومى </td>
            <td class="col-xs-9"> {{$data->IdCard}}</td>
        </tr>
        <tr>
            <td class="col-xs-3"> رقم التليقون</td>
            <td class="col-xs-9"> {{$data->phone}}</td>
        </tr>
        <tr>
            <td class="col-xs-3">رقم  التليفون الارضى</td>
            <td class="col-xs-9"> {{$data->homePhone}}</td>
        </tr>
        <tr>
            <td class="col-xs-3" > اسم المحافظة</td>
            <td class="col-xs-9"> {{$data->cites->name}}</td>
        </tr>
        </tbody>
    </table>

</body>
</html>
