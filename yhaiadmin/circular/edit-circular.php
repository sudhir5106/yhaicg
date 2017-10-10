<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();

$getCircular=$db->ExecuteQuery("SELECT Circular_File_Name,Circular_Name,Circular_Detail,Circular_Date FROM circular CR 
INNER JOIN circular_file CF ON CF.Circular_Id=CR.Circular_Id 
WHERE CR.Circular_Id='".$_REQUEST['id']."' ");
?>

<script type="text/javascript" src="circular.js"></script>
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

<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i> Circular
            <button onclick="window.history.back()" class="pull-right btn-defulte btn">Go Back</button>
            <span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          <form class="form-horizontal" role="form" id="editcircular" method="post">
            <input type="hidden" id="id" value="<?php echo $_REQUEST['id'];?>" />
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title">Edit Circular</h3>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="widget-content">
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="circulername"> Heading <span>*</span>:</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control input-sm" id="circulername" name="circulername" value="<?php echo $getCircular[1]['Circular_Name'];?>">
                  </div>
                    <div id="headingerrmsg" class="text-danger"></div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="aboutcirculer">About Asset<span>*</span>:</label>
                  <div class="col-sm-4">
                    <textarea class="form-control input-sm" id="aboutcirculer" name="aboutcirculer"><?php echo $getCircular[1]['Circular_Detail'];?></textarea>
                  </div>
                </div>
                 <div class="form-group">
      <label class="control-label col-sm-3 mandatory" for="circulardate">Date<span>*</span>:</label>
      
      <div class="col-md-4">
                    <input type="text" class="form-control input-sm datepicker" id="circulardate" name="circulardate"  value="<?php if($getCircular[1]['Circular_Date']!='0000-00-00'){echo date('d-m-Y',strtotime($getCircular[1]['Circular_Date']));}?>"/>
                  </div>
      
      
   </div>
                
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory">Upload Video</label>
                  <div class="col-sm-4">
                    <input id="path" name="path"    type="hidden" value="<?php echo $getCircular[1]['Circular_File_Name']?>" >
                    <div><?php echo $getCircular[1]['Circular_File_Name']?></div>
                    <input id="UploadFile" name="UploadFile"   type="file" >
                    <div class="text-red"><strong></strong></div>
                    <span style="font-size:9pt;">(<strong>Note:</strong> File Extension PDF,DOC,DOCX,JPG,JPEG)</span> </div>
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
        <p>Successfully Updated Circular</p>
      </div>
    </div>
  </div>
</div>
</div>
<?php include(ADMIN_INCLUDE.'/footer.php') ?>
