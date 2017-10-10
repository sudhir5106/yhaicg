<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();
$unit=$db->ExecuteQuery("SELECT Unit_Id,Unit_Name FROM unit_master ORDER BY Unit_Name ASC");
?>


<script type="text/javascript" src="assets.js"></script>

<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i> Assets <a class="btn btn-success btn-sm pull-right" href="assets-list.php"><i class="glyphicon glyphicon-list"></i> <strong>View Assets List</strong></a> <span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          <form class="form-horizontal" role="form" id="insertasset" method="post">
            <input type="hidden" id="id" value="" />
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title">Add Assets</h3>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="widget-content">
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="unitname">Unit Name<span>*</span></label>
                  <div class="col-sm-4">
                    <select name="unitname" id="unitname" class="form-control input-sm">
                      <option value="">Select Unit Name</option>
                      <?php foreach($unit as $val){?>
                      <option value="<?php echo $val['Unit_Id']?>"><?php echo $val['Unit_Name'];?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="assets_name"> Heading <span>*</span>:</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control input-sm" id="assets_name" name="assets_name" placeholder="Heading">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="aboutasset">About Asset<span>*</span>:</label>
                  <div class="col-sm-4">
                    <textarea class="form-control input-sm" id="aboutasset" name="aboutasset" placeholder="About Assets"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory">Image</label>
                  <div class="col-sm-4">
                    <input id="image" name="image"   type="file" >
                    <div class="text-red"><strong></strong></div>
                    <span style="font-size:9pt;">(<strong>Note:</strong>Image Extension JPG,GIF,PNG )</span> </div>
                </div>
                <div id="errmsg" class="text-danger"></div>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-4 col-md-5">
                <input type="button" class="btn btn-success btn-sm" id="submit" value="Submit" />
                <input type="reset" class="btn btn-default btn-sm" value="Reset" id="reset"/>
                <img src="<?php echo PATH_IMAGE?>/loading.gif" id="loading" style="display:none" /> </div>
            </div>
          </form>
        </div>
      </div>
      <div id="dialog" title="Message" style="display:none; text-align:left;">
        <p>Successfully Added Asset</p>
      </div>
    </div>
  </div>
</div>
</div>
<?php include(ADMIN_INCLUDE.'/footer.php') ?>
