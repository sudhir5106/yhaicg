<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();

 $res = $db->ExecuteQuery("SELECT Coupon_Code, Offer, Details, Images FROM discount");
 
 ?>
<div class="container">
 <section class="content-header">
    <h1>Discounts</h1>
    <ol class="breadcrumb">
      <li>Home</li>
    	<li class="active">Discounts</li>
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
                    <div class="head-title">Apply For Discounts in Below Listed Stores</div>
                    <div class="table-responsive">
                      <table class="table table-bordered table-hover table-striped">
                        <thead>
                          <tr>
                            <th>Sno</th>
                            <th>Logo</th>
                            <th>Coupon Code</th>
                            <th>Offer</th>
                            <th>Offer Detail</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php 
                        $i=1;
                        foreach($res as $val){ ?>
                          <tr>
                            <td><?php echo $i; ?></td>
                            <td><img width='50' src='images/discount/thumb/<?php echo $val['Images']; ?>' alt=''></td>
                            <td style="background:#c2f3c8; font-weight:bold;box-shadow: 3px 3px 5px #888888;"><?php echo $val['Coupon_Code']; ?></td>
                            <td><?php echo $val['Offer']; ?></td>
                            <td><?php echo $val['Details']; ?></td>
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