<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/ps_pagination.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();
 $con  = mysql_connect(SERVER, DBUSER, DBPASSWORD);
 $rows_per_page=ROWS_PER_PAGE;
 $totpagelink=PAGELINK_PER_PAGE;

$sql="SELECT tourist_places.Title, tourist_places.About_Place,tourist_places.Image, district_master.District_id,district_master.District_name FROM tourist_places  LEFT JOIN district_master ON (district_master.District_id = tourist_places.District_id)";
// $res = $db->ExecuteQuery("SELECT Title, About_Place, Image FROM tourist_places");
$res = $db->ExecuteQuery($sql);
 ?>
 <script type="text/javascript"  src="js/tourist.js"></script>
 
<div class="container">
 <section class="content-header">
    <h1>Tourist Places</h1>
    <ol class="breadcrumb">
      <li>Home</li>
    	<li class="active">Tourist Places</li>
    </ol>
  </section>
  </div>
    

<main>      
    <form name="planresult" id="planresult">
        <div class="container">
       
            <div class="box-main">
                  <div class="row">
                     <!-- /////////////left bar containt here-->
                      <div class="col-sm-8 col-md-9">
                        <div>
                            District:
                            <select class="form-control input-sm mandatory" name="district" id="district">
                                <option>select any</option>
                                <?php foreach($res as $val){ ?> <option value="<?php echo $val['District_id'];?>"><?php echo $val['District_name'];?></option><?php }?>
                            </select>
                       </div>
                        <div class="head-title">Places for Visit in Chhattisgarh</div>
                          
                        <div id="replace_content">   
                        <?php foreach($res as $val){ ?>
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
                    </div>
                      <!--//////////////right bar containt here-->
                      <div class="col-sm-4 col-md-3">
                        <?php include "sidebar.php";?>
                      </div>
                  </div>
            </div>
        </div>
  	</form>
</main>

    <?php include(PATH_INCLUDE.'/footer.php'); ?>