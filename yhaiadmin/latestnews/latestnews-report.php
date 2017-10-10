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
   						url: "latestnews-report.php",  
    					data: str,  
						async: false,
    					success: function(value) {  $("#add").html(value);}
						});//eof ajax
	});
	});
</script>

<form name="planresult" id="planresult">
 <input type="hidden" name="updateIds" id="updateIds"/>
 <input type="hidden" name="updateValues" id="updateValues"/>
  <?php
  	
	
 @$sql="select * from latest_news order by sortid";
	
	
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
        <th>Title</th>
        <th>Description</th>
        <th>Date</th>
        <th>Action</th>
        <th>Sorting<input type="button"  name="button2" id="button2" value="Update" onclick="updateVal();" /></th>
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
        <td><?php echo $Val['title'];?></td>
        <td><?php echo $Val['description'];?></td>
        <td><?php echo date('d-m-Y',strtotime($Val['dateVar']));?></td>         
        <td><button type="button" id="editbtn" class="btn btn-success btn-sm" onclick="window.location.href='edit-latestnews.php?id=<?php echo $Val['uid'];?>'" > <span class="glyphicon glyphicon-edit"></span> Edit </button>
          <button type="button" class="btn btn-danger btn-sm delete" id="<?php echo $Val['uid']; ?>" name="delete"> <span class="glyphicon glyphicon-trash"></span> Delete </button></td>
          
          <td><label for="sortid"></label>
      <input name="sortid<?php echo $Val['uid'];?>" type="text" id="sortid<?php echo $Val['uid'];?>" readonly value="<?php echo $Val['sortid'];?>" size="5"/>  <input type="checkbox" name="checkIds<?php echo $Val['uid'];?>" id="checkIds<?php echo $Val['uid'];?>" onclick="setId(<?php echo $Val['uid'];?>);"/>
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
         <th>S No.</th>
        <th>Title</th>
        <th>Description</th>
        <th>Date</th>
        <th>Action</th>
		<th>Sorting</th>
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
</form>
