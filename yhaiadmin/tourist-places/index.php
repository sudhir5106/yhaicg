<?php
include('../../config.php');
include(ADMIN_INCLUDE.'/header.php');  
?>

<link rel="stylesheet" href="<?php echo PATH_ADMIN_CSS_LIBRARIES?>/jquery-ui.css">

<script type="text/javascript" src="tourist-places.js"></script>
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
          <h2><i class="fa fa-slideshare" aria-hidden="true"></i> Tourist Places <span class="clearfix"></span></h2>
         
          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          <form class="form-horizontal" role="form" id="insertPlace" method="post">
            <input type="hidden" id="id" value="" />
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title">Add New Tourist Place</h3>                  
                </div>
                
                 <a class="btn btn-success btn-sm pull-right" href="list.php"><i class="glyphicon glyphicon-list"></i> <strong>List of Tourist Places</strong></a> 
                <div class="clearfix"></div>
              </div>
              <div class="widget-content">

                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="title">Title<span>*</span>:</label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control input-sm" id="title" name="title" placeholder="Title">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="aboutPlace">About Place<span>*</span>:</label>
                  <div class="col-sm-7">
                    <textarea class="form-control input-sm" id="aboutPlace" name="aboutPlace" placeholder="Write something about place..."></textarea>
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory">Image<span>*</span>:</label>
                  <div class="col-sm-7">
                    <input id="image" name="image" type="file" >
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
                <input type="button" class="btn btn-success btn-sm" id="submit" value="Submit" />
                <input type="reset" class="btn btn-default btn-sm" value="Reset" id="reset"/>
                <img src="<?php echo PATH_IMAGE?>/loading.gif" id="loading" style="display:none" /> </div>
            </div>
          </form>
        </div>
      </div>
      <div id="dialog" title="Message" style="display:none; text-align:left;">
        <p>Place Successfully Added</p>
      </div>
    </div>
  </div>
</div>
<?php include(ADMIN_INCLUDE.'/footer.php') ?>
