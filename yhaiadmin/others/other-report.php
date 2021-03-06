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
   						url: "other-report.php",  
    					data: str,  
						async: false,
    					success: function(value) {  $("#add").html(value);}
						});//eof ajax
	});
	});
</script>

<form name="planresult" id="planresult">
  <?php
  	
	$otherType=@$_REQUEST['otherType'];
	
        
	$condition='';
	
	if($otherType!="")
	{
		$condition.=" AND Other_Type_Id='".$otherType."'";
	} 
	
 @$sql="SELECT Other_Id,Other_Name,Other_Detail,
 CASE WHEN Other_Type_Id=1
 THEN 'Apply for Camp Leader'
 WHEN Other_Type_Id=2
 THEN 'Cancellation'
 WHEN Other_Type_Id=3
 THEN 'Refund Process'
 ELSE '' END AS 'OtherType'
 ,Other_Files FROM other_detail WHERE 1=1".$condition." ORDER BY Other_Id DESC";
	
	
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
        <th>Type</th>
        <th>Heading</th>
        <th>Detail</th>
        <th>File</th>
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
        <td><?php echo $Val['OtherType'];?></td>
        <td><?php echo $Val['Other_Name'];?></td>
        <td><?php echo $Val['Other_Detail'];?></td>
         <td> <?php if($Val['Other_Files']!=""){?><a href="<?php echo PATH_LINK."/uploadotherfile/".$Val['Other_Files'];?>" download >&nbsp;<i class="fa fa-download"></i></a><?php echo $Val['Other_Files'];?><?php } ?></td>
        <td><button type="button" id="editbtn" class="btn btn-success btn-sm" onclick="window.location.href='edit-other.php?id=<?php echo $Val['Other_Id'];?>'" > <span class="glyphicon glyphicon-edit"></span> Edit </button>
          <button type="button" class="btn btn-danger btn-sm delete" id="<?php echo $Val['Other_Id']; ?>" name="delete"> <span class="glyphicon glyphicon-trash"></span> Delete </button></td>
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
         <th>S No.</th>
		  <th>Type</th>
        <th>Heading</th>
        <th>Detail</th>
        <th>File</th>
        <th>Action</th>
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
  <input type="hidden" name="page" id="page" value="1"/>
  <input type="hidden" name="otherType" id="otherType" value="<?php echo @$_REQUEST['otherType']; ?>" />
</form>
