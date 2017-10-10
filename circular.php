<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();
 $getcircular=$db->ExecuteQuery("SELECT Circular_File_Name,Circular_Name,Circular_Detail,Circular_Date FROM circular CR INNER JOIN circular_file CF ON CF.Circular_Id=CR.Circular_Id  ORDER BY CR.Circular_Date DESC");
 ?>
 
 <div class="container">
 <section class="content-header">
    <h1>Circular</h1>
    <ol class="breadcrumb">
      <li>Home</li>
    	<li class="active">Circular</li>
    </ol>
  </section>
  </div>

    
    
    
    <main>
      
   
    <div class="container">
    <div class="box-main">
          <div class="row">
         <!-- /////////////left bar containt here-->
          <div class="col-sm-8 col-md-9">
        <?php foreach($getcircular as $Circularval)
			{?>
            <div class="circular-box">
           <?php if($Circularval['Circular_Date']!='0000-00-00'){?>  <div><h4><?php echo $Circularval['Circular_Name'];?> (<?php echo date('d-m-Y',strtotime($Circularval['Circular_Date']));?>)</h4></div><?php }?>
                
                 <p><?php echo $Circularval['Circular_Detail'];?> </p>
            
              <?php if($Circularval['Circular_File_Name']!=""){?><a href="<?php echo PATH_LINK."/uploadfile/".$Circularval['Circular_File_Name'];?>" download ><div><?php echo $Circularval['Circular_File_Name'];?>&nbsp;<i class="fa fa-download"></i></div></a>
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