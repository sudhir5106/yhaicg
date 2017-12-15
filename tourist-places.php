<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/ps_pagination.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();
 $con  = mysql_connect(SERVER, DBUSER, DBPASSWORD);
 

$sql="SELECT tourist_places.Title, tourist_places.About_Place,tourist_places.Image, district_master.District_id,district_master.District_name FROM tourist_places  LEFT JOIN district_master ON (district_master.District_id = tourist_places.District_id)";
// $res = $db->ExecuteQuery("SELECT Title, About_Place, Image FROM tourist_places");
$res = $db->ExecuteQuery($sql);
 ?>
 <script type="text/javascript"  src="js/tourist.js"></script>
 

 <script>
 $(document).ready(function()
{  
  $.ajax({
         type:"POST",
         url:"tourist_curd.php",
          async:false,
         success:function(data){  //alert(data);
          
           $('#replace').html(data);
         },
         cache:false,
         contentType:false,
         processData:false,
         
    });// eof ajax
  });
 </script>
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
    
        <div class="container">
       
            <div class="box-main">
                  <div class="row">
                     <!-- /////////////left bar containt here-->
                      <div class="col-sm-8 col-md-9">
                        <div class="head-title">
                          <div class="col-sm-6">Places for Visit in Chhattisgarh</div>
                          <div class="col-sm-6">
                                <select class="form-control input-sm mandatory" name="district" id="district">
                                    <option value="">Filter by District</option>
                                    <option value="">---------------------</option>

                                    <?php foreach($res as $val){ ?> 
                                      
                                      <option value="<?php echo $val['District_id'];?>"><?php echo $val['District_name'];?></option>

                                    <?php }?>

                                </select>
                          </div>
                          <div class="clearfix"></div>
                        </div>
                        
                        <div id="replace">
                       
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