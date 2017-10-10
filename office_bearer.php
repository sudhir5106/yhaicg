<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();
 $selid=base64_decode($_REQUEST['id']);
 $getUnitname=$db->ExecuteQuery("SELECT Unit_Name FROM unit_master WHERE Unit_Id='".$selid."' ");
 
    $Getmemberdetail=$db->ExecuteQuery("SELECT Member_Name,Membership_Type,Contact_No,Designation_Name,Member_Detail FROM member MBR   
  INNER JOIN designation_master DM ON DM.Designation_Id=MBR.Designation_Id
   WHERE Member_Status=1 AND MBR.Unit_Id='".$selid."' AND Member_Type=2 ORDER BY Designation_Order ASC");
 ?>
<div class="container">
 <section class="content-header">
    <h1>Office Bearer</h1>
    <ol class="breadcrumb">
      <li><!--<a href="<?php echo LINK_CUSTOMER;?>/myaccount"><i class="fa fa-user"></i> My Account</a>-->Unit</li>
      <li ><?php echo $getUnitname[1]['Unit_Name'];?></li>
      <li class="active">Office Bearer</li>
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
          
            <?php if($Getmemberdetail){?>
          
         <table class="table table-striped table-bordered table-hover" >
      <thead>
        <tr>
           <th>S No.</th>
           <th>Designation</th>
           <th>Name</th>           
           <th>Contact No</th>
           <th>Email Id</th>
        </tr>
      </thead>
      <tbody>
         <?php 
		 
     
     $i=1;
				 
		foreach($Getmemberdetail as $Val){ ?>
        <tr>
          <td><?php echo $i;?></td>
          <td><?php echo $Val['Designation_Name'];?></td>
           <td><?php echo $Val['Member_Name'];?></td>
           <td><?php echo $Val['Contact_No'];?></td>
          <td><?php echo $Val['Member_Detail'];?></td>
        </tr>
        <?php $i++;} ?>
      
      </tbody>
  </table>    
          
   <?php  }
 else
 {
	 echo '
	 <table class="table table-hover table-bordered" >
	 <thead>
        <tr>
         <th>S No.</th>
           <th>Designation</th>
           <th>Name</th>           
           <th>Contact No</th>
		   <th>Email Id</th>
        </tr>
      </thead>
	  <tbody>   
			<tr>
			  <td colspan="5" class="text-center">No Detail Found</td>    
			</tr> 
     </tbody>
	 </table>
	'
	 ;
 }
 ?>       
          
          
          
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