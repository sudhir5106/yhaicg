<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();
$unit=$db->ExecuteQuery("SELECT Unit_Id,Unit_Name FROM unit_master ORDER BY Unit_Name ASC");

$getAsset=$db->ExecuteQuery("SELECT AST.Unit_Id,Asset_Name,Asset_Detail,Images FROM assets AST INNER JOIN unit_master UM ON UM.Unit_Id=AST.Unit_Id 
WHERE Asset_Id='".$_REQUEST['id']."' ");
?>

<script type="text/javascript" src="assets.js"></script>

<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i> Asset
            <button onclick="window.history.back()" class="pull-right btn-defulte btn">Go Back</button>
            <span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          <form class="form-horizontal" role="form" id="editasset" method="post">
            <input type="hidden" id="id" value="<?php echo $_REQUEST['id'];?>" />
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title">Edit Assets</h3>
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
                      <option value="<?php echo $val['Unit_Id']?>" <?php if($getAsset[1]['Unit_Id']==$val['Unit_Id']){ echo "selected";}?>><?php echo $val['Unit_Name'];?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="assets_name"> Heading <span>*</span>:</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control input-sm" id="assets_name" name="assets_name" value="<?php echo $getAsset[1]['Asset_Name'];?>">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="aboutasset">About Asset<span>*</span>:</label>
                  <div class="col-sm-4">
                    <textarea class="form-control input-sm" id="aboutasset" name="aboutasset"><?php echo $getAsset[1]['Asset_Detail'];?></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory">Image</label>
                  <div class="col-sm-4">
                    <?php if($getAsset[1]['Images']!=""){?>
                    <img width="150" src="<?php echo PATH_IMAGE_UPLOAD."/assets/thumb/".$getAsset[1]['Images'];?>" alt="" />
                    <?php } ?>
                    <input id="path" name="path"    type="hidden" value="<?php echo $getAsset[1]['Images']?>" >
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
                <input type="button" class="btn btn-primary btn-sm" id="edit" value="Update" />
                <input type="reset" class="btn btn-default btn-sm" value="Reset" id="reset"/>
                <img src="<?php echo PATH_IMAGE?>/loading.gif" id="loading" style="display:none" /> </div>
            </div>
          </form>
        </div>
      </div>
      <div id="dialog" title="Message" style="display:none; text-align:left;">
        <p>Successfully Updated Asset</p>
      </div>
    </div>
  </div>
</div>
</div>
<?php include(ADMIN_INCLUDE.'/footer.php') ?>
