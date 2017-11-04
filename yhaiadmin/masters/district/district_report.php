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
   						url: "district_report.php",  
    					data: str,  
						async: false,
    					success: function(value) {  $("#add").html(value);}
						});//eof ajax
	});
	});
</script>

<form name="planresult" id="planresult">
  <?php
  	
	
 @$sql="SELECT * FROM district_master ORDER BY District_id ASC";
	
	
$getDistrict=$db->ExecuteQuery($sql);
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
		if($getDistrict){
  ?>
  <table class="table table-striped table-bordered table-hover" >
    <thead>
      <tr>
        <th>S.No</th>
        <th>District Name</th>
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
        <td><?php echo $i; ?></td>
        <td><?php echo $Val['District_name']; ?></td>
        <td> 
       <button type="button" id="editbtn" class="btn btn-success btn-sm" onclick="window.location.href='edit_district.php?id=<?php echo $Val['District_id'];?>'" > <span class="glyphicon glyphicon-edit"></span> Edit </button>
       
        <button type="button" id="<?php echo $Val['District_id'];?>" class="btn btn-warning btn-sm delete" > <span class="glyphicon glyphicon-remove-sign"></span> Delete </button>
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
            <th>Designation Name</th>
            <th>Designation Order</th>
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
  <input type="hidden" name="page" id="page" value="1"/>
</form>
