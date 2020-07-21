<div class="page-footer">
    <div class="page-footer-inner">All copyright reserved to 2018 &copy; Noqtaplus</a> &nbsp;&nbsp;

    </div>
    <div class="scroll-to-top">
        <i class="icon-arrow-up"></i>
    </div>
</div>
<audio class="sound-playerx">
<source src="{{ASSETS}}/alert.mp3"></source>
</audio>
<script type="text/javascript">
var old_count;
   $.ajax({
        type : "POST",
        url : "{{ASSETS}}/load.php",
        success : function(data){
            
           
              old_count = data;   
              
               

           
        }
    });
setInterval(function(){    
    $.ajax({
        type : "POST",
        url : "{{ASSETS}}/load.php",
        success : function(data){
            if (data > old_count) {
              //  alert('new record on i_case');
              old_count = data;   
                //   document.getElementById(sound).play();
               
                    $('.sound-playerx').get(0).play();
                   
               

            }
        }
    });
},1000);
</script>