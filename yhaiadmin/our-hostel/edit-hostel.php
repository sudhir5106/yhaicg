<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();
$city=$db->ExecuteQuery("SELECT City_Id,City_Name FROM cities ORDER BY City_Name ASC");

$getHostel=$db->ExecuteQuery("SELECT Hostel_Id,HTL.City_Id,Hostel_Name,Address,Nearby,Contact_Num,Email_Id FROM hostel HTL  
 INNER JOIN cities CT ON CT.City_Id=HTL.City_Id
 WHERE HTL.Hostel_Id='".$_REQUEST['id']."'");
?>


<script type="text/javascript" src="hostel.js"></script>

<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i> Hostel <button onclick="window.history.back()" class="pull-right btn-defulte btn">Go Back</button><span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
      
       
          
          <!-- Page heading -->
          <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          
          <form class="form-horizontal" role="form" id="editHostel" method="post">
        <input type="hidden" id="id" value="<?php echo $getHostel[1]['Hostel_Id'];?>">
          <div class="widget">
            <div class="widget-header">
              <div class="pull-left">
                <h3 class="header-title">Edit Hostel</h3>
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
                    <option value="<?php echo $val['City_Id']?>" <?php if($getHostel[1]['City_Id']==$val['City_Id']) { echo "selected";}?>><?php echo $val['City_Name'];?></option>
                    <?php } ?>
                </select>
                </div>
            </div> 
          
        
        <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="hostelname">Hostel Name <span>*</span>:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control input-sm" id="hostelname" name="hostelname" value="<?php echo $getHostel[1]['Hostel_Name'];?>">
      </div>
   </div>
   
   <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="address">Address<span>*</span>:</label>
      <div class="col-sm-4">
        <textarea class="form-control input-sm" id="address" name="address" placeholder="Address"><?php echo $getHostel[1]['Address'];?></textarea>
      </div>
   </div>
   
   <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="nearby">NearBy :</label>
      <div class="col-sm-4">
       <textarea class="form-control input-sm" id="nearby" name="nearby" placeholder="Near By"><?php echo $getHostel[1]['Nearby'];?></textarea>
      </div>
   </div>
   
    <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="mobile">Contact No:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control input-sm" id="mobile" name="mobile" value="<?php echo $getHostel[1]['Contact_Num'];?>">
      </div>
   </div>
   
   <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="email">Email:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control input-sm" id="email" name="email" value="<?php echo $getHostel[1]['Email_Id'];?>">
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
          <p>Successfully Updated Hostel</p>
    </div>
      </div>
    </div>
  </div>
</div>





         
         


<?php include(ADMIN_INCLUDE.'/footer.php') ?>
