<?php 
	include('../../../config.php');
	require_once(PATH_LIBRARIES.'/classes/DBConn.php');
	include(ADMIN_INCLUDE.'/header.php');
	$db=new DBConn();
	$res=$db->ExecuteQuery("SELECT Unit_Id,Unit_Name,Description FROM unit_master WHERE Unit_Id=".$_REQUEST['id']);
?>

<script src="unit.js"></script>

<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
           <h2><i class=" shortcut-icon fa fa-user"></i>Unit
          <button onclick="window.history.back()" class="pull-right btn-defulte btn">Go Back</button>
            <span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          <form class="form-horizontal" role="form" id="editunit" method="post">
            <input type="hidden" id="id" value="<?php echo $res[1]['Unit_Id']; ?>" />
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title">Edit Unit</h3>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="widget-content"> 
                
                <!--------------------- Unit Name ------------>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="unitname">Unit Name<span>*</span>:</label>
                  <div class="col-sm-4">
                    <input type="text" name="unitname" class="form-control input-sm" id="unitname" value="<?php echo $res[1]['Unit_Name'] ?>" />
                  </div>
                </div>
                
                <!--------------------- Description Entry ------------>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="aboutunit">About Unit:</label>
                  <div class="col-sm-4">
                    <textarea name="aboutunit" class="form-control input-sm" id="aboutunit" ><?php echo $res[1]['Description']; ?></textarea>
                  </div>
                </div>
                <div class="clearfix"></div>
              </div>
              <!--Weget content--> 
            </div>
            <!-- Submit Button -->
            <div class="form-group">
              <div class="col-sm-offset-4 col-md-5">
                <input type="button" class="btn btn-success btn-sm" id="edit" value="Update" />
                <input type="reset" class="btn btn-default btn-sm" value="Reset" id="reset"/>
              </div>
            </div>
          </form>
        </div>
      </div>
      <div id="dialog" title="Message" style="display:none; text-align:left;">
        <p>Successfully Updated Unit</p>
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
