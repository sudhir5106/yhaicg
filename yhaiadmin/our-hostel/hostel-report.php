<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
require_once(PATH_LIBRARIES.'/classes/ps_pagination.php');

$db = new DBConn();
$con  = mysql_connect(SERVER, DBUSER, DBPASSWORD);
$rows_per_page=ROWS_PER_PAGE;
$totpagelink=PAGELINK_PER_PAGE;

?>

<script>
$(document).ready(function() {
$(".pagination a").click( function(event)
	{		
	event.preventDefault();
	var page=$(this).attr('id');
	
		$("#planresult input[id=page]").val(page);
		var str = $("#planresult").serializeArray();
		
				$.ajax({  
    					type: "GET",  
   						url: "hostel-report.php",  
    					data: str,  
						async: false,
    					success: function(value) {  $("#add").html(value);}
						});//eof ajax
	});
	});
</script>

<form name="planresult" id="planresult">
  <?php
  	
	$cityname=@$_REQUEST['search_cityname'];
	
        
	$condition='';
	
	if($cityname!="")
	{
		$condition.=" AND HTL.City_Id='".$cityname."'";
	} 
	
 @$sql="SELECT Hostel_Id,City_Name,Hostel_Name,Address,Nearby,Contact_Num,Email_Id FROM hostel HTL  
 INNER JOIN cities CT ON CT.City_Id=HTL.City_Id WHERE 1=1".$condition." ORDER BY Hostel_Name ASC";
	

$getUser=$db->ExecuteQuery($sql);
if(isset($_REQUEST['page']) && $_REQUEST['page']>1)
		{
			$i=($_REQUEST['page']-1)*$rows_per_page+1;
		}
		else
		{
			$i=1;
		}
		$pager = new PS_Pagination($con,$sql,$rows_per_page,$totpagelink);
		$rs=$pager->paginate();
		if($getUser){
  ?>


       
         
          <table class="table table-striped table-bordered table-hover" >
      <thead>
        <tr>
           <th>S No.</th>
           <th>City</th>
           <th>Name</th>
            <th>Address</th>
             <th>NearBy</th>           
           <th>Contact No</th>
          
           <th>Action</th>
        </tr>
      </thead>
      <tbody>
         <?php 
		  
		    $i=1;
     
				 if(empty($rs)==false)
		{
		while($Val=mysql_fetch_array($rs)){ ?>
        <tr>
          <td><?php echo $i;?></td>
          <td><?php echo $Val['City_Name'];?></td>
           <td><?php echo $Val['Hostel_Name'];?></td>
           <td><?php echo $Val['Address'];?></td>
           <td><?php echo $Val['Nearby'];?></td>
           <td><?php echo $Val['Contact_Num'];?></td>
           
            
           
          <td>       
          
          <button type="button" id="editbtn" class="btn btn-success btn-sm" onclick="window.location.href='edit-hostel.php?id=<?php echo $Val['Hostel_Id'];?>'" > <span class="glyphicon glyphicon-edit"></span> Edit </button>
          
             <button type="button" class="btn btn-danger btn-sm delete" id="<?php echo $Val['Hostel_Id']; ?>" name="delete"> <span class="glyphicon glyphicon-trash"></span> Delete </button>
             
      </td>
        </tr>
        <?php $i++;}} ?>
      
      </tbody>
  </table>    
        
  
 <div class="text-center">
      <?php echo $pager->renderFullNav() ?>
      </div> 
 <?php  }
 else
 {
	 echo '
	 <table class="table table-hover table-bordered" >
	 <thead>
        <tr>
          <th>S No.</th>
           <th>City</th>
           <th>Name</th>
            <th>Address</th>
             <th>NearBy</th>           
           <th>Contact No</th>
          
           <th>Action</th>
        </tr>
      </thead>
	  <tbody>   
			<tr>
			  <td colspan="6" class="text-center">No Detail Found</td>    
			</tr> 
     </tbody>
	 </table>
	'
	 ;
 }
 ?>
<input type="hidden" name="page" id="page" value="1"/>
<input type="hidden" name="search_cityname" id="search_cityname" value="<?php echo @$_REQUEST['search_cityname']; ?>" />


</form>
