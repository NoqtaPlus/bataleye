@if(Session::has('message'))
<script type="text/javascript">
	swal("{{Session::get('message')}}","{{ \App\Http\Controllers\HomeController::translateWord('press_ok_to_hide_msg')}}","success");
</script>
@endif
