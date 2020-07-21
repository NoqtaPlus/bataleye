<!DOCTYPE html>
<html lang="ar" dir="rtl">
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>Elbatal</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="Preview page of Metronic Admin RTL Theme #4 for blank page layout" name="description" />
    <meta content="" name="author" />
    @include('backend.includes.css')
    @yield('css')
    <!-- END THEME LAYOUT STYLES -->
    </head>
<!-- END HEAD -->
<body class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo">
<!-- BEGIN HEADER -->
    @include('backend.includes.header')
<!-- END HEADER -->
<!-- BEGIN HEADER & CONTENT DIVIDER -->
<div class="clearfix"> </div>
<!-- END HEADER & CONTENT DIVIDER -->
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    @include('backend.includes.sidebar')
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <!-- BEGIN CONTENT BODY -->
        <div class="page-content">
            <!-- BEGIN PAGE HEAD-->
            <div class="page-head">
                <!-- BEGIN PAGE TITLE -->
                <div class="page-title">
                    <h1>
                        <small></small>
                    </h1>
                </div>
                <!-- END PAGE TITLE -->
            </div>
            <!-- END PAGE HEAD-->

            <!-- BEGIN PAGE BREADCRUMB -->
            <!-- END PAGE BREADCRUMB -->

            <!-- BEGIN PAGE BASE CONTENT -->
            <div class="note note-info">
                @yield('content')
                @include('layouts.error')
            </div>
            <!-- END PAGE BASE CONTENT -->
        </div>
        <!-- END CONTENT BODY -->
    </div>
    <!-- END CONTENT -->
    <!-- BEGIN QUICK SIDEBAR HERE -->
    <!-- END QUICK SIDEBAR HERE-->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
@include('backend.includes.footer')
<!-- END FOOTER -->
<!-- BEGIN QUICK NAV -->
@include('backend.includes.quick_nav_bar')
<!-- END QUICK NAV -->
@include('backend.includes.js')
@yield('js')
<script>
            $(document).ready(function()
            {
                $('#clickmewow').click(function()
                {
                    $('#radio1003').attr('checked', 'checked');
                });
            })
        </script>
</body>
</html>