<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');
$db = new DBConn();

$unit=$db->ExecuteQuery("SELECT Unit_Id,Unit_Name FROM unit_master ORDER BY Unit_Name ASC");
?>
<link rel="stylesheet" href="<?php echo PATH_ADMIN_CSS_LIBRARIES?>/jquery-ui.css">

<script src="<?php echo PATH_ADMIN_JS_LIBRARIES?>/jquery-ui.js"></script>


<script type="text/javascript" src="member.js"></script>

<script>
	$( document ).ready(function() {
		
	  var x;
			$.ajax({
			   type: "GET",
			   url: "member-report.php",
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
          <h2 class="text-print"><i class=" shortcut-icon no-print fa fa-university"></i> Member LIST  <a class="btn btn-success btn-sm pull-right" href="index.php"><i class="glyphicon glyphicon-list"></i> <strong>Add Member</strong></a>  <span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
        
       
          
          <!-- Page heading -->
          
          
          <div class="widget">
            <div class="widget-header no-print">
              <div class="pull-left">
                <h3 class="header-title"> Members Detail</h3>
              </div>
              
              <div class="pull-right">
              <form id="search_member" class="form-inline pull-right" method="post">
               <div class="form-group">
                  <select name="search_unitname" id="search_unitname" class="form-control input-sm" >
                    <option value=""> Select Unit Name </option>
                    <option value="">--------------------------</option>
            <?php foreach ($unit as $val){ ?>

                    <option value="<?php echo $val['Unit_Id']; ?>"><?php echo $val['Unit_Name'];?></option>
            
            <?php } ?>

                  </select>
                </div>
        
                <div class="form-group">
                  <select name="search_membertype" id="search_membertype" class="form-control input-sm" >
                      <option value="">Select Member Type</option>
                      <option value="">--------------------------</option>
                      <option value="1">Member</option>
                      <option value="2">Office Bearer</option>
                  </select>
                </div>
                
                <div class="form-group">
                  <select name="membership" id="membership" class="form-control input-sm state" >
                     <option value="">Select Membership</option>
                     <option value="">--------------------------</option>
                     <option value="One Year">One Year</option>
                     <option value="Two Year">Two Year</option>
                     <option value="Three Year">Three Year</option>
                     <option value="Four Year">Four Year</option>
                     <option value="Five Year">Five Year</option>
                     <option value="Life Time">Life Time</option>                 
                 </select>
               </div>
                               
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