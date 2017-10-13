<?php
include('../../config.php');
include(ADMIN_INCLUDE.'/header.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db = new DBConn();

$res=$db->ExecuteQuery("SELECT Discount_Id, Coupon_Code, Offer, Details, Images FROM discount");
?>
<link rel="stylesheet" href="<?php echo PATH_CSS_LIBRARIES?>/jquery-ui.css">

<script type="text/javascript" src="discount.js"></script>

<!--Auto Complete Function Ends-->
<div class="main">
<div class="main-inner">
  <div class="container-fluid">
    <div class="widget">
      <div class="page-head">
        <h2 class="text-print"><i class=" shortcut-icon no-print fa fa-university"></i> List of Discounts
         <a href="index.php" class="btn btn-success btn-sm pull-right"><i class="glyphicon glyphicon-list"></i> <strong>Add Discount</strong></a>
        
        <span class="clearfix"></span></h2>
        <div class="clearfix"></div>
      </div>
      
      <!-- Page heading -->
      
      <div class="widget">
        <div class="widget-header no-print">
          <div class="pull-left">
            <h3 class="header-title"> Discount Detail</h3>
          </div>
          
          <div class="clearfix"></div>
        </div>
        <div class="widget-content print-padding">
          <div class="table-responsive">
            <table class="table table-bordered table-hover table-striped">
              <thead>
                <tr>
                  <th>Image</th>
                  <th>Offer</th>
                  <th>Discount Details</th>
                  <th>Coupon Code</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
              <?php foreach($res as $val){ ?>
                <tr>
                  <td><img width="60" src="<?php echo PATH_IMAGE.'/discount/thumb/'.$val['Images'] ?>" alt=""></td>
                  <td><?php echo $val['Offer'] ?></td>
                  <td><?php echo $val['Details'] ?></td>
                  <td><?php echo $val['Coupon_Code'] ?></td>
                  <td><a href="edit.php?id=<?php echo $val['Discount_Id']; ?>" class="btn btn-info">Edit</a> <button type="button" id="<?php echo $val['Discount_Id']; ?>" class="btn btn-danger delete">Delete</button></td>
                </tr>
              <?php } ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div id="dialog" title="Message" style="display:none; text-align:left;">
        <p>Discount Successfully Deleted</p>
      </div>
    </div>
  </div>
</div>
<?php 
include(ADMIN_INCLUDE.'/footer.php');
?>
