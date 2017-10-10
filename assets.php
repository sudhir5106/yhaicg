<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();
 $selid=base64_decode($_REQUEST['id']);
 
 $getUnitname=$db->ExecuteQuery("SELECT Unit_Name FROM unit_master WHERE Unit_Id='".$selid."' ");


   $Getassets=$db->ExecuteQuery("SELECT Asset_Id,Asset_Name,Asset_Detail,Images FROM assets WHERE Unit_Id='".$selid."' ORDER BY Asset_Id DESC");
 ?>
 <div class="container">
 <section class="content-header">
   <h1>Assets</h1>
    <ol class="breadcrumb">
      <li><!--<a href="<?php echo LINK_CUSTOMER;?>/myaccount"><i class="fa fa-user"></i> My Account</a>-->Unit</li>
      <li ><?php echo $getUnitname[1]['Unit_Name'];?></li>
      <li class="active">Assets</li>
    </ol>
  </section>
  </div>


    
    
     <main>
      
      <div>
    <div class="container">
    <div class="box-main">
          <div class="row">
         <!-- /////////////left bar containt here-->
          <div class="col-sm-8 col-md-9">
          
          <div class="row">
          
           <?php foreach($Getassets as $GetassetsVal)
		  {?>
          <div class="box-gray-full">
      <div class="col-sm-2">
            <?php if($GetassetsVal['Images']!=""){?><img width="100" height="100" src="<?php echo PATH_IMAGE_UPLOAD."/assets/thumb/".$GetassetsVal['Images'];?>" alt="" /><?php } ?>
          </div>
          <div class="col-sm-10">
        
         
          <h3><?php echo $GetassetsVal['Asset_Name'];?></h3>
        <p> <?php echo $GetassetsVal['Asset_Detail'];?></p>
          </div>
         
            
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