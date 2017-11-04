<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();

$getDiscount=$db->ExecuteQuery("SELECT Title, About_Place,District_id, Image FROM tourist_places 
  WHERE Place_Id=".$_REQUEST['id']);
$id_district=$getDiscount[1]['District_id'];
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
          <h2><i class=" shortcut-icon fa fa-edit"></i> Edit Tourist Place
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
                  <h3 class="header-title">Edit Tourist Place Details</h3>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="widget-content">
                
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="title">District<span>*</span>:</label>
                  <div class="col-sm-7">
                    <select class="form-control input-sm mandatory" name="district" id="district">
                     <?php $sql="select * from district_master";
					$getDistrict_val=$db->ExecuteQuery($sql);
					foreach($getDistrict_val as $val)
					{?>
					<option value="<?php echo $val['District_id'];?>"<?php if($val['District_id']==$id_district){?>selected<?php }?>><?php echo $val['District_name'];?></option>
					<?php }?>
                    </select>
                  </div>
                </div>
                
                
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="title">Title<span>*</span>:</label>
                  <div class="col-sm-7">
                    <input type="text" class="form-control input-sm" id="title" name="title" placeholder="Title" value="<?php echo $getDiscount[1]['Title']?>">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="aboutPlace">About Place<span>*</span>:</label>
                  <div class="col-sm-7">
                    <textarea class="form-control input-sm" id="aboutPlace" name="aboutPlace" placeholder="Write something about place..."><?php echo $getDiscount[1]['About_Place']?></textarea>
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory">Image</label>
                  <div class="col-sm-7">
                    <?php if($getDiscount[1]['Image']!=""){?>
                    <img width="150" src="<?php echo PATH_IMAGE_UPLOAD."/tourist-place/thumb/".$getDiscount[1]['Image'];?>" alt="" />
                    <?php } ?>

                    <input id="path" name="path" type="hidden" value="<?php echo $getDiscount[1]['Image']?>" >
                    <input id="image" name="image" type="file" >

                    <div class="text-red"><strong></strong></div>
                    <span style="font-size:9pt;">(<strong>Note:</strong> Maximum Image Size 1024 x 768 px, 
                    Image Extension JPG,GIF,PNG, Maximum Weight 2 MB.)</span> </div>
                </div>
                <div id="errmsg" class="text-danger"></div>
                
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
        <p>Place Successfully Updated</p>
      </div>
    </div>
  </div>
</div>
<?php include(ADMIN_INCLUDE.'/footer.php') ?>
