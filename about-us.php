<?php require('config.php');

 include(PATH_INCLUDE.'/header.php');

 require_once(PATH_LIBRARIES.'/classes/DBConn.php');

 $db = new DBConn();

 $selid=base64_decode($_REQUEST['id']);



   $Getunit=$db->ExecuteQuery("SELECT Unit_Id,Unit_Name,Description FROM unit_master WHERE Unit_Id=".$selid);

 ?>



<div class="container">

  <section class="content-header">

    <h1>About <?php echo $Getunit[1]['Unit_Name'];?></h1>

    <ol class="breadcrumb">

      <li><!--<a href="<?php //echo LINK_CUSTOMER;?>/myaccount"><i class="fa fa-user"></i> My Account</a>-->Unit</li>

      <li ><?php echo $Getunit[1]['Unit_Name'];?></li>

      <li class="active">About Us</li>

    </ol>

  </section>

</div>

<main>

	<div class="container">

<div class="box-main">

  <div class="row"> 

    <!-- /////////////left bar containt here-->

    <div class="col-sm-8 col-md-9">

    <h2 class="line-title"><span><?php echo $Getunit[1]['Unit_Name'];?></span> </h2>



     <?php echo $Getunit[1]['Description'];?> </div>

    

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

