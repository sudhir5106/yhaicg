<?php
require('config.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
  $db = new DBConn();
  $district=$_POST['district'];
 $res = $db->ExecuteQuery("SELECT Title, About_Place, Image FROM tourist_places where District_Id=".$district);
 
foreach($res as $val){ ?>
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
 
 
<?php
?>