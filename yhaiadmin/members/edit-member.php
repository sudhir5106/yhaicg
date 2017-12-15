<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();
$designation=$db->ExecuteQuery("SELECT Designation_Id,Designation_Name FROM designation_master ORDER BY Designation_Order ASC");

$unit=$db->ExecuteQuery("SELECT Unit_Id,Unit_Name FROM unit_master ORDER BY Unit_Name ASC");

$getMember=$db->ExecuteQuery("SELECT Member_Id,Membership_No,MBR.Unit_Id,MBR.Designation_Id,Member_Name,Unit_Name,Designation_Name,Contact_No,Membership_Type,DATE_FORMAT(Membership_Date,'%d-%m-%Y') as 'Membership_Date',Address,Member_Detail,Member_Type FROM member MBR 
 INNER JOIN designation_master DM ON DM.Designation_Id=MBR.Designation_Id 
 INNER JOIN unit_master UM ON UM.Unit_Id=MBR.Unit_Id
 WHERE MBR.Member_Id='".$_REQUEST['id']."'");
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
          <h2><i class=" shortcut-icon fa fa-user"></i> Member <button onclick="window.history.back()" class="pull-right btn-defulte btn">Go Back</button><span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
      
       
          
          <!-- Page heading -->
          <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          
          <form class="form-horizontal" role="form" id="editMember" method="post">
        <input type="hidden" id="id" value="<?php echo $getMember[1]['Member_Id'];?>">
          <div class="widget">
            <div class="widget-header">
              <div class="pull-left">
                <h3 class="header-title">Edit Member</h3>
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
                    <option value="<?php echo $val['Unit_Id']?>" <?php if($getMember[1]['Unit_Id']==$val['Unit_Id']) { echo "selected";}?>><?php echo $val['Unit_Name'];?></option>
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
                 <option value="<?php echo $Val['Designation_Id']?>" <?php if($getMember[1]['Designation_Id']==$Val['Designation_Id']) { echo "selected='selected'";}?>><?php echo $Val['Designation_Name']?></option>
                 <?php } ?>
               </select>         
           </div>
        </div>
        
        <div class="form-group">
       	<label class="control-label col-sm-3 mandatory" for="membership">Membership Type<span>*</span>:</label>
          <div class="col-sm-4">
          
          
              <select name="membership" id="membership" class="form-control input-sm state" >
                 <option value="">Select Membership</option>
                 <option value="One Year" <?php if($getMember[1]['Membership_Type']=="One Year") { echo "selected";}?>>One Year</option>
                 <option value="Two Year" <?php if($getMember[1]['Membership_Type']=="Two Year") { echo "selected";}?>>Two Year</option>
                 <option value="Three Year" <?php if($getMember[1]['Membership_Type']=="Three Year") { echo "selected";}?>>Three Year</option>
                 <option value="Four Year" <?php if($getMember[1]['Membership_Type']=="Four Year") { echo "selected";}?>>Four Year</option>
                 <option value="Five Year" <?php if($getMember[1]['Membership_Type']=="Five Year") { echo "selected";}?>>Five Year</option>
                 <option value="Life Time" <?php if($getMember[1]['Membership_Type']=="Life Time") { echo "selected";}?>>Life Time</option>
                 
               </select>         
           </div>
        </div>
        
        <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="membershipdate">Membership Date<span></span>:</label>
      
      <div class="col-md-4">
                    <input type="text" class="form-control input-sm datepicker" id="membershipdate" name="membershipdate" value="<?php echo $getMember[1]['Membership_Date'];?>" />
                  </div>
      
      
   </div>
   
    <div class="form-group">
       	<label class="control-label col-sm-3 mandatory" for="membertype">Member Type<span>*</span>:</label>
          <div class="col-sm-4">
              <select name="membertype" id="membertype" class="form-control input-sm state" >
                 <option value="">Select Member Type</option>
                 
                 <option value="1" <?php if($getMember[1]['Member_Type']==1){ echo "selected";}?>>Member</option>
                 <option value="2" <?php if($getMember[1]['Member_Type']==2){ echo "selected";}?>>Office Bearer</option>
                 
               </select>         
           </div>
        </div>

        <div class="form-group">
          <label class="control-label col-sm-3 mandatory" for="membershipNo">Membership No.<span>*</span>:</label>
          <div class="col-sm-4">
              <input type="text" class="form-control input-sm" id="membershipNo" name="membershipNo" placeholder="Membership No" value="<?php echo $getMember[1]['Membership_No'];?>">
           </div>
        </div>
        
         <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="membername">Name <span>*</span>:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control input-sm" id="membername" name="membername" value="<?php echo $getMember[1]['Member_Name'];?>">
      </div>
   </div>
   
    <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="mobile">Contact No.:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control input-sm" id="mobile" name="mobile" value="<?php echo trim($getMember[1]['Contact_No']);?>">
      </div>
   </div>
   
   <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="memberdetail">Email:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control input-sm" id="memberdetail" name="memberdetail" value="<?php echo $getMember[1]['Member_Detail'];?>">
      </div>
   </div>
    
   <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="address">Address<span></span>:</label>
      <div class="col-sm-4">
        <textarea class="form-control input-sm" id="address" name="address" ><?php echo $getMember[1]['Address'];?></textarea>
      </div>
   </div>
   
   
   
  </div>
             
             
              <div class="clearfix"></div>
            </div>
            
            <div class="form-group">
        <div class="col-sm-offset-4 col-md-5">
            <input type="button" class="btn btn-primary btn-sm" id="edit" value="Update" />
            <input type="reset" class="btn btn-default btn-sm" value="Reset" id="reset"/>
            <img src="<?php echo PATH_IMAGE?>/loading.gif" id="loading" style="display:none" />
        </div>
    </div>
            
            </form> 
          </div>
         
      
       </div>
         <div id="dialog" title="Message" style="display:none; text-align:left;">
          <p>Successfully Updated Member</p>
    </div>
      </div>
    </div>
  </div>
</div>





         
         


<?php include(ADMIN_INCLUDE.'/footer.php') ?>
