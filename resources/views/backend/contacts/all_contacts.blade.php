@extends('backend.layouts.main_layout')
@section('content')

<div class="row">
    <div class="col-md-12">
   
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe"></i>{{trans('backend.online_appointment')}}</div>
                    <div class="tools">   
                      <input type="button" id="create_pdf" value="PDF" style="margin-left:120px;background-color: #e1e5ec;color: #666;height:35px;width:50px">               
                    </div>
                </div>
                  <!---<button style="margin-bottom: 10px;margin-right: 10px" class="btn btn-danger btn-xsn  delete_all1" >Delete All</button>-->
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover id1" id="sample_2">
                        <thead>
                            <tr>   
                            <th>#</th>
                                    <th ><input type="checkbox" id="master1"></th>
                             
                                    <th>{{trans('contact.read')}}</th>
                                    <th>{{trans('contact.complete')}}</th>
                                <th>{{trans('backend.date')}}</th>
                                <th>{{trans('contact.name')}}</th>
                                <th>{{trans('contact.email')}}</th>
                                <th>{{trans('contact.phone')}}</th>
                                <th>{{trans('backend.doctor_name')}}</th>
                                <th>{{trans('backend.doctor_time')}}</th>
                                <th>{{trans('contact.message')}}</th>
                               <th width="1%">{{trans('backend.action')}}</th>
                              <!--  <th width="1%"></th> -->

                            </tr>
                        </thead>
                        <tbody>
                            @foreach($contacts->where('contact_from','online_appointment') as $i=>$contact)
                            <tr class="odd gradeX">
                                   <td>{{$i+1}}</td>  
                                   <td><input type="checkbox" class="sub_chk1" data-id="{{$contact->contact_id}}"></td>
                               <td> <div class="clearfix">
                                 @if($contact->readmess==0)      <form action="{{route('confirmread')}}" method="post">
                                        {{csrf_field()}}
                                  
                                     <button type="submit"><i class="fa fa-eye-slash"></i></button>
                                        <input name="id" type="hidden" value="{{$contact->contact_id}}">
                                        <input type="hidden" name="_method" value="PUT">
                                    </form>
                                  
                                    @elseif($contact->readmess==1)
                                    <button type="submit">  <i class="fa fa-eye"></i></button>
                                    @endif

                                    
                                </div></td>
                                <td>
                                 <div class="clearfix">
                                  
                                        @if($contact->complete==0)     
                                         <form action="{{route('confirmcomplete')}}" method="post">
                                        {{csrf_field()}}
                                  
                                     <button type="submit"><i class="fa fa-close"></i></button>
                                        <input name="id" type="hidden" value="{{$contact->contact_id}}">
                                        <input type="hidden" name="_method" value="PUT">
                                    </form>
                                  
                                    @elseif($contact->complete==1)
                                    <button type="submit">  <i class="fa fa-check"></i></button>
                                    @endif
                        
                                  
                                    
                                </div>
                                 </td>
                              
                                <td>{{$contact->created_at}}</td>
                                <td>{{$contact->name}}</td>
                                <td>{{$contact->email}}</td>
                                <td>{{$contact->phone}}</td>
                                <td>{{$contact->doctor_name}}</td>
                                <td>{{$contact->doctor_time}}</td>
                                <td>{{$contact->message}}</td>
                                 <td>
                                <div class="clearfix">
                                   <!--- <form class="form-delete-c" method="post" onclick="return confirm('<?php echo trans('backend.confirmDelete');?>')" action="{{route('deleteContactById',['contactId'=>$contact->contact_id])}}">
                                        {{ csrf_field() }}
                                        <button type="submit" class="btn red btn-outline">{{trans('backend.delete')}}
                                        </button>
                                    </form>
                                </div>  --->
                                </td>
                        </tr>

                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END EXAMPLE TABLE PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
   
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe"></i>{{ \App\Http\Controllers\HomeController::translateWord('ask_your_doctor')}}</div>
                    <div class="tools">      
                       <input type="button" id="create_pdf2" value="PDF" style="margin-left:120px;background-color: #e1e5ec;color: #666;height:35px;width:50px">                
                    </div>
                </div>
                    <!---<button style="margin-bottom: 10px;margin-right: 10px" class="btn btn-danger btn-xsn  delete_all2" >Delete All</button>---->
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover id2" id="sample_1">
                        <thead>
                            <tr>
                                    <th>#</th>
                                    <th ><input type="checkbox" id="master2"></th>
                                 <th>{{trans('contact.read')}}</th>
                             
                                <th>{{trans('backend.date')}}</th>
                                <th>{{trans('contact.name')}}</th>
                                <th>{{trans('contact.email')}}</th>
                                <th>{{trans('contact.phone')}}</th>
                                <th>{{trans('backend.doctor_name')}}</th>
                                <th>{{trans('contact.ask')}}</th>
                               <th width="1%">{{trans('backend.action')}}</th>
                               

                            </tr>
                        </thead>
                        <tbody>
                            @foreach($contacts->where('contact_from','ask_your_doctor') as $i=>$contact)
                            <tr class="odd gradeX">
                                    <td>{{$i+1}}</td> 
                                    <td><input type="checkbox" class="sub_chk2" data-id="{{$contact->contact_id}}"></td>
                               <td> <div class="clearfix">
                                 @if($contact->readmess==0)      <form action="{{route('confirmread')}}" method="post">
                                        {{csrf_field()}}
                                  
                                     <button type="submit"><i class="fa fa-eye-slash"></i></button>
                                        <input name="id" type="hidden" value="{{$contact->contact_id}}">
                                        <input type="hidden" name="_method" value="PUT">
                                    </form>
                                  
                                    @elseif($contact->readmess==1)
                                    <button type="submit">  <i class="fa fa-eye"></i></button>
                                    @endif

                                    
                                </div></td>
                              
                               <td>{{$contact->created_at}}</td>
                                <td>{{$contact->name}}</td>
                                <td>{{$contact->email}}</td>
                                <td>{{$contact->phone}}</td>
                                <td>{{$contact->doctor_name}}</td>
                                <td>{{$contact->message}}</td>
                               
                                 <td>
                                <div class="clearfix">
                                   <!--- <form class="form-delete-c" method="post" onclick="return confirm('<?php echo trans('backend.confirmDelete');?>')" action="{{route('deleteContactById',['contactId'=>$contact->contact_id])}}">
                                        {{ csrf_field() }}
                                        <button type="submit" class="btn red btn-outline">{{trans('backend.delete')}}
                                        </button>
                                    </form>
                                </div>  --->
                                </td>
                        </tr>

                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END EXAMPLE TABLE PORTLET-->
    </div>
</div>

<div class="row">
    <div class="col-md-12">
   
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box green">     
       
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-globe"></i>{{trans('contact.all_contacts')}}</div>
                    <div class="tools">      
                        <input type="button" id="create_pdf3" value="PDF" style="margin-left:120px;background-color: #e1e5ec;color: #666;height:35px;width:50px">                
                    </div>
                </div>
                <!----<button style="margin-bottom: 10px;margin-right: 10px" class="btn btn-danger btn-xsn  delete_all3" >Delete All</button>---->
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover id3" id="sample_3">
                        <thead>
                            <tr> 
                            <th>#</th>
                                    <th ><input type="checkbox" id="master3"></th>
                                 <th>{{trans('contact.read')}}</th>
                             
                                <th>{{trans('backend.date')}}</th>
                                <th>{{trans('contact.name')}}</th>
                                <th>{{trans('contact.email')}}</th>
                                <th>{{trans('contact.message')}}</th>
                                <th>{{trans('contact.phone')}}</th>
                               <th width="1%">{{trans('backend.action')}}</th>
                              <!--  <th width="1%"></th> -->

                            </tr>
                        </thead>
                        <tbody>
                            @foreach($contacts->where('contact_from','contactus') as $i=>$contact)
                            <tr class="odd gradeX"> 
                            <td>{{$i+1}}</td>
                                   <td><input type="checkbox" class="sub_chk3" data-id="{{$contact->contact_id}}"></td>
                                <td> <div class="clearfix">
                                 @if($contact->readmess==0)      <form action="{{route('confirmread')}}" method="post">
                                        {{csrf_field()}}
                                  
                                     <button type="submit"><i class="fa fa-eye-slash"></i></button>
                                        <input name="id" type="hidden" value="{{$contact->contact_id}}">
                                        <input type="hidden" name="_method" value="PUT">
                                    </form>
                                  
                                    @elseif($contact->readmess==1)
                                    <button type="submit">  <i class="fa fa-eye"></i></button>
                                    @endif

                                    
                                </div></td>
                               
                                <td>{{$contact->created_at}}</td>
                                <td>{{$contact->name}}</td>
                                <td>{{$contact->email}}</td>
                                <td>{{$contact->message}}</td>
                                <td>{{$contact->phone}}</td>    
                                 <td>
                                <div class="clearfix">
                                    <form class="form-delete-c" method="post" onclick="return confirm('<?php echo trans('backend.confirmDelete');?>')" action="{{route('deleteContactById',['contactId'=>$contact->contact_id])}}">
                                        {{ csrf_field() }}
                                        <button type="submit" class="btn red btn-outline">{{trans('backend.delete')}}
                                        </button>
                                    </form>
                                </div>  
                                </td>
                        </tr>

                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END EXAMPLE TABLE PORTLET-->
    </div>
</div>
<script type="text/javascript">

    $(document).ready(function () {


        $('#master1').on('click', function(e) {
         if($(this).is(':checked',true))  
         {
            $(".sub_chk1").prop('checked', true);  
         } else {  
            $(".sub_chk1").prop('checked',false);  
         }  
        });
   $('#master2').on('click', function(e) {
         if($(this).is(':checked',true))  
         {
            $(".sub_chk2").prop('checked', true);  
         } else {  
            $(".sub_chk2").prop('checked',false);  
         }  
        });
 $('#master3').on('click', function(e) {
         if($(this).is(':checked',true))  
         {
            $(".sub_chk3").prop('checked', true);  
         } else {  
            $(".sub_chk3").prop('checked',false);  
         }  
        });
        $(".delete_all1").click(function(e) {





var join_selected_values ="";
            var allVals = [];  
            $(".sub_chk1:checked").each(function() {  
                allVals.push($(this).attr('data-id'));
            });  


            if(allVals.length <=0)  
            {  
                alert("Please select row.");  
                
            }  else {  


                var check = confirm("Are you sure you want to delete this row?");  
                if(check == true){  


                     join_selected_values = allVals.join(",");
                    $.ajax({
               
        type: "POST",
        headers: {
  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
  },
        url:"{{route('DeleteAll')}}",
        data:{ _token : $('meta[name="csrf-token"]').attr('content'),"ids":join_selected_values}, 
        
        success: function(data){
            if (data['success']) {
            alert(data['success']);
            location.reload();
            }
            else {
                                alert('Whoops Something went wrong!!');
                            }
        }
    });
                 
                }  
            }  
        });

   $(".delete_all2").click(function(e) {





var join_selected_values ="";
            var allVals = [];  
            $(".sub_chk2:checked").each(function() {  
                allVals.push($(this).attr('data-id'));
            });  


            if(allVals.length <=0)  
            {  
                alert("Please select row.");  
                
            }  else {  


                var check = confirm("Are you sure you want to delete this row?");  
                if(check == true){  


                     join_selected_values = allVals.join(",");
                    $.ajax({
               
        type: "POST",
        headers: {
  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
  },
        url:"{{route('DeleteAll')}}",
        data:{ _token : $('meta[name="csrf-token"]').attr('content'),"ids":join_selected_values}, 
        
        success: function(data){
            if (data['success']) {
            alert(data['success']);
            location.reload();
            }
            else {
                                alert('Whoops Something went wrong!!');
                            }
        }
    });
                 
                }  
            }  
        });
           $(".delete_all3").click(function(e) {





var join_selected_values ="";
            var allVals = [];  
            $(".sub_chk3:checked").each(function() {  
                allVals.push($(this).attr('data-id'));
            });  


            if(allVals.length <=0)  
            {  
                alert("Please select row.");  
                
            }  else {  


                var check = confirm("Are you sure you want to delete this row?");  
                if(check == true){  


                     join_selected_values = allVals.join(",");
                    $.ajax({
               
        type: "POST",
        headers: {
  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
  },
        url:"{{route('DeleteAll')}}",
        data:{ _token : $('meta[name="csrf-token"]').attr('content'),"ids":join_selected_values}, 
        
        success: function(data){
            if (data['success']) {
            alert(data['success']);
            location.reload();
            }
            else {
                                alert('Whoops Something went wrong!!');
                            }
        }
    });
                 
                }  
            }  
        });
     


    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/2.3.5/jspdf.plugin.autotable.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>

<script>

        $('#create_pdf').click(function () {  let doc = new jsPDF('p', 'pt', 'a4'); 
            var imgData = 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAXwBfAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMgIyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wgARCAAaABQDAREAAhEBAxEB/8QAGQAAAgMBAAAAAAAAAAAAAAAABQYAAwQB/8QAGAEBAQEBAQAAAAAAAAAAAAAAAwEAAgT/2gAMAwEAAhADEAAAAXKbOK1c92KOHzuQcxaHNjdidpy5yl//xAAfEAACAQMFAQAAAAAAAAAAAAABAgADEhMEEBEhIjH/2gAIAQEAAQUC+QuVq6duEqnoephWKDia/FLjLjt//8QAHREAAgIBBQAAAAAAAAAAAAAAAAIBEQMSEyAiMf/aAAgBAwEBPwEhIZLj2DOttcCkNp7G8xZfH//EAB4RAAIDAAEFAAAAAAAAAAAAAAABAgMREiAhIjFR/9oACAECAQE/AR2ONmS9MolkcZZ8aHDl4b2FTEaEun//xAAhEAABAwMEAwAAAAAAAAAAAAABAAIRAxAxEjJBQiFhYv/aAAgBAQAGPwJQ7acIg8FQWFzfS0B0t+shcpkNqHx1KqahU29rZKybf//EAB0QAQADAQACAwAAAAAAAAAAAAEAESExQVFhgZH/2gAIAQEAAT8hUFrUE1U6+ZZvXITcrvpNdp4xEO+l1b7Gv7BQdYMALdXDkpwD7ipT+kOT/9oADAMBAAIAAwAAABBnmCSOz//EABsRAQACAwEBAAAAAAAAAAAAAAEAESExYSBx/9oACAEDAQE/EAXUQdz5KIsIMuNjTLWFPNMVwaOQoRsVXn//xAAcEQEAAgIDAQAAAAAAAAAAAAABABEhMSBhcVH/2gAIAQIBAT8QUMsIdQ9/JZNpSUTIImK3bZ5AbtfZa3cpbvj/AP/EABwQAQACAwEBAQAAAAAAAAAAAAEAESExQXFRwf/aAAgBAQABPxCsIatahd4Y+dDAb93fjD4HtO4qLlXU0ej2pdETsO11xEdV8cP2hExkSA2d3NHkA0Q0CIxSEyKmjyf/2Q==';
            doc.addImage(imgData, 'JPEG', 20, 20, 20, 26);

            doc.text(50, 40, "Online Appointment");

         doc.addHTML(document.getElementsByClassName("id1"),40,100, function () {
             
             doc.save('online appointment.pdf');
         });
        });
        $('#create_pdf2').click(function () {  let doc = new jsPDF('p', 'pt', 'a4'); 
            var imgData = 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAXwBfAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMgIyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wgARCAAaABQDAREAAhEBAxEB/8QAGQAAAgMBAAAAAAAAAAAAAAAABQYAAwQB/8QAGAEBAQEBAQAAAAAAAAAAAAAAAwEAAgT/2gAMAwEAAhADEAAAAXKbOK1c92KOHzuQcxaHNjdidpy5yl//xAAfEAACAQMFAQAAAAAAAAAAAAABAgADEhMEEBEhIjH/2gAIAQEAAQUC+QuVq6duEqnoephWKDia/FLjLjt//8QAHREAAgIBBQAAAAAAAAAAAAAAAAIBEQMSEyAiMf/aAAgBAwEBPwEhIZLj2DOttcCkNp7G8xZfH//EAB4RAAIDAAEFAAAAAAAAAAAAAAABAgMREiAhIjFR/9oACAECAQE/AR2ONmS9MolkcZZ8aHDl4b2FTEaEun//xAAhEAABAwMEAwAAAAAAAAAAAAABAAIRAxAxEjJBQiFhYv/aAAgBAQAGPwJQ7acIg8FQWFzfS0B0t+shcpkNqHx1KqahU29rZKybf//EAB0QAQADAQACAwAAAAAAAAAAAAEAESExQVFhgZH/2gAIAQEAAT8hUFrUE1U6+ZZvXITcrvpNdp4xEO+l1b7Gv7BQdYMALdXDkpwD7ipT+kOT/9oADAMBAAIAAwAAABBnmCSOz//EABsRAQACAwEBAAAAAAAAAAAAAAEAESExYSBx/9oACAEDAQE/EAXUQdz5KIsIMuNjTLWFPNMVwaOQoRsVXn//xAAcEQEAAgIDAQAAAAAAAAAAAAABABEhMSBhcVH/2gAIAQIBAT8QUMsIdQ9/JZNpSUTIImK3bZ5AbtfZa3cpbvj/AP/EABwQAQACAwEBAQAAAAAAAAAAAAEAESExQXFRwf/aAAgBAQABPxCsIatahd4Y+dDAb93fjD4HtO4qLlXU0ej2pdETsO11xEdV8cP2hExkSA2d3NHkA0Q0CIxSEyKmjyf/2Q==';
            doc.addImage(imgData, 'JPEG', 20, 20, 20, 26);

            doc.text(50, 40, "Ask your doctor");

         doc.addHTML(document.getElementsByClassName("id2"),40,100, function () {
             
             doc.save('Ask your doctor.pdf');
         });
        });
        $('#create_pdf3').click(function () {  let doc = new jsPDF('p', 'pt', 'a4'); 
            var imgData = 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAXwBfAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMgIyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wgARCAAaABQDAREAAhEBAxEB/8QAGQAAAgMBAAAAAAAAAAAAAAAABQYAAwQB/8QAGAEBAQEBAQAAAAAAAAAAAAAAAwEAAgT/2gAMAwEAAhADEAAAAXKbOK1c92KOHzuQcxaHNjdidpy5yl//xAAfEAACAQMFAQAAAAAAAAAAAAABAgADEhMEEBEhIjH/2gAIAQEAAQUC+QuVq6duEqnoephWKDia/FLjLjt//8QAHREAAgIBBQAAAAAAAAAAAAAAAAIBEQMSEyAiMf/aAAgBAwEBPwEhIZLj2DOttcCkNp7G8xZfH//EAB4RAAIDAAEFAAAAAAAAAAAAAAABAgMREiAhIjFR/9oACAECAQE/AR2ONmS9MolkcZZ8aHDl4b2FTEaEun//xAAhEAABAwMEAwAAAAAAAAAAAAABAAIRAxAxEjJBQiFhYv/aAAgBAQAGPwJQ7acIg8FQWFzfS0B0t+shcpkNqHx1KqahU29rZKybf//EAB0QAQADAQACAwAAAAAAAAAAAAEAESExQVFhgZH/2gAIAQEAAT8hUFrUE1U6+ZZvXITcrvpNdp4xEO+l1b7Gv7BQdYMALdXDkpwD7ipT+kOT/9oADAMBAAIAAwAAABBnmCSOz//EABsRAQACAwEBAAAAAAAAAAAAAAEAESExYSBx/9oACAEDAQE/EAXUQdz5KIsIMuNjTLWFPNMVwaOQoRsVXn//xAAcEQEAAgIDAQAAAAAAAAAAAAABABEhMSBhcVH/2gAIAQIBAT8QUMsIdQ9/JZNpSUTIImK3bZ5AbtfZa3cpbvj/AP/EABwQAQACAwEBAQAAAAAAAAAAAAEAESExQXFRwf/aAAgBAQABPxCsIatahd4Y+dDAb93fjD4HtO4qLlXU0ej2pdETsO11xEdV8cP2hExkSA2d3NHkA0Q0CIxSEyKmjyf/2Q==';
            doc.addImage(imgData, 'JPEG', 20, 20, 20, 26);

            doc.text(50, 40, "Messages");

         doc.addHTML(document.getElementsByClassName("id3"),40,100, function () {
             
             doc.save('Messages.pdf');
         });
        });
    </script>
   <style> 
        table { 
            font-family: arial , sans-serif bold; 
            border-collapse: collapse; 
            width: 100%; 
        } 
 
        td, th { 
            border: 1px solid #dddddd; 
            text-align: right; 
            padding: 8px; 
            font-size:30px;
            color:black;
            
        } 
 
        tr:nth-child(even) { 
            background-color: #dddddd; 
        } 
    </style>
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