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
   						url: "newsandevent_report.php",  
    					data: str,  
						async: false,
    					success: function(value) {  $("#add").html(value);}
						});//eof ajax
	});
	});
</script>

<form name="planresult" id="planresult">
  <?php
  	
	
 @$sql="SELECT News_And_Events_Id,News_Heading,News_Date,Images,Description,DATE_FORMAT(Event_Last_Date,'%d-%m-%Y') as 'EventLastDate' FROM news_and_events ORDER BY News_And_Events_Id DESC";
	
	
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
        <th>Heading</th>
        <th>Timeline</th>
        <th>Detail</th>
        <th>Show Last Date</th>
        <th>Image</th>
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
        <td><?php echo $Val['News_Heading'];?></td>
        <td><?php echo $Val['News_Date'];?></td>
        <td><?php echo $Val['Description'];?></td>
        <td><?php echo $Val['EventLastDate'];?></td>
        <td><?php if($Val['Images']!=""){?>
          <img width="30" src="<?php echo PATH_IMAGE_UPLOAD."/newsevent/thumb/".$Val['Images'];?>" alt="" />
          <?php } ?></td>
        <td><button type="button" id="editbtn" class="btn btn-success btn-sm" onclick="window.location.href='edit-newsevent.php?id=<?php echo $Val['News_And_Events_Id'];?>'" > <span class="glyphicon glyphicon-edit"></span> Edit </button>
          <button type="button" class="btn btn-danger btn-sm delete" id="<?php echo $Val['News_And_Events_Id']; ?>" name="delete"> <span class="glyphicon glyphicon-trash"></span> Delete </button></td>
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
           <th>Heading</th>
           <th>Timeline</th>          
          <th>Detail</th>
           <th>Show Last Date</th>
          <th>Image</th>                
         <th>Action</th>
        </tr>
      </thead>
	  <tbody>   
			<tr>
			  <td colspan="7" class="text-center">No Detail Found</td>    
			</tr> 
     </tbody>
	 </table>
	'
	 ;
 }
 ?>
  <input type="hidden" name="page" id="page" value="1"/>
</form>
