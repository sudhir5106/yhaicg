<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();

$getDiscount=$db->ExecuteQuery("SELECT Slide_Image, Slide_Caption FROM slides 
  WHERE Slide_Id=".$_REQUEST['id']);

?>
<link rel="stylesheet" href="<?php echo PATH_ADMIN_CSS_LIBRARIES?>/jquery-ui.css">

<script type="text/javascript" src="slides.js"></script>
<script src="<?php echo PATH_ADMIN_JS_LIBRARIES?>/jquery-ui.js"></script>
<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
<script>
  	tinymce.init({
		selector: "textarea",
		menubar: "format"
	});
	  
	tinymce.init({ selector:'#caption' });
</script>

<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-edit"></i> Edit Slide
            <button onclick="window.history.back()" class="pull-right btn-defulte btn">Go Back</button>
            <span class="clearfix"></span>
          </h2>
          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          
          <form class="form-horizontal" role="form" id="editSlide" method="post">
            <input type="hidden" id="id" value="<?php echo $_REQUEST['id'];?>" />
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title">Edit Slide Details</h3>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="widget-content">
                
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory">Slide Image</label>
                  <div class="col-sm-7">
                    <?php if($getDiscount[1]['Slide_Image']!=""){?>
                    <img width="150" src="<?php echo PATH_IMAGE_UPLOAD."/slides/thumb/".$getDiscount[1]['Slide_Image'];?>" alt="" />
                    <?php } ?>

                    <input id="path" name="path" type="hidden" value="<?php echo $getDiscount[1]['Slide_Image']?>" >
                    <input id="image" name="image" type="file" >

                    <div class="text-red"><strong></strong></div>
                    <span style="font-size:9pt;">(<strong>Note:</strong> Maximum Image Size 1024 x 768 px, 
                    Image Extension JPG,GIF,PNG, Maximum Weight 2 MB.)</span> </div>
                </div>
                <div id="errmsg" class="text-danger"></div>
                
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="caption">Caption<span></span>:</label>
                  <div class="col-sm-7">
                    <textarea class="form-control input-sm" id="caption" name="caption" placeholder="Caption"><?php echo $getDiscount[1]['Slide_Caption'] ?></textarea>
                  </div>
                </div>
                
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-4 col-md-5">
                <input type="button" class="btn btn-success btn-sm" id="edit" value="Update" />
                <input type="reset" class="btn btn-default btn-sm" value="Reset" id="reset"/>
                <img src="<?php echo PATH_IMAGE?>/loading.gif" id="loading" style="display:none" /> </div>
            </div>
          </form>
        </div>
      </div>
      <div id="dialog" title="Message" style="display:none; text-align:left;">
        <p>Discount Successfully Updated</p>
      </div>
    </div>
  </div>
</div>
<?php include(ADMIN_INCLUDE.'/footer.php') ?>
