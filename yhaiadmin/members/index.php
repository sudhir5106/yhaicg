<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();
$designation=$db->ExecuteQuery("SELECT Designation_Id,Designation_Name FROM designation_master ORDER BY Designation_Order ASC");
$unit=$db->ExecuteQuery("SELECT Unit_Id,Unit_Name FROM unit_master ORDER BY Unit_Name ASC");
?>

<script type="text/javascript" src="member.js"></script>

<link rel="stylesheet" href="<?php echo PATH_ADMIN_CSS_LIBRARIES?>/jquery-ui.css">
<script src="<?php echo PATH_ADMIN_JS_LIBRARIES?>/jquery-ui.js"></script>
<script>
$(function() {
    $( ".datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true,
      yearRange:"-50:+50",
	  dateFormat: 'dd-mm-yy'
	  
    });
  });
</script>

<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i> Members <a class="btn btn-success btn-sm pull-right" href="member-list.php"><i class="glyphicon glyphicon-list"></i> <strong>View Member List</strong></a> <span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
      
       
          
          <!-- Page heading -->
          <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          
           <form class="form-horizontal" role="form" id="insertMember" method="post">
  	<input type="hidden" id="id" value="" />
          <div class="widget">
            <div class="widget-header">
              <div class="pull-left">
                <h3 class="header-title">Add Member</h3>
              </div>
              
              <div class="clearfix"></div>
            </div>
            <div class="widget-content">
            <div class="form-group">
            	<label class="control-label col-sm-3 mandatory" for="unitname">Unit Name<span>*</span></label>
                <div class="col-sm-4">
                <select name="unitname" id="unitname" class="form-control input-sm">
                	<option value="">Select Unit Name</option>
                   	<?php foreach($unit as $val){?>
                    <option value="<?php echo $val['Unit_Id']?>"><?php echo $val['Unit_Name'];?></option>
                    <?php } ?>
                </select>
                </div>
            </div> 
          
   <div class="form-group">
       	<label class="control-label col-sm-3 mandatory" for="designation">Designation<span>*</span>:</label>
          <div class="col-sm-4">
              <select name="designation" id="designation" class="form-control input-sm state" >
                 <option value="">Select Designation</option>
                 <?php foreach($designation as $Val){?>
                 <option value="<?php echo $Val['Designation_Id']?>"><?php echo $Val['Designation_Name']?></option>
                 <?php } ?>
               </select>         
           </div>
        </div>
        
        <div class="form-group">
       	<label class="control-label col-sm-3 mandatory" for="membership">Membership Type<span>*</span>:</label>
          <div class="col-sm-4">
              <select name="membership" id="membership" class="form-control input-sm state" >
                 <option value="">Select Membership</option>
                 <option value="One Year">One Year</option>
                 <option value="Two Year">Two Year</option>
                 <option value="Three Year">Three Year</option>
                 <option value="Four Year">Four Year</option>
                 <option value="Five Year">Five Year</option>
                 <option value="Life Time">Life Time</option>
                 
               </select>         
           </div>
        </div>
        
        <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="membershipdate">Membership Date<span></span>:</label>
      <div class="col-md-4">
                    <input type="text" class="form-control input-sm datepicker" id="membershipdate" name="membershipdate" placeholder="Date" />
                  </div>
   </div>
   <div class="form-group">
       	<label class="control-label col-sm-3 mandatory" for="membertype">Member Type<span>*</span>:</label>
          <div class="col-sm-4">
              <select name="membertype" id="membertype" class="form-control input-sm state" >
                 <option value="">Select Member Type</option>
                 
                 <option value="1">Member</option>
                 <option value="2">Office Barrier</option>
                 
               </select>         
           </div>
        </div>
   
        
         <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="membername">Name <span>*</span>:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control input-sm" id="membername" name="membername" placeholder="Name">
      </div>
   </div>
   
    <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="mobile">Contact No.<span>*</span>:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control input-sm" id="mobile" name="mobile" placeholder="Mobile No.">
      </div>
   </div>
   
   <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="memberdetail">Email:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control input-sm" id="memberdetail" name="memberdetail" placeholder="Email">
      </div>
   </div>
    
   <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="address">Address<span></span>:</label>
      <div class="col-sm-4">
        <textarea class="form-control input-sm" id="address" name="address" placeholder="Address"></textarea>
      </div>
   </div>
   
   
   
  </div>
  
    
             
             
              <div class="clearfix"></div>
            </div>
         
         
          
       
          <div class="form-group">
        <div class="col-sm-offset-4 col-md-5">
            <input type="button" class="btn btn-success btn-sm" id="submit" value="Submit" />
            <input type="reset" class="btn btn-default btn-sm" value="Reset" id="reset"/>
            <img src="<?php echo PATH_IMAGE?>/loading.gif" id="loading" style="display:none" />
        </div>
    </div>
       </form>
        </div>
       </div>
         <div id="dialog" title="Message" style="display:none; text-align:left;">
          <p>Successfully Added Member</p>
    </div>
      </div>
    </div>
  </div>






         
         


<?php include(ADMIN_INCLUDE.'/footer.php') ?>
