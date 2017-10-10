<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();

$city=$db->ExecuteQuery("SELECT City_Id,City_Name FROM cities ORDER BY City_Name ASC");
?>

<script type="text/javascript" src="hostel.js"></script>



<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i> Our Hostels <a class="btn btn-success btn-sm pull-right" href="hostel-list.php"><i class="glyphicon glyphicon-list"></i> <strong>View Hostel List</strong></a> <span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
      
       
          
          <!-- Page heading -->
          <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          
           <form class="form-horizontal" role="form" id="insertHostel" method="post">
  	<input type="hidden" id="id" value="" />
          <div class="widget">
            <div class="widget-header">
              <div class="pull-left">
                <h3 class="header-title">Add Hostel</h3>
              </div>
              
              <div class="clearfix"></div>
            </div>
            <div class="widget-content">
            <div class="form-group">
            	<label class="control-label col-sm-3 mandatory" for="cityname">City Name<span>*</span></label>
                <div class="col-sm-4">
                <select name="cityname" id="cityname" class="form-control input-sm">
                	<option value="">Select City Name</option>
                   	<?php foreach($city as $val){?>
                    <option value="<?php echo $val['City_Id']?>"><?php echo $val['City_Name'];?></option>
                    <?php } ?>
                </select>
                </div>
            </div> 
          
                
         <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="hostelname">Hostel Name <span>*</span>:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control input-sm" id="hostelname" name="hostelname" placeholder="Name">
      </div>
   </div>
   
   <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="address">Address<span>*</span>:</label>
      <div class="col-sm-4">
        <textarea class="form-control input-sm" id="address" name="address" placeholder="Address"></textarea>
      </div>
   </div>
   
   <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="nearby">NearBy :</label>
      <div class="col-sm-4">
       <textarea class="form-control input-sm" id="nearby" name="nearby" placeholder="Near By"></textarea>
      </div>
   </div>
   
    <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="mobile">Contact No:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control input-sm" id="mobile" name="mobile" placeholder="Mobile No.">
      </div>
   </div>
   
   <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="email">Email:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control input-sm" id="email" name="email" placeholder="Email">
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
          <p>Successfully Added Hostel</p>
    </div>
      </div>
    </div>
  </div>






         
         


<?php include(ADMIN_INCLUDE.'/footer.php') ?>
