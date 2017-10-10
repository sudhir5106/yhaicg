<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();

?>

<script type="text/javascript" src="newsevent.js"></script>
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
  
  tinymce.init({ selector:'#newsdetail' });</script>
<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i> News & Events <a class="btn btn-success btn-sm pull-right" href="newsevent-list.php"><i class="glyphicon glyphicon-list"></i> <strong>View News & Events List</strong></a> <span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          <form class="form-horizontal" role="form" id="insertnewsevent" method="post">
            <input type="hidden" id="id" value="" />
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title">Add News & Events</h3>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="widget-content">
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="heading"> Heading <span>*</span>:</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control input-sm" id="heading" name="heading" placeholder="Heading">
                  </div>
                  <div id="headingerrmsg" class="text-danger"></div>
                </div>
                
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="timeline">Timeline<span></span>:</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control input-sm" id="timeline" name="timeline" placeholder="Date">
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
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="newsdetail">Detail<span>*</span>:</label>
                  <div class="col-sm-7">
                    <textarea class="form-control input-sm" id="newsdetail" name="newsdetail" placeholder="Detail"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-md-3 mandatory" for="eventview">Event Show Last Date<span>*</span>:</label>
                  <div class="col-md-4">
                    <input type="text" class="form-control input-sm datepicker" id="eventview" name="eventview" />
                  </div>
                </div>
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
        <p>Successfully Added Event & News</p>
      </div>
    </div>
  </div>
</div>
</div>
<?php include(ADMIN_INCLUDE.'/footer.php') ?>
