<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();

$galleryvideo=$db->ExecuteQuery("SELECT Activity_Video_Id,Activity_Video FROM activity_video WHERE Activity_Id='".$_REQUEST['id']."'");
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
          <form class="form-horizontal" role="form" id="insertvideo" method="post">
            <input type="hidden" id="activityid" value="<?php echo $_REQUEST['id'];?>" />
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title">Add Video</h3>
                </div>
                <div class="pull-right"> <a class="btn btn-success btn-sm pull-left" href="activity-gallery.php?id=<?php echo $_REQUEST['id'];?>"><i class="glyphicon glyphicon-list"></i> <strong>Upload Gallery</strong></a> 
                
                <div class="pull-left"> &nbsp;&nbsp;</div>
                <a class="btn btn-success btn-sm pull-left" href="index.php"><i class="glyphicon glyphicon-list"></i> <strong>Add Activity</strong></a>
                <div class="pull-left"> &nbsp;&nbsp;</div>
                 <a class="btn btn-success btn-sm pull-right" href="activity-list.php"><i class="glyphicon glyphicon-list"></i> <strong>Activity List</strong></a> 
                
                 </div>
                <div class="clearfix"></div>
              </div>
              <div class="widget-content">
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="video">Upload Activity Video<span></span>:</label>
                  <div class="col-sm-4">
                    <input id="video" name="video"   type="file" >
                    <div class="text-red"><strong></strong></div>
                    <span style="font-size:9pt;">(<strong>Note:</strong> Video Extension MP4)</span> </div>
                </div>
                <div id="errmsg" class="text-danger"></div>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-4 col-md-5">
                <input type="button" class="btn btn-success btn-sm" id="submitvideo" value="Submit" />
                <img src="<?php echo PATH_IMAGE?>/loading.gif" id="loading" style="display:none" /> </div>
            </div>
          </form>
        </div>
        
        <!--////////////////////////////////////////////////
                    gallery
 ///////////////////////////////////////////////   -->
        <?php if(count($galleryvideo)>0)
	{?>
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          <div class="widget">
            <div class="widget-header">
              <div class="pull-left">
                <h3 class="header-title">Video Gallery</h3>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="widget-content">
              <div class="col-sm-12">
                <?php 
                     $i=1;
                      foreach($galleryvideo as $value){ 
                       ?>
                <div class="col-sm-6 col-md-4 col-lg-3 col-xs-6 col-gallery-sm">
                  <div class="box-gallery-panel">
                    <div class="row" style="padding:7px 0;">
                      <div class="col-xs-6">
                        <button type="button" class="btn btn-danger btn-sm deletevideo pull-right" id="<?php echo $value['Activity_Video_Id']; ?>" name="delete"> <span class="glyphicon glyphicon-trash"></span></button>
                      </div>
                    </div>
                    <div class="galleryImg approved-img">
                      <?php if($value['Activity_Video']!="")
					{?>
                      <video controls style="width:240px;height:260px;">
                        <source src="<?php echo PATH_VIDEO_UPLOAD."/".$value['Activity_Video'];?>" 
          type='video/mp4;codecs="avc1.42E01E, mp4a.40.2"'/>
                      </video>
                      
                      <!-- <video width="100%" src="<?php //echo PATH_VIDEO_UPLOAD."/".$value['Activity_Video'];?>" alt="" >-->
                      </video>
                      <?php } ?>
                    </div>
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
        <p>Successfully Added Video</p>
      </div>
    </div>
  </div>
</div>
<?php include(ADMIN_INCLUDE.'/footer.php') ?>
