<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();

$galleryimage=$db->ExecuteQuery("SELECT Activity_Gallery_Image_Id,Images FROM activity_gallery_image WHERE Activity_Id='".$_REQUEST['id']."'");
?>

<script type="text/javascript" src="activity.js"></script>

<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i> Activity <span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          <form class="form-horizontal" role="form" id="insertgalleryimg" method="post">
            <input type="hidden" id="activityid" value="<?php echo $_REQUEST['id'];?>" />
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title">Add Gallery</h3>
                </div>
                <div class="pull-right"> <a class="btn btn-success btn-sm pull-left" href="activity-video.php?id=<?php echo $_REQUEST['id'];?>"><i class="glyphicon glyphicon-list"></i> <strong>Upload Video</strong></a><div class="pull-left"> &nbsp;&nbsp;</div>
                
                <a class="btn btn-success btn-sm pull-left" href="activity-list.php"><i class="glyphicon glyphicon-list"></i> <strong>Activity List</strong></a> 
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="widget-content">
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="MultiPicUpload">Upload Activity Image<span></span>:</label>
                  <div class="col-sm-4">
                    <input type="file" id="MultiPicUpload" name="MultiPicUpload[]"  multiple />
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
                <input type="button" class="btn btn-success btn-sm" id="submitgallery" value="Submit" />
                <img src="<?php echo PATH_IMAGE?>/loading.gif" id="loading" style="display:none" /> </div>
            </div>
          </form>
        </div>
        
        <!--////////////////////////////////////////////////
                    gallery
 ///////////////////////////////////////////////   -->
        <?php if(count($galleryimage)>0)
	{?>
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          <div class="widget">
            <div class="widget-header">
              <div class="pull-left">
                <h3 class="header-title">Gallery</h3>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="widget-content">
              <div class="col-sm-12">
                <?php 
                     $i=1;
                      foreach($galleryimage as $value){ 
                       ?>
                <div class="col-sm-6 col-md-4 col-lg-3 col-xs-6 col-gallery-sm">
                  <div class="box-gallery-panel">
                    <div class="row" style="padding:7px 0;">
                      <div class="col-xs-6">
                        <button type="button" class="btn btn-danger btn-sm deleteimage pull-right" id="<?php echo $value['Activity_Gallery_Image_Id']; ?>" name="delete"> <span class="glyphicon glyphicon-trash"></span></button>
                      </div>
                    </div>
                    <div class="galleryImg approved-img"><img width="100%" src="<?php echo PATH_GALLERY_IMAGE."thumb/".$value['Images'];?>" alt="" /> </div>
                  </div>
                </div>
                <?php $i++;}
                      ?>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div id="dialog" title="Message" style="display:none; text-align:left;">
        <p>Successfully Added Images</p>
      </div>
    </div>
  </div>
</div>
<?php include(ADMIN_INCLUDE.'/footer.php') ?>
