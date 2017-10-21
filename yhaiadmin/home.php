<?php
require('../config.php');
include_once(ADMIN_INCLUDE.'/header.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');?>
<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
     
     <div class="widget">
      <div class="widget-header"> <i class="icon-bookmark"></i>
        <h3>Dashboard</h3>
      </div>
      <!-- /widget-header -->
      
      <div class="widget-content">
        <div class="row">          
          
          <div class="col-md-6 ">
            <div class="dashboard-link">
             <h4>Shortcut Links</h4>
             <div class="shortcuts"> 
             <a href="<?php echo MASTERS_LINK_CONTROL?>/unit-master" class="shortcut" ><i class="shortcut-icon fa fa-building"></i>  <span class="shortcut-label">Unit Master</span> </a>
             <a href="<?php echo MASTERS_LINK_CONTROL?>/designation-master" class="shortcut" > <i class="shortcut-icon fa fa-university"></i>  <span class="shortcut-label">Designation Master</span></a>

             <a href="<?php echo PATH_ADMIN?>/masters/membership-fees" class="shortcut" ><i class="shortcut-icon fa fa-inr"></i>  <span class="shortcut-label">Membership Fees</span> </a>
              
             <a href="<?php echo PATH_ADMIN?>/members" class="shortcut"><i class="shortcut-icon fa fa-users" aria-hidden="true"></i>  <span class="shortcut-label">Members</span> </a>
              
             <a href="<?php echo PATH_ADMIN?>/activity" class="shortcut"><i class="shortcut-icon fa fa-crosshairs" aria-hidden="true"></i> <span class="shortcut-label">Activity</span> </a>              
              
             <a href="<?php echo PATH_ADMIN?>/activity/activity-list.php" class="shortcut"><i class="shortcut-icon fa fa-crosshairs" aria-hidden="true"></i> <span class="shortcut-label">Manage Activity</span> </a> 
              
             <a href="<?php echo PATH_ADMIN?>/assets" class="shortcut" ><i class="shortcut-icon fa fa-cubes" aria-hidden="true"></i>  <span class="shortcut-label">Assets</span> </a>   
                  
             <a href="<?php echo PATH_ADMIN?>/circular" class="shortcut" ><i class="shortcut-icon fa fa-file-text" aria-hidden="true"></i>  <span class="shortcut-label">Circular</span> </a>
                
             <a href="<?php echo PATH_ADMIN?>/news-event" class="shortcut"><i class="shortcut-icon fa fa-newspaper-o" aria-hidden="true"></i>  <span class="shortcut-label">News & Events</span> </a>  
              
             <a href="<?php echo PATH_ADMIN?>/our-hostel" class="shortcut"><i class="shortcut-icon fa fa-hospital-o" aria-hidden="true"></i>  <span class="shortcut-label">Our Hostel</span> </a>  
              
             <a href="<?php echo PATH_ADMIN?>/others" class="shortcut"><i class="shortcut-icon fa fa-ellipsis-h" aria-hidden="true"></i>  <span class="shortcut-label">Others</span> </a>  
          
                
            </div>
            <div class="clearfix"></div>                          
          </div>
          
        </div>
        
        
       
       <!-- /widget-content --> 
     </div>
     
   </div>
   
   
 </div>
 
 
 
 <!-- /span6 -->
 
 <!-- /span6 --> 
</div>
<!-- /row --> 
</div>
<!-- /container --> 
</div>
<!-- /main-inner --> 
</div>







<?php 
include(ADMIN_INCLUDE.'/footer.php');
?>