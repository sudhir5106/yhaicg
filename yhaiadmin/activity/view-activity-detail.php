<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();
 @$sql="SELECT Activity_Id,Activity_Name,Activity_Date,Images,Unit_Name,Activity_Detail,Current_Activity_Date	FROM activity ATY 
 INNER JOIN unit_master UM ON UM.Unit_Id=ATY.Unit_Id 
 WHERE Activity_Id='".$_REQUEST['id']."' ";
 $getactivity=$db->ExecuteQuery($sql);

?>


<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i> Activity Detail<span class="clearfix"></span></h2>
          
          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          
           
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title"></h3>
                  
                </div>
                <div class="pull-right col-sm-6">
                <button onclick="window.history.back()" class="pull-left no-print btn-defulte btn" >Go Back</button>
                <div>&nbsp;&nbsp;</div>
                
                <button class="btn-print no-print btn-defulte btn" style=" margin-right:15px;" type="button"  value="Print" onclick="window.print();"> <i class="fa fa-print"></i> Print</button>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="widget-content">            
      
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Heading</label>
                  <div class="col-sm-7">
                    <?php echo $getactivity[1]['Activity_Name'];?>
                  </div>
                </div>
                 <div class="clearfix"></div>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Unit Name </label>
                  <div class="col-sm-7">
                    <?php echo $getactivity[1]['Unit_Name'];?>
                  </div>
                </div>
                 <div class="clearfix"></div>
                <!--<div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Date</label>
                  <div class="col-sm-7">
                    <?php //echo $getactivity[1]['Activity_Date'];?>
                  </div>
                </div>
                 <div class="clearfix"></div>-->
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Detail</label>
                  <div class="col-sm-7">
                    <?php echo $getactivity[1]['Activity_Detail'];?>
                  </div>
                </div>  
                 <div class="clearfix"></div>
                  <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Current Activity Date</label>
                  <div class="col-sm-7">
                    <?php if($getactivity[1]['Current_Activity_Date']!='0000-00-00'){ echo date('d-m-Y',strtotime($getactivity[1]['Current_Activity_Date']));}?>
                  </div>
                </div>  
                 <div class="clearfix"></div>
                <div class="form-group text-center">
                 <?php if($getactivity[1]['Images']!=""){?>
                <img width="20%" src="<?php echo PATH_IMAGE_UPLOAD."/activity/thumb/".$getactivity[1]['Images'];?>" alt="" />
                <?php } ?>
                </div>                
             
      </div>
             
                
                
            
              <div class="clearfix"></div>
            </div>
            
          
        </div>
      </div>
      
    </div>
  </div>
</div>

</div>
<?php include(ADMIN_INCLUDE.'/footer.php') ?>
