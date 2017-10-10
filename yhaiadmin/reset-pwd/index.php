<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');

?>
<title>Change Password</title>

<script>
$(document).ready(function(e) {
	$("#chngpswd").hide();
    $("#passwordform").validate({
		rules:
		{
			newpassword:
			{
				required: true,
			},
			newpassword2:
			{
				required: true,
				equalTo:"#newpassword",
			}
			
		}		
	});
	
	
	$(document).on("click","#resetbtn", function()
	{
		if($("#passwordform").valid())
		{
			var password1=$("#newpassword").val();
		var password2=$("#newpassword2").val();
		if(password1!= password2)
		{
			
		}
		else
		{
			$.ajax({
				type:"POST",
				url:"resetpwd-curd.php",
				data:{password1:password1},
				async:false,
				success: function(data){
					//alert(data);
					$("#chngpswd").show();
				/*	
				$("#err-msg").addClass("alert alert-success text-success");
			$("#err-msg").html("<span class='glyphicon glyphicon-ok'> <strong> Password Change SuccessFully</strong> </span>");*/	
					
				}
			});
		}
		}
	});
});
</script>  
  
<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
        <h2><i class=" shortcut-icon fa fa-edit"></i> Change Password </i><span class="clearfix"></span></h2>
         
          <!-- Page heading -->
          <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
                
       <form class="form-horizontal" role="form" name="passwordform" id="passwordform">
       <div class="widget">
            <div class="widget-header">
              <div class="pull-left">
                <h3 class="header-title">Change Password</h3>
              </div>
              
              <div class="clearfix"></div>
            </div>
            <div class="widget-content">
         <div class="form-group">
         <label class="control-label col-sm-3 mandatory" for="newpassword">New Password:<span>*</span></label>
          <div class="col-sm-4">
            <input type="text" class="form-control input-sm " id="newpassword" name="newpassword" >
          </div>
   		</div>
  
         <div class="form-group">
           <label class="control-label col-sm-3 mandatory" for="newpassword">Re-Type New Password:<span>*</span></label>
           <div class="col-sm-4">
	<input type="password" name="newpassword2" id="newpassword2" class="form-control input-sm"/>
         </div>
         </div>
          
              <div class="clearfix"></div>
            </div>
          </div>
          <div class="form-group">
        <div class="col-sm-offset-4 col-md-5">
            <input type="button" id="resetbtn" name="resetbtn" class="btn btn-success" value="UPDATE">	

         </div>
         </div>
         <div class="alert alert-success" role="alert" style="margin-bottom:0;" id="chngpswd">
                        <p style="font:12pt Arial, Helvetica, sans-serif;">Password changed Successfully!</p>
                        
                      </div>
         
         <div class="form-group">
         <div id="btn1">
           
         </div>
         <div class="clearfix"></div>
         </div>
         <div id="err-msg"></div>
         </form>
      </div>
    
     </div>
    </div>
  </div>
</div>



<?php include(ADMIN_INCLUDE.'/footer.php') ?>
