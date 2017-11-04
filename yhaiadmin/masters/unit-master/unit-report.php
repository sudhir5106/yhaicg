<?php
include('../../../config.php');
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
   						url: "unit-report.php",  
    					data: str,  
						async: false,
    					success: function(value) {  $("#add").html(value);}
						});//eof ajax
	});
	
});
	
</script>

<form name="planresult" id="planresult">
<?php 
@$sql="SELECT Unit_Id,Unit_Name,Description,status FROM unit_master ORDER BY Unit_Id DESC";	
	
$getUnit=$db->ExecuteQuery($sql);
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
		if($getUnit){
  ?>
<table class="table table-hover table-bordered" id="addempty">
  <thead>
    <tr>
      <th>S.No</th>
      <th>Unit Name</th>
      <th>About Unit</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <?php
	if(empty($rs)==false)
	{
		while($Val=mysql_fetch_array($rs)){ ?>
    <tr>
      <td><?php echo $i; ?></td>
      <td><?php echo $Val['Unit_Name']; ?> <input type="hidden"  name="" id="" value="<?php echo $Val['Unit_Id']; ?>"/></td>
      <td><?php echo $Val['Description'];?></td>
      <td>
       	<button type="button" id="editbtn" class="btn btn-success btn-sm" onclick="window.location.href='edit-unit.php?id=<?php echo $Val['Unit_Id']; ?>'"><span class="glyphicon glyphicon-edit"></span> Edit</button>
      
       	<button type="button" id="<?php echo $Val['Unit_Id']; ?>" class="btn btn-danger delete"><span class="glyphicon glyphicon-remove-sign"></span> Delete</button>      
      
       <button id="status-<?php echo $Val['Unit_Id'];?>" type="button" class="status btn btn-xs <?php echo $Val['status']=='1'?"btn-warning":"btn-primary";?> "> <?php echo $Val['status']=='1'?"hide":"show";?></button>	  
      </td>
    </tr>
    <?php $i++;}} ?>
  </tbody>
</table>
<div class="text-center"> <?php echo $pager->renderFullNav() ?> </div>
<?php  }
 else
 {
	 echo '
	 <table class="table table-hover table-bordered" >
	 <thead>
        <tr>
          <th>S.No</th>
            <th>Unit Name</th>
            <th>About Unit</th>
            <th>Action</th>
        </tr>
      </thead>
	  <tbody>   
			<tr>
			  <td colspan="4" class="text-center">No Detail Found</td>    
			</tr> 
     </tbody>
	 </table>
	'
	 ;
 }
 
 
 

 ?>
 
 <div id="display"></div>