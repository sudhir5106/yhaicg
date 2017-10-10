<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();

$unit=$db->ExecuteQuery("SELECT Unit_Id,Unit_Name FROM unit_master ORDER BY Unit_Name ASC");

 @$sql="SELECT Unit_Id,Activity_Name,Activity_Date,Images,Activity_Detail,Current_Activity_Date FROM activity 
  WHERE Activity_Id='".$_REQUEST['id']."' ";
 $getactivity=$db->ExecuteQuery($sql);
?>

<script type="text/javascript" src="activity.js"></script>
<link rel="stylesheet" href="<?php echo PATH_ADMIN_CSS_LIBRARIES?>/jquery-ui.css">
<script src="<?php echo PATH_ADMIN_JS_LIBRARIES?>/jquery-ui.js"></script>
<script>
$(function() {
    $( ".datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true,
      yearRange:"-50:+50",
	  dateFormat: 'dd-mm-yy'
	  
    });
  });
</script>

<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
<script>
  tinymce.init({
    selector: "textarea",
    menubar: "format"
});
  
  tinymce.init({ selector:'#activitydetail' });</script>

<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i>Activity
            <button onclick="window.history.back()" class="pull-right btn-defulte btn">Go Back</button>
            <span class="clearfix"></span></h2>

          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          <form class="form-horizontal" role="form" id="editactivity" method="post">
            <input type="hidden" id="id" value="<?php echo $_REQUEST['id'];?>" />
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title">Edit Activity</h3>
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
                      <option value="<?php echo $val['Unit_Id']?>" <?php if($getactivity[1]['Unit_Id']==$val['Unit_Id']) { echo "selected";}?>><?php echo $val['Unit_Name'];?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="heading">Heading <span>*</span>:</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control input-sm" id="heading" name="heading" value="<?php echo $getactivity[1]['Activity_Name'];?>">
                  </div>
                </div>
                <!--<div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="activitydate">Activity Date<span></span>:</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control input-sm" id="activitydate" name="activitydate" value="<?php //echo $getactivity[1]['Activity_Date'];?>">
                  </div>
                </div>-->
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="activitydetail">Detail<span></span>:</label>
                  <div class="col-sm-7">
                    <textarea class="form-control input-sm" id="activitydetail" name="activitydetail" ><?php echo $getactivity[1]['Activity_Detail'];?></textarea>
                  </div>
                </div>
                
                <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="cactivitydate">Current Activity Date<span>*</span>:</label>
      
      <div class="col-md-4">
                    <input type="text" class="form-control input-sm datepicker" id="cactivitydate" name="cactivitydate" value="<?php if($getactivity[1]['Current_Activity_Date']!='0000-00-00'){echo date('d-m-Y',strtotime($getactivity[1]['Current_Activity_Date']));}?>"/>
                  </div>
      
      
   </div>
                
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory">Image</label>
                  <div class="col-sm-4">
                    <?php if($getactivity[1]['Images']!=""){?>
                    <img width="150" src="<?php echo PATH_IMAGE_UPLOAD."/activity/thumb/".$getactivity[1]['Images'];?>" alt="" />
                    <?php } ?>
                    <input id="path" name="path"    type="hidden" value="<?php echo $getactivity[1]['Images']?>" >
                    <input id="image" name="image"   type="file" >
                    <div class="text-red"><strong></strong></div>
                    <span style="font-size:9pt;">(<strong>Note:</strong> Maximum Image Size 1024 x 768 px, 
                    Image Extension JPG,GIF,PNG, 
                    Maximum Weight 1 MB.)</span> </div>
                </div>
                <div id="errmsg" class="text-danger"></div>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-4 col-md-5">
                <input type="button" class="btn btn-success btn-sm" id="edit" value="Submit" />
                <input type="reset" class="btn btn-default btn-sm" value="Reset" id="reset"/>
                <img src="<?php echo PATH_IMAGE?>/loading.gif" id="loading" style="display:none" /> </div>
            </div>
          </form>
        </div>
      </div>
      <div id="dialog" title="Message" style="display:none; text-align:left;">
        <p>Successfully Updated Activity</p>
      </div>
    </div>
  </div>
</div>
<?php include(ADMIN_INCLUDE.'/footer.php') ?>
