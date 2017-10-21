<?php 
include(ADMIN_INCLUDE.'/head.php');
if(empty($_SESSION['admin']))
{?>
<script>
		window.location.href = '<?php echo PATH_ADMIN.'/index.php'; ?>';
	</script>
<?php } ?>

<!--<style type="text/css">
	.navbar-inverse {
		margin: 0px;
		padding:5px 20px 5px 20px;
	}
	ul.nav li.dropdown:hover ul.dropdown-menu{ display: block; }
	.nav .dropdown-toggle .caret { display:none; }
</style>-->

 
<script>
	$(document).ready(function() {
		$("#logoff").click(function(){
			$.ajax(
			{
				url:'<?php echo PATH_ADMIN.'/logout.php'; ?>',
				type:'POST',
				data:{},
				async:false,
				success:function(data){
				if (data=="true")
					{
						document.location.href='<?php echo PATH_ADMIN.'/index.php'; ?>';
					}
				}
			});//eof ajax
		});// eof click function
	});// eof ready function
</script>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
	
});

</script>




<header class="no-print">
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container-fluid">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button> 
    <a class="brand" href="index.php">YHAICG</a>
      <div class="nav-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav pull-right">
          
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="fa fa-user"></i> Admin<b class="caret"></b></a>
            <ul class="dropdown-menu">
            <li><a href="<?php echo PATH_ADMIN?>/reset-pwd/index.php" ><i class="glyphicon glyphicon-edit"></i>  Change Password</a></li>
                <li><a href="javascript:;"  id="logoff"><i class="fa fa-times-circle"></i>  Exit</a></li>
            </ul>
           
          </li>
          
        </ul>
        
      </div>
      <!--/.nav-collapse --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /navbar-inner --> 
</div>
<div class="subnavbar">
  <div class="subnavbar-inner">
    <div class="container-fluid container" style="width:100% !important;" >
    
      <ul class="mainnav multi-level">
        <li><a href="<?php echo PATH_ADMIN?>/home.php" ><i class="fa fa-tachometer"></i> <span> Dashboard</span></a> </li>
        <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-th-large"></i> <span>Masters</span> <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="<?php echo MASTERS_LINK_CONTROL?>/unit-master">Unit Master</a></li>
      		  <li><a href="<?php echo MASTERS_LINK_CONTROL?>/designation-master">Designation Master</a></li>
            <li><a href="<?php echo MASTERS_LINK_CONTROL?>/membership-fees">Membership Fees</a></li>
            <!--<li><a href="<?php echo MASTERS_LINK_CONTROL?>/city-master">City Master</a></li>-->
            
          </ul>
           <span class="clearfix"></span>
        </li>
        
         <li><a href="<?php echo PATH_ADMIN?>/members" ><i class="fa fa-users" aria-hidden="true"></i> <span> Members</span></a> </li>
         
         
       <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-crosshairs" aria-hidden="true"></i> <span>Activity</span> <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="<?php echo PATH_ADMIN?>/activity">Activity</a></li>
      		<li><a href="<?php echo PATH_ADMIN?>/activity/activity-list.php">Manage Activity</a></li>
            
          </ul>
           <span class="clearfix"></span>
        </li>
        
        <li><a href="<?php echo PATH_ADMIN?>/assets" ><i class="fa fa-cubes" aria-hidden="true"></i> <span> Assets</span></a> </li>
        
        <li><a href="<?php echo PATH_ADMIN?>/circular" ><i class="fa fa-file-text" aria-hidden="true"></i> <span> Circular</span></a> </li>
        
        <li><a href="<?php echo PATH_ADMIN?>/news-event" ><i class="fa fa-newspaper-o" aria-hidden="true"></i> <span> News & Events</span></a> </li>

        <li><a href="<?php echo PATH_ADMIN?>/latestnews" ><i class="fa fa-newspaper-o" aria-hidden="true"></i> <span> Latest News</span></a> </li>
        
        <li><a href="<?php echo PATH_ADMIN?>/our-hostel" ><i class="fa fa-hospital-o" aria-hidden="true"></i> <span> Our Hostel</span></a> </li>

        <li><a href="<?php echo PATH_ADMIN?>/discount" ><i class="fa fa-tags" aria-hidden="true"></i> <span> Discount</span></a> </li>

        <li><a href="<?php echo PATH_ADMIN?>/slides"><i class="fa fa-slideshare" aria-hidden="true"></i> <span>Slides</span></a></li>
        
        <li><a href="<?php echo PATH_ADMIN?>/others" ><i class="fa fa-ellipsis-h" aria-hidden="true"></i> <span> Others</span></a> </li>
        
        <li class="dropdown"></li>
        
        
      </ul>
    </div>
  
    <!-- /container --> 
  </div>
  <!-- /subnavbar-inner --> 
</div>
</header>
       
  
  

    
  










