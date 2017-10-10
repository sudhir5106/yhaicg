<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();
 $selid=base64_decode($_REQUEST['id']);
 
 $getUnitname=$db->ExecuteQuery("SELECT Unit_Name FROM unit_master WHERE Unit_Id='".$selid."' ");

   $GetActivity=$db->ExecuteQuery("SELECT Activity_Id,Activity_Name,Images,SUBSTRING(`Activity_Detail`,1,150) AS Activity_Detail,Current_Activity_Date FROM activity  WHERE Unit_Id='".$selid."' ORDER BY Activity_Id DESC");
 ?>
 <div class="container">
 <section class="content-header">
   <h1>Activity</h1>
    <ol class="breadcrumb" >
      <li><!--<a href="<?php echo LINK_CUSTOMER;?>/myaccount"><i class="fa fa-user"></i> My Account</a>-->Unit</li>
      <li ><?php echo $getUnitname[1]['Unit_Name'];?></li>
      <li class="active">Activity</li>
    </ol>
  </section>
</div>

    <main>
      
    
    <div class="container">
      <div class="box-main">
          <div class="row">
         <!-- /////////////left bar containt here-->
          <div class="col-sm-8 col-md-9">
          <div class="row">
          
          <?php foreach($GetActivity as $GetActivityVal)
		  {?>
          <div class="box-gray-full">
      <div class="col-sm-2">
           <?php if($GetActivityVal['Images']!=""){?><img  src="<?php echo PATH_IMAGE_UPLOAD."/activity/thumb/".$GetActivityVal['Images'];?>" alt=""  height="100" /><?php } ?>
          </div>
          <div class="col-sm-9 col-sm-offset-1">
        
          
          <h3><?php echo $GetActivityVal['Activity_Name'];?></h3>
        <?php if($GetActivityVal['Current_Activity_Date']!='0000-00-00'){?><div><strong><?php echo date('d-m-Y',strtotime($GetActivityVal['Current_Activity_Date']));?></strong></div><?php } ?>
          <?php echo $GetActivityVal['Activity_Detail'];  if($GetActivityVal['Activity_Detail']!=""){?>... <br /><a class="btn view-btn btn-sm " href="activity-detail.php?id=<?php echo base64_encode($GetActivityVal['Activity_Id']);?>">View More</strong></a>
          </div>
         
            <?php } ?>
             <div class="clearfix"></div>
          </div>
        
       
          <?php } ?>
             </div>
          
        </div>
          
          
          
          
        
     <!--//////////////right bar containt here-->
        <div class="col-sm-4 col-md-3">
        <?php include "sidebar.php";?>
        </div>
     
        
      </div>
        </div>
  </div>
  </div>
    </main>
    
    
    
    
    <?php include(PATH_INCLUDE.'/footer.php'); ?>
	
    
    
    