<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();
 $selid=base64_decode($_REQUEST['id']);

 
   $GetActivity=$db->ExecuteQuery("SELECT ATY.Unit_Id,Activity_Name,Images,Unit_Name,Activity_Detail,Current_Activity_Date FROM activity ATY 
 INNER JOIN unit_master UM ON UM.Unit_Id=ATY.Unit_Id 
 WHERE Activity_Id='".$selid."' ");
 
 $galleryimage=$db->ExecuteQuery("SELECT Activity_Gallery_Image_Id,Images FROM activity_gallery_image WHERE Activity_Id='".$selid."'");
 
 $galleryvideo=$db->ExecuteQuery("SELECT Activity_Video_Id,Activity_Video FROM activity_video WHERE Activity_Id='".$selid."'");
 
 
 ?>
 <script type="text/javascript" src="<?php echo PATH_JS_LIBRARIES ?>/jquery.fancybox.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo PATH_CSS_LIBRARIES; ?>/jquery.fancybox.css" />

 <script>
 
 $(document).ready(function(){
	 $(document).on('click','#ImageGallery',function(){	
$('#allVideos').hide();
$('#allImages').show();
	});	
	
	$(document).on('click','#VideoGallery',function(){	
$('#allVideos').show();
$('#allImages').hide();
	});	
	
	
	$('.fancy').show();

	$('.noFancy').hide();

    //FANCYBOX

    //https://github.com/fancyapps/fancyBox

    $(".fancybox").fancybox({
        openEffect: "none",
        closeEffect: "none"
    });
	$(".fancybox1").fancybox({
        openEffect: "none",
        closeEffect: "none"
    });
	 
	}); 
 
</script>
 <div class="container">
 <section class="content-header">
   <h1>Activity</h1>
    <ol class="breadcrumb col-sm-7">
      <li>Unit</li>
      <li ><?php echo $GetActivity[1]['Unit_Name'];?></li>
      <li ><a href="<?php echo PATH_LINK;?>/activity.php?id=<?php echo base64_encode($GetActivity[1]['Unit_Id'])?>">Activity</a></li>
      <li class="active">Detail</li>
    </ol><button class="pull-right btn-primary btn btn-sm" onclick="window.history.back()">Go Back</button>
  </section>
</div>
<main>
      
 
    <div class="container">
     <div class="box-main">
          <div class="row">
          <div class="col-sm-8 col-md-9">
          <div class="row">
          
          <div class="box-gray-full">
          
          <div class="col-sm-4 col-md-3">
            <?php if($GetActivity[1]['Images']!=""){?><img  class="img-responsive" src="<?php echo PATH_IMAGE_UPLOAD."/activity/thumb/".$GetActivity[1]['Images'];?>" alt="" /><?php } ?>
          
          </div>
          <div class="col-md-9 col-sm-8">
          
          <h3><?php echo $GetActivity[1]['Activity_Name'];?></h3>
      <?php if($GetActivity[1]['Current_Activity_Date']!='0000-00-00'){?> <div><strong><?php echo date('d-m-Y',strtotime($GetActivity[1]['Current_Activity_Date']));?></strong></div><?php } ?>
          <?php echo $GetActivity[1]['Activity_Detail'];?>
          </div>
          <div class="clearfix"></div>
          </div>
          </div>
        <div>

  <!-- Nav tabs -->
  
     <div class="panel with-nav-tabs panel-success">
                <div class="panel-heading panel-header">
                        <ul class="nav nav-tabs tab-button">
                            <li class="active"><a href="#tab1success" data-toggle="tab">Activity Image Gallery</a></li>
                            <li><a href="#tab2success" data-toggle="tab">Activity Video</a></li>
                           
                        </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1success">
						<?php 
						$i=1;
						if(count($galleryimage)>0){
                      	foreach($galleryimage as $value){ 
                       	?>
                  <div class="pull-left">
                  <div class="box-gallery-panel">
                 
                    <div class="galleryImg approved-img">
                    
                    <a class="fancybox1" rel="ligthbox" data-fresco-caption="Menu2" href="<?php echo PATH_GALLERY_IMAGE."/".$value['Images'];?>"> <img width="100%" src="<?php echo PATH_GALLERY_IMAGE."thumb/".$value['Images'];?>" class="img-view facility-item"></a>
                     <div class="clearfix"></div>
                    </div>
                   
                  
                    </div>
                      <div class="clearfix"></div>
                  </div>
                  <?php $i++;}// foreach closed
						}//count if closed
						else {echo "No images found.";}
                      ?>
                    </div>
                        <div class="tab-pane fade" id="tab2success">  <?php 
                     $i=1;
					 if(count($galleryvideo)>0){
                      foreach($galleryvideo as $value){ 
                       ?>
                  <div class="col-sm-12 col-md-6 col-lg-4 col-video">
                  <div class="box-gallery-panel">
                  
                    <div class="galleryImg approved-img"><?php if($value['Activity_Video']!="")
					{?>
                    
                    <video controls class="img-responsive col-gallery-video" >
  <source src="<?php echo PATH_VIDEO_UPLOAD."/".$value['Activity_Video'];?>" 
          type='video/mp4;codecs="avc1.42E01E, mp4a.40.2"'/>
  
</video>
                    
                   <!-- <video width="100%" src="<?php //echo PATH_VIDEO_UPLOAD."/".$value['Activity_Video'];?>" alt="" >-->
</video><?php } ?>
                     
                    </div>
                   
                  
                    </div>
                  </div>
                  <?php $i++;}// foreach closed
						}//count if closed
				  		else {echo "No videos found.";}
                      ?>
    </div>
                        
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
  
  
  
  
  

  <!-- Tab panes -->
  

</div>  
          
          
          
          
          
          
          
          
  
         
          </div>
          
          
          
          
        
         <!--//////////////right bar containt here-->
        <div class="col-sm-4 col-md-3">
        <?php include "sidebar.php";?>
        </div>
        </div>
      </div>
        </div>
        </div>

    </main>
    
    <?php include(PATH_INCLUDE.'/footer.php'); ?>