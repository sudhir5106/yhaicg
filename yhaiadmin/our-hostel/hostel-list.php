<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');
$db = new DBConn();

$city=$db->ExecuteQuery("SELECT City_Id,City_Name FROM cities ORDER BY City_Name ASC");
?>
<link rel="stylesheet" href="<?php echo PATH_ADMIN_CSS_LIBRARIES?>/jquery-ui.css">

<script src="<?php echo PATH_ADMIN_JS_LIBRARIES?>/jquery-ui.js"></script>


<script type="text/javascript" src="hostel.js"></script>

<script>
	$( document ).ready(function() {
		
	  var x;
			$.ajax({
			   type: "GET",
			   url: "hostel-report.php",
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
          <h2 class="text-print"><i class=" shortcut-icon no-print fa fa-university"></i> Hostel LIST  <a class="btn btn-success btn-sm pull-right" href="index.php"><i class="glyphicon glyphicon-list"></i> <strong>Add Hostel</strong></a>  <span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
        
       
          
          <!-- Page heading -->
          
          
          <div class="widget">
            <div class="widget-header no-print">
              <div class="pull-left">
                <h3 class="header-title"> Hostel Detail</h3>
              </div>
              
              <div class="pull-right">
              <form id="search_member" class="form-inline pull-right" method="post">
               <div class="form-group">
          <select name="search_cityname" id="search_cityname" class="form-control input-sm" >
            <option value=""> Select City Name </option>
            <?php
                     foreach ($city as $val)
                     { ?>
            <option value="<?php echo $val['City_Id']; ?>"><?php echo $val['City_Name'];?></option>
            <?php } ?>
          </select>
        </div>
        <div class="form-group"> &nbsp;&nbsp;&nbsp; </div>
 
                       
        <div class="form-group">
          <input type="button" name="search1" id="search1" value="Search" class="btn btn-danger btn-sm">
          <input type="reset" name="reset" id="resetsearch" value="Search All" class="btn btn-default btn-sm" onclick="location.reload()">   	
        </div>
      
      </form>
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