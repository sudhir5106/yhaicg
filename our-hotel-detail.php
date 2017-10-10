<?php
include('config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db = new DBConn();
@$city_id=@$_POST['city_id'];

        
	$condition='';
	
	if($city_id!="")
	{
		$condition.=" AND HTL.City_Id='".$city_id."'";
	} 
$hosteldetail=$db->ExecuteQuery("SELECT Hostel_Name,Address,Nearby,Contact_Num,Email_Id,HTL.City_Id,City_Name FROM hostel HTL INNER JOIN cities CT ON CT.City_Id=HTL.City_Id WHERE 1=1".$condition." ORDER BY HTL.City_Id ASC");
?>
</br>
  <div class="row">
 
         
          <?php 
		  if(count($hosteldetail)>0)
		  {
		  $cityid="";
		  foreach($hosteldetail as $hostelVal)
		  {
			  
			  
			  if($cityid==$hostelVal['City_Id'])
			  { 
			  ?>
          <div class="box-gray-full">
     
          <div class="col-sm-10">
          
      
          <h3><?php echo $hostelVal['Hostel_Name'];?></h3>
        
          Address : <?php echo $hostelVal['Address'];  ?></br>
          <?php if($hostelVal['Nearby']!=''){ ?> 
           Near By : <?php echo $hostelVal['Nearby'];?></br>
           <?php }  if($hostelVal['Contact_Num']!=''){ ?>
            Contact No : <?php echo $hostelVal['Contact_Num'];?></br>
            <?php }  if($hostelVal['Email_Id']!=''){ ?>
             Email : <?php echo $hostelVal['Email_Id'];?>
             <?php } ?>
          </div>
         
           
             <div class="clearfix"></div>
          </div>
        
       
          <?php }//end of if
		  
		  else
		  { ?>
          <div class="col-sm-12 col-md-12"><p class="plan-title"><strong><?php echo $hostelVal['City_Name'];?></strong></p></div>
          <div class="clearfix"></div>
          <div class="box-gray-full">
     
          <div class="col-sm-10">
          
         	
         
          <h3><?php echo $hostelVal['Hostel_Name'];?></h3>
        
          Address : <?php echo $hostelVal['Address'];  ?></br>
           <?php if($hostelVal['Nearby']!=''){ ?> 
           Near By : <?php echo $hostelVal['Nearby'];?></br>
           <?php }  if($hostelVal['Contact_Num']!=''){ ?>
            Contact No : <?php echo $hostelVal['Contact_Num'];?></br>
            <?php }  if($hostelVal['Email_Id']!=''){ ?>
             Email : <?php echo $hostelVal['Email_Id'];?>
             <?php } ?>
          </div>
         
           
             <div class="clearfix"></div>
          </div>
          <?php } $cityid=$hostelVal['City_Id'];}//end of foreach
		  }else {?>
          <div class="box-gray-full">
              <div class="col-sm-10">
                <h3 class="text-center">There is no hostel in this city</h3>
              </div>
              <div class="clearfix"></div>
         </div>
         
         <?php } ?>
			  
		  
		  
		  
             </div>        
                
          
          
          
  