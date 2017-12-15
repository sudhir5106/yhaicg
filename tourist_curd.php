<?php require('config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
require_once(PATH_LIBRARIES.'/classes/ps_pagination.php');
  $db = new DBConn();
$con  = mysql_connect(SERVER, DBUSER, DBPASSWORD);
$rows_per_page=10;
$totpagelink=PAGELINK_PER_PAGE;
@$district=$_REQUEST['district'];
?>

<form name="planresult" id="planresult">
<?php 

  if($district){
    $sql="SELECT Title, About_Place, Image FROM tourist_places WHERE District_Id=".$district; 
  }
  else
  {
    $sql="SELECT tourist_places.Title, tourist_places.About_Place,tourist_places.Image, district_master.District_id,district_master.District_name FROM tourist_places  
    LEFT JOIN district_master ON (district_master.District_id = tourist_places.District_id) 
    WHERE 1=1 ORDER BY District_id ASC";
  }

  $result = $db->ExecuteQuery($sql);
  
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

  if($result){

  	if(empty($rs)==false)
	  { ?>

      <div id="replace_content">   
      <?php  while($val=mysql_fetch_array($rs)){ ?>
        <div class="row top-blank fadeInRight wow animated">
           <div class="col-sm-4 col-md-3">
              <img src="<?php echo PATH_IMAGE ?>/tourist-place/thumb/<?php echo $val['Image'] ?>" class="img-responsive" />
           </div>                 
           <div class="col-sm-8 col-md-9">
               <h2><?php echo $val['Title'] ?></h2>
               <?php echo $val['About_Place'] ?>
           </div>
        </div>
      <?php } ?>
      </div>    
      
      <div class="text-center"> 
         <?php echo  $pager->renderFullNav(); ?>
      </div> 
 <?php }?>

 <input type="hidden" name="page" id="page" value="1"/>
 <input type="hidden" name="district" id="district" value="<?php echo $district;?>"/>
 
 </form>

 <?php  } ?>