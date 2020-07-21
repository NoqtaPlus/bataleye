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