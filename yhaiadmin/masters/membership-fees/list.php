<?php
include('../../../config.php');
include(ADMIN_INCLUDE.'/header.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db = new DBConn();

$res = $db->ExecuteQuery("SELECT MID, Membership_Type, Membership_No_Prefix, Duration, Fees, CGST, SGST, Total FROM membership_fees");
?>

<script type="text/javascript" src="membership.js"></script>


<!--Auto Complete Function Ends-->
<div class="main">
<div class="main-inner">
  <div class="container-fluid">
    <div class="widget">
      <div class="page-head">
        <h2 class="text-print"><i class=" shortcut-icon no-print fa fa-university"></i> VIEW LIST <a href="index.php" class="btn btn-success btn-sm pull-right"><i class="glyphicon glyphicon-list"></i> <strong>Add MEMBERSHIPT FEES</strong></a> <span class="clearfix"></span></h2>
        <div class="clearfix"></div>
      </div>
      
      <!-- Page heading -->
      
      <div class="widget">
        <div class="widget-header no-print">
          <div class="pull-left">
            <h3 class="header-title">Membership Fees Detail</h3>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="widget-content print-padding">
          <div class="table-responsive">

            <table class="table table-bordered table-hover table-striped">
              <thead>
                <tr>
                  <th>Sno</th>
                  <th>Membership Type</th>
                  <th>Membership No Prefix</th>
                  <th>Valid Upto</th>
                  <th>Fees</th>
                  <th>CGST (9%)</th>
                  <th>SGST (9%)</th>
                  <th>Total</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
              <?php 
              $i=1;
              foreach($res as $val){ ?>
                <tr>
                  <td><?php echo $i; ?></td>
                  <td><?php echo $val['Membership_Type']; ?></td>
                  <td><?php echo $val['Membership_No_Prefix']; ?></td>
                  <td><?php echo $val['Duration']; ?></td>
                  <td><?php echo $val['Fees']; ?></td>
                  <td><?php echo $val['CGST']; ?></td>
                  <td><?php echo $val['SGST']; ?></td>
                  <td><?php echo $val['Total']; ?></td>
                  <td><a href="edit.php?mid=<?php echo $val['MID']; ?>" class="btn btn-info">Edit</a> <button type="button" id="<?php echo $val['MID']; ?>" class="btn btn-danger delete">Delete</button></td>
                </tr>
              <?php $i++; } ?>
              </tbody>
            </table>

            <div class="clearfix"></div>
          </div>
        </div>
      </div>
      <div id="dialog" title="Message" style="display:none; text-align:left;">
        <p>Successfully Deleted!</p>
      </div>
    </div>
  </div>
</div>
<?php 
include(ADMIN_INCLUDE.'/footer.php');
?>
