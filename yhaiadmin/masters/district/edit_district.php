<?php
	include('../../../config.php');
	require_once(PATH_LIBRARIES.'/classes/DBConn.php');
	include(ADMIN_INCLUDE.'/header.php');
	$db=new DBConn();
	 $res=$db->ExecuteQuery("SELECT * FROM district_master WHERE District_id=".$_REQUEST['id']);
	
?>
<script src="district.js"></script>

<div class="main">
  <div class="main-inner">
   <div class="container-fluid">
     <div class="widget">
       <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i>Designation
            <button onclick="window.history.back()" class="pull-right btn-defulte btn">Go Back</button>
            <span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
        
      
         
            
            <!--script src="<!--?php echo PATH_ADMIN_JS_LIBRARIES ?>/jquery-ui.js"></script--> 
            <!--script src="<!--?php echo PATH_ADMIN_JS_LIBRARIES ?>/jquery.validate.min.js"></script-->
           <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">  
            <form class="form-horizontal" role="form" id="updatedistrict" method="post">
              <input type="hidden" id="id" value="<?php echo $district=$res[1]['District_id']; ?>" />
              <div class="widget">
                <div class="widget-header">
                  <div class="pull-left">
                    <h3 class="header-title">Edit District</h3>
                  </div>
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content"> 
                  
                  <!--------------------- Designation Name ------------>
                  <div class="form-group">
                    <label class="control-label col-sm-3 mandatory" for="desi_name">District Name<span>*</span>:</label>
                    <div class="col-sm-4">
                      <input type="text" name="destrict_name" class="form-control input-sm" id="destrict_name" value="<?php 
					   echo $res[1]['District_name']; ?>" />
                    </div>
                  </div>
                  <div class="clearfix"></div>
                </div>
                <!--Weget content--> 
              </div>
              <div class="form-group">
              <div class="col-sm-offset-4 col-md-5">
                <input type="button" class="btn btn-success btn-sm" id="edit" value="Update" />
                  <input type="reset" class="btn btn-default btn-sm" value="Reset" id="reset"/>
                <img src="<?php echo PATH_IMAGE?>/loading.gif" id="loading" style="display:none" /> </div>
            </div>
              
              
            </form>
       <div id="dialog" title="Message" style="display:none; text-align:left;">
            <p>Successfully Updated District</p>
          </div>
      </div>
      </div>
      <!-- row --> 
    </div>
    <!--- container---> 
  </div>
  <!-- main-inner --> 
</div>
<!-- main --->

<?php include(ADMIN_INCLUDE.'/footer.php');?>
