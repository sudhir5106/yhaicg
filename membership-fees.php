<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();

 $res = $db->ExecuteQuery("SELECT Membership_Type, Duration, Fees, CGST, SGST, Total FROM membership_fees");
 
 ?>
<div class="container">
 <section class="content-header">
    <h1>Membership Fees</h1>
    <ol class="breadcrumb">
      <li>Home</li>
    	<li class="active">Membership Fees</li>
    </ol>
  </section>
  </div>

<main>
      
      <div>
        <div class="container">
            <div class="box-main">
              <div class="row">
                  <!-- /////////////left bar containt here-->
                  <div class="col-sm-8 col-md-9">
                    <div class="head-title">Apply For Membership</div>
                    <div class="table-responsive">
                      <table class="table table-bordered table-hover table-striped">
                        <thead>
                          <tr>
                            <th>Sno</th>
                            <th>Membership Type</th>
                            <th>Valid UpTo</th>
                            <th>Fees</th>
                            <th>CGST(9%)</th>
                            <th>SGST(9%)</th>
                            <th>Total</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php 
                        $i=1;
                        foreach($res as $val){ ?>
                          <tr>
                            <td><?php echo $i; ?></td>
                            <td style="background:#c2f3c8; font-weight:bold;box-shadow: 3px 3px 5px #888888;"><?php echo $val['Membership_Type']; ?></td>
                            <td><?php echo $val['Duration']; ?></td>
                            <td><?php echo $val['Fees']; ?></td>
                            <td><?php echo $val['CGST']; ?></td>
                            <td><?php echo $val['SGST']; ?></td>
                            <td><?php echo $val['Total']; ?></td>
                            
                          </tr>
                        <?php $i++; } ?>
                        </tbody>
                      </table>
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