<!-- BEGIN CORE PLUGINS -->
<script src="{{ASSETS}}/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="{{ASSETS}}/global/scripts/app.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/pages/scripts/components-select2.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/global/plugins/chosen.jquery.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="{{ASSETS}}/layouts/layout4/scripts/layout.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/layouts/layout4/scripts/demo.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="{{ASSETS}}/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
<script src="https://cdn.ckeditor.com/4.9.0/full-all/ckeditor.js"></script>


<script>
	$(document).ready(function() {
        $("#tap_en").hide();
		$("input[type=radio][name=type]").change(function() {
			if (this.value == "en") {
			$("#tap_en").show();
            $("#tap_ar").hide();
			}
            if (this.value == "ar") {
			$("#tap_ar").show();
            $("#tap_en").hide();
			}
		});
	});
</script>

