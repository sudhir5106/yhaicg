<?php
include('../../config.php');
include(ADMIN_INCLUDE.'/header.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db = new DBConn();

$res=$db->ExecuteQuery("SELECT Place_Id, Title, About_Place, Image FROM tourist_places");
?>
<link rel="stylesheet" href="<?php echo PATH_CSS_LIBRARIES?>/jquery-ui.css">

<script type="text/javascript" src="tourist-places.js"></script>

<!--Auto Complete Function Ends-->
<div class="main">
<div class="main-inner">
  <div class="container-fluid">
    <div class="widget">
      <div class="page-head">
        <h2 class="text-print"><i class=" shortcut-icon no-print fa fa-university"></i> List of Tourist Places
         <a href="index.php" class="btn btn-success btn-sm pull-right"><i class="glyphicon glyphicon-list"></i> <strong>Add Tourist Place</strong></a>
        
        <span class="clearfix"></span></h2>
        <div class="clearfix"></div>
      </div>
      
      <!-- Page heading -->
      
      <div class="widget">
        <div class="widget-header no-print">
          <div class="pull-left">
            <h3 class="header-title"> Tourist Place Detail</h3>
          </div>
          
          <div class="clearfix"></div>
        </div>
        <div class="widget-content print-padding">
          <div class="table-responsive">
            <table class="table table-bordered table-hover table-striped">
              <thead>
                <tr>
                  <th>Sno</th>
                  <th>Image</th>
                  <th>Ttile</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
              <?php 
			  $i=1;
			  foreach($res as $val){ ?>
                <tr>
                  <td><?php echo $i; ?></td>
                  <td><img width="100" src="<?php echo PATH_IMAGE.'/tourist-place/thumb/'.$val['Image'] ?>" alt=""></td>
                  <td><?php echo $val['Title'] ?></td>
                  <td><a href="edit.php?id=<?php echo $val['Place_Id']; ?>" class="btn btn-info">Edit</a> <button type="button" id="<?php echo $val['Place_Id']; ?>" class="btn btn-danger delete">Delete</button></td>
                </tr>
              <?php $i++;} ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div id="dialog" title="Message" style="display:none; text-align:left;">
        <p>Place Successfully Deleted</p>
      </div>
    </div>
  </div>
</div>
<?php 
include(ADMIN_INCLUDE.'/footer.php');
?>
