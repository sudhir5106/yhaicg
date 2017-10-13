<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();

$getDiscount=$db->ExecuteQuery("SELECT Coupon_Code, Offer, Details, Images FROM discount 
  WHERE Discount_Id=".$_REQUEST['id']);

?>
<link rel="stylesheet" href="<?php echo PATH_ADMIN_CSS_LIBRARIES?>/jquery-ui.css">

<script type="text/javascript" src="discount.js"></script>
<script src="<?php echo PATH_ADMIN_JS_LIBRARIES?>/jquery-ui.js"></script>


<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-edit"></i> Edit Discount
            <button onclick="window.history.back()" class="pull-right btn-defulte btn">Go Back</button>
            <span class="clearfix"></span></h2>

          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          
          <form class="form-horizontal" role="form" id="editDiscount" method="post">
            <input type="hidden" id="id" value="<?php echo $_REQUEST['id'];?>" />
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title">Edit Discount Details</h3>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="widget-content">
                
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="couponCode">Coupon Code<span>*</span>:</label>
                  
                  <div class="col-md-4">
                    <input type="text" class="form-control input-sm" id="couponCode" name="couponCode" value="<?php echo 
                    $getDiscount[1]['Coupon_Code'] ?>" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="offer">Offer in (%) or (<i class="fa fa-inr" aria-hidden="true"></i>) <span>*</span>:</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control input-sm" id="offer" name="offer" placeholder="Ex:15% off,  Rs.100 off etc..." value="<?php echo $getDiscount[1]['Offer'] ?>">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="discountInfo">Discount Details<span>*</span>:</label>
                  <div class="col-sm-7">
                    <textarea class="form-control input-sm" id="discountInfo" name="discountInfo" placeholder="Detail"><?php echo $getDiscount[1]['Details'] ?></textarea>
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory">Image</label>
                  <div class="col-sm-4">
                    <?php if($getDiscount[1]['Images']!=""){?>
                    <img width="150" src="<?php echo PATH_IMAGE_UPLOAD."/discount/thumb/".$getDiscount[1]['Images'];?>" alt="" />
                    <?php } ?>

                    <input id="path" name="path" type="hidden" value="<?php echo $getDiscount[1]['Images']?>" >
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
