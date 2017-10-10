<?php 
require('../config.php');
//require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/head.php');
?>
<script>
document.onkeydown = function(event) {
   	if (event.keyCode == 13) {
       $("#login").trigger("click");
  		}
	}
</script>



<script>
$(document).ready(function(){
	$("#msg").hide();
	$("#login").click(function(){
		$("#msg").hide();
		$("#msg").text('');
		var user_name =$("#user").val();
		var password =$("#password").val();
		
		if (user_name=="")
		{
			$("#msg").append("<strong>Warning!</strong> Enter User Name");
			$("#msg").show();
			return false;
		}
		if (password=="")
		{
			$("#msg").append("<strong>Warning!</strong> Enter Password");
			$("#msg").show();
			return false;
		}
		var x;
		$.ajax(
		{
		url:'check-login.php',
		type:'POST',
		data:{user:user_name,password:password},
		async:false,
		success:function(data){//alert(data);
			x=data;
		}
		});
		if(x==1)
		{
		document.location.href="home.php";
		}
		else
		{
			$("#msg").append("<strong>Warning!</strong> Incorrect Username/Password!");
			$("#msg").show();
		}
	});
});
</script>
<div class="container">
    <div class="row">
     <div class="col-md-4 col-md-offset-4">
     
     </div>
        <div class="col-md-4 col-md-offset-4" style="margin-top:50px;">
         <div class="panel panel-default" style="box-shadow: 0px 0px 6px 2px rgba(0, 0, 0, 0.11);">
          <div class="panel-heading text-center"> <strong> <span class="glyphicon glyphicon-lock"></span> Admin Login</strong>

                </div>
            <div class="panel-body">
         <form class="form-horizontal" role="form" id="index" method="post">
   <div class="form-group">
      <label class="control-label col-sm-4 mandatory" for="user">User Name<span>*</span>:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control input-sm" id="user" name="user" placeholder="User Name">
      </div>
   </div>
    <div class="form-group">
      <label class="control-label col-sm-4 mandatory" for="password">Password<span>*</span>:</label>
      <div class="col-sm-8">
        <input type="password" class="form-control input-sm" id="password" name="password" placeholder="Password">
      </div>
   </div>
  
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-4">
            <input type="button" class="btn btn-primary btn-sm" id="login" value="Login" />
        </div>
    </div>
  
</form>
<div id="msg"></div>
         </div>
         
         </div>
        </div>
        </div>
</div>
   
</body>
</html>