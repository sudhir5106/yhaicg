<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();
 $getcircular=$db->ExecuteQuery("SELECT Other_Name,Other_Detail,Other_Files FROM other_detail WHERE Other_Type_Id=1 ORDER BY Other_Id DESC");
 ?>
<div class="container">
 <section class="content-header">
    <h1>Apply for Camp Leader</h1>
    <ol class="breadcrumb">
      <li>Other</li>
    	<li class="active">Apply for Camp Leader</li>
    </ol>
  </section>
  </div>

<main>
      
      <div>
    <div class="container">
     <div class="box-main">
          <div class="row">
         <!-- /////////////left bar containt here-->
          <div class="col-sm-8 col-md-9">
        <?php foreach($getcircular as $Circularval)
			{?>
            <div class="circular-box">
            <div><h4><?php echo $Circularval['Other_Name'];?></h4></div>
                
                 <p><?php echo $Circularval['Other_Detail'];?> </p>
            
              <?php if($Circularval['Other_Files']!=""){?><a href="<?php echo PATH_LINK."/uploadotherfile/".$Circularval['Other_Files'];?>" download ><div><?php echo $Circularval['Other_Files'];?>&nbsp;<i class="fa fa-download"></i></div></a>
<?php } ?></br>
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