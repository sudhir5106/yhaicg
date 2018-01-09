<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
include(ADMIN_INCLUDE.'/header.php');  
$db = new DBConn();
 @$sql="SELECT Member_Id,Membership_No,Member_Name,Unit_Name,Designation_Name,Contact_No,DATE_FORMAT(Membership_Date,'%d-%m-%Y') as 'Membership_Date',Address,Member_Detail,CASE WHEN Member_Type=1 THEN 'Member' WHEN Member_Type=2 THEN 'Office Barrier' ElSE 'Member' END AS Member_Type, MF.Membership_Type 
 FROM member MBR 
 INNER JOIN designation_master DM ON DM.Designation_Id=MBR.Designation_Id 
 INNER JOIN unit_master UM ON UM.Unit_Id=MBR.Unit_Id
 LEFT JOIN membership_fees MF ON MBR.MID = MF.MID
 WHERE MBR.Member_Id='".$_REQUEST['id']."' ";
 $getMember=$db->ExecuteQuery($sql);

?>
<div class="main">
  <div class="main-inner">
    <div class="container-fluid">
      <div class="widget">
        <div class="page-head">
          <h2><i class=" shortcut-icon fa fa-user"></i> Member Detail<span class="clearfix"></span></h2>
          
          <div class="clearfix"></div>
        </div>
        
        <!-- Page heading -->
        <div class="col-sm-12 col-md-10 col-lg-8 col-lg-offset-2 col-md-offset-1">
          
           
            <div class="widget">
              <div class="widget-header">
                <div class="pull-left">
                  <h3 class="header-title"></h3>
                  
                </div>
                <div class="pull-right col-sm-6 text-right">
                  <button onclick="window.history.back()" class="no-print btn-defulte btn"><i class="fa fa-arrow-left"></i> Go Back</button>
                  <button class="btn-print no-print btn-defulte btn" style=" margin-right:15px;" type="button"  value="Print" onclick="window.print();"><i class="fa fa-print"></i> Print</button>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="widget-content">            
      
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Name</label>
                  <div class="col-sm-7">
                    <?php echo $getMember[1]['Member_Name'];?>
                  </div>
                </div>
                 <div class="clearfix"></div>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Unit Name </label>
                  <div class="col-sm-7">
                    <?php echo $getMember[1]['Unit_Name'];?>
                  </div>
                </div>
                 <div class="clearfix"></div>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Designation</label>
                  <div class="col-sm-7">
                    <?php echo $getMember[1]['Designation_Name'];?>
                  </div>
                </div>
                 <div class="clearfix"></div>
                 <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Membership No.</label>
                  <div class="col-sm-7">
                    <?php echo $getMember[1]['Membership_No'];?>
                  </div>
                </div>  
                 <div class="clearfix"></div>
                <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Membership Type</label>
                  <div class="col-sm-7">
                    <?php echo $getMember[1]['Membership_Type'];?>
                  </div>
                </div>  
                 <div class="clearfix"></div>
                 
                 <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Membership Date</label>
                  <div class="col-sm-7">
                    <?php echo $getMember[1]['Membership_Date'];?>
                  </div>
                </div>  
                 <div class="clearfix"></div>
                 
                  <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Member Type</label>
                  <div class="col-sm-7">
                    <?php echo $getMember[1]['Member_Type'];?>
                  </div>
                </div>  
                 <div class="clearfix"></div>
                 
                 
                 <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Contact No.</label>
                  <div class="col-sm-7">
                    <?php echo $getMember[1]['Contact_No'];?>
                  </div>
                </div>  
                 <div class="clearfix"></div>
                 
                 <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Address</label>
                  <div class="col-sm-7">
                    <?php echo $getMember[1]['Address'];?>
                  </div>
                </div>  
                 <div class="clearfix"></div>
                 
                 <div class="form-group">
                  <label class="control-label col-sm-3 mandatory" >Email Id</label>
                  <div class="col-sm-7">
                    <?php echo $getMember[1]['Member_Detail'];?>
                  </div>
                </div>  
                 <div class="clearfix"></div>
                             
             
      </div>
             
                
                
            
              <div class="clearfix"></div>
            </div>
            
          
        </div>
      </div>
      
    </div>
  </div>
</div>



  </div>


<?php include(ADMIN_INCLUDE.'/footer.php') ?>
