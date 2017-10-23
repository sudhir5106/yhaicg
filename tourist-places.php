<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();

 $res = $db->ExecuteQuery("SELECT Title, About_Place, Image FROM tourist_places");
 ?>

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
           
	          <div class="head-title">Places for Visit in Chhattisgarh</div>
	          
	          
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
    
        
     	<!--//////////////right bar containt here-->
        <div class="col-sm-4 col-md-3">
        <?php include "sidebar.php";?>
        </div>
     
        
      </div>
        </div>
  </div>
  </div>
    </main>

    <?php include(PATH_INCLUDE.'/footer.php'); ?>