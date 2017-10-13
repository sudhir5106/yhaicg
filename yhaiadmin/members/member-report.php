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
   						url: "member-report.php",  
    					data: str,  
						async: false,
    					success: function(value) {  $("#add").html(value);}
						});//eof ajax
	});
	});
</script>

<form name="planresult" id="planresult">
  <?php
  	
	$unitname=@$_REQUEST['search_unitname'];
	$membertype=@$_REQUEST['search_membertype'];
        
	$condition='';
	
	if($unitname!="")
	{
		$condition.=" AND Unit_Id='".$unitname."'";
	} 
	if($membertype!="")
	{
		$condition.=" AND Member_Type='".$membertype."'";
	} 
	
 @$sql="SELECT Member_Id,Membership_No,Member_Name,Contact_No,Designation_Name,Member_Status,Address,CASE WHEN Member_Type=1 THEN 'Member' WHEN Member_Type=2 THEN 'Office Barrier' ElSE 'Member' END AS Member_Type FROM member MBR 
 INNER JOIN designation_master DM ON DM.Designation_Id=MBR.Designation_Id WHERE 1=1".$condition." ORDER BY Designation_Order ASC";
	
	
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
           <th>Membership No.</th>
           <th>Name</th>
           <th>Designation</th>
           <th>Member Type</th>           
           <th>Contact No</th>
           <th>Address</th>
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
          <td><?php echo $Val['Membership_No'];?></td>
          <td><?php echo $Val['Member_Name'];?></td>
          <td><?php echo $Val['Designation_Name'];?></td>
          <td><?php echo $Val['Member_Type'];?></td>
          <td><?php echo $Val['Contact_No'];?></td>
          <td><?php echo $Val['Address'];?></td>
           
          <td>
         	<button onclick="window.location.href='view-member-list.php?id=<?php echo $Val['Member_Id'];?>'" class="btn btn-success btn-sm"  type="button"> View</button>
          
          	<button type="button" id="editbtn" class="btn btn-success btn-sm" onclick="window.location.href='edit-member.php?id=<?php echo $Val['Member_Id'];?>'" > <span class="glyphicon glyphicon-edit"></span> Edit </button>
          
            <button type="button" class="btn btn-danger btn-sm delete" id="<?php echo $Val['Member_Id']; ?>" name="delete"> <span class="glyphicon glyphicon-trash"></span> Delete </button>
             <?php if($Val['Member_Status']==1)
			 {?>
             <button type="button" class="btn btn-danger btn-sm memberhide" id="<?php echo $Val['Member_Id']; ?>" > Hide </button>
              
             <?php } else{ ?>
             <button type="button" class="btn btn-success btn-sm membershow" id="<?php echo $Val['Member_Id']; ?>" >  Show </button>
           <?php } ?>   
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
           <th>Name</th>
           <th>Designation</th>           
           <th>Contact No</th>
		   <th>Address</th>
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
<input type="hidden" name="search_unitname" id="search_unitname" value="<?php echo @$_REQUEST['search_unitname']; ?>" />
<input type="hidden" name="search_membertype" id="search_membertype" value="<?php echo @$_REQUEST['search_membertype']; ?>" />

</form>
