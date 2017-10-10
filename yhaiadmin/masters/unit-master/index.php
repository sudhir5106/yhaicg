<?php 
	include('../../../config.php');
	require_once(PATH_LIBRARIES.'/classes/DBConn.php');
	include(ADMIN_INCLUDE.'/header.php');  
	
?>

<script src="unit.js"></script>

<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i> Unit <a class="btn btn-success btn-sm pull-right" href="unit-list.php"><i class="glyphicon glyphicon-list"></i> <strong>View Unit List</strong></a> <span class="clearfix"></span></h2>
          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          <form class="form-horizontal" role="form" id="insertunit" method="post">
            <input type="hidden" id="id" value="" />
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title">Add Unit</h3>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="widget-content"> 
                <!--------------------- Unit Name ------------>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="unitname">Unit Name<span>*</span>:</label>
                  <div class="col-sm-4">
                    <input type="text" name="unitname" class="form-control input-sm" id="unitname" />
                  </div>
                </div>
                
                <!--------------------- Description Entry ------------>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" for="aboutunit">About Unit</label>
                  <div class="col-sm-4">
                    <textarea name="aboutunit" class="form-control input-sm" id="aboutunit"></textarea>
                  </div>
                </div>
              </div>
              <div class="clearfix"></div>
            </div>
            <!-- Submit Button -->
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
        <p>Successfully Added Unit</p>
      </div>
    </div>
  </div>
</div>
</div>
</div>
<!-- row -->
</div>
<!--- container--->
</div>
<!-- main-inner -->
</div>
<!-- main --->
<?php include(ADMIN_INCLUDE.'/footer.php') ?>
