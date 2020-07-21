<!-- Appointment CTA -->
<div class="appointment-cta overflow">
            <div class="container">
                <div class="row align-center-y wow fadeInStart">
                    <div class="col-12 col-m-6 col-l-7">
                        <h2>{{ \App\Http\Controllers\HomeController::translateWord('online_appointment')}}</h2>
                        <p>{{ \App\Http\Controllers\HomeController::translateWord('online_appointment_second_title')}}</p>
                    </div>
                    <div class="col-12 col-m-6 col-l-5 fadeInEnd">
                        <form method="post" action="{{route('postAddContactus')}}" class="form-ui small row">
                        {{csrf_field()}}
                            <!-- Control -->
                            <div class="col-12 col-l-6">
                                <input name="name" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_name')}}" required>
                            </div>
                            <!-- Control -->
                            <div class="col-12 col-l-6">
                                <input name="phone" type="number" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('contact_phone')}}" required>
                            </div>
                            <!-- Control -->
                            <div class="col-12 col-l-6">
                                <select name="doctor_name" class="chevron-select">
                                    @php
                                    $doctors=\App\Http\Controllers\HomeController::getFrontDoctorsToAppointment();
                                    @endphp
                                    @foreach($doctors as $i=>$doctor)
                                    <option  value="{{$doctor->name}}">{{$doctor->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <!-- Control -->
                            <div class="col-12 col-l-6">
                                <input name="doctor_time" type="text" placeholder="{{ \App\Http\Controllers\HomeController::translateWord('doctor_time')}}" data-toggle="datepicker" required>
                            </div>
                            <!-- Control -->
                            <div class="col-12">
                                <input name="contact_from" type="hidden" value="online_appointment">
                                <input type="submit" value="{{ \App\Http\Controllers\HomeController::translateWord('online_appointment')}}" class="btn secondary block-lvl small">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
</div>
<!-- // Appointment CTA -->