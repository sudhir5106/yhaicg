<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');
$db = new DBConn();

?>
<link rel="stylesheet" href="<?php echo PATH_ADMIN_CSS_LIBRARIES?>/jquery-ui.css">
<script src="<?php echo PATH_ADMIN_JS_LIBRARIES?>/jquery-ui.js"></script>
<script src="<?php echo PATH_ADMIN_JS_LIBRARIES;?>/jquery.validate.js" type="text/javascript"></script>
<script type="text/javascript" src="circular.js"></script>
<script>
	$( document ).ready(function() {
		
	  var x;
			$.ajax({
			   type: "GET",
			   url: "circular-report.php",
			   async: false,
			   success: function(data){ //alert(data);
				   x=data;
				   $('#add').html(data);
			   }
			   });
	});
	</script>
<!--Auto Complete Function Ends-->
<div class="main">
<div class="main-inner">
  <div class="container-fluid">
    <div class="widget">
      <div class="page-head">
        <h2 class="text-print"><i class=" shortcut-icon no-print fa fa-university"></i> Circular LIST <a class="btn btn-success btn-sm pull-right" href="index.php"><i class="glyphicon glyphicon-list"></i> <strong>Add Circular</strong></a> <span class="clearfix"></span></h2>
        <div class="clearfix"></div>
      </div>
      
      <!-- Page heading -->
      
      <div class="widget">
        <div class="widget-header no-print">
          <div class="pull-left">
            <h3 class="header-title"> Circular Detail</h3>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="widget-content print-padding">
          <div class="table-responsive" id="add">
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<?php 
include(ADMIN_INCLUDE.'/footer.php');
?>
