<!doctype html>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Youth Hostels Association of india Chhattisgarh State - Budget Youth Hostels Accommodation of Chhattisgarh State | YHAICGSTATE.ORG</title>
    <meta name="keywords" content="youth hostels association of india chhattisgarh state, youth hostels in raipur, youth hostels in cg, budget youth hostelling, budget youth accommodations in india and chhattisgarh state, youth adventure travelling in chhattisgarh state, youth travel abroad facilities" />
    <meta name="description" content="Youth Hostels Association of India chhattisgarh state aims to provide budget Youth Hostelling, Accommodation & Education in India & also facilitates Youth Adventure Travel in chhattisgarh & India & Abroad." />
    <meta name="generator" content="YHAICGSTATE" />
    <!-- Latest compiled and minified CSS -->
    <link href="<?php echo PATH_CSS_LIBRARIES ?>/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<?php echo PATH_CSS_LIBRARIES ?>/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo PATH_CSS_LIBRARIES ?>/bootstrap-theme.min.css">
     <link rel="stylesheet" href="<?php echo PATH_CSS_LIBRARIES ?>/animate.min.css">
    <link rel="stylesheet" href="<?php echo PATH_CSS_LIBRARIES ?>/jquery.bxslider.css">
    <link rel="stylesheet" href="<?php echo PATH_CSS_LIBRARIES ?>/yhai-cg-state.css">

    <!-- latest jqury-->
    <script type="text/javascript" src="<?php echo PATH_JS_LIBRARIES ?>/jquery.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script type="text/javascript" src="<?php echo PATH_JS_LIBRARIES ?>/bootstrap.min.js"></script>
    <script type="text/javascript"  src="<?php echo PATH_JS_LIBRARIES ?>/jquery.bxslider.js"></script>
   <!-- <script  type="text/javascript" src="<?php echo PATH_JS_LIBRARIES ?>/wow.min.js"></script>-->
   
    <script>
      // Carousel Auto-Cycle
  $(document).ready(function() {
    $('.carousel').carousel({
      interval:3000
    })
	
  });

      </script>
    <script type="text/javascript">

         $(document).ready(function () {          

             $('.bxslider').bxSlider({

                 mode: 'vertical',

                 slideMargin: 3,

                 auto:true

             });  
			  $(function(){
    $(".dropdown1").hover(            
            function() {
                $('.dropdown-menu1', this).stop( true, true ).fadeIn("fast");
                $(this).toggleClass('open');
                $('b', this).toggleClass("caret caret-up");                
            },
            function() {
                $('.dropdown-menu1', this).stop( true, true ).fadeOut("fast");
                $(this).toggleClass('open');
                $('b', this).toggleClass("caret caret-up");                
            });
    });          

         });

    </script>
    
    </head>
   <?php 
  	$page=explode('/',$_SERVER['PHP_SELF']);
  ?> 
   <?php
   require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();
   ?> 
   
    <body>
    <!-- For Facebook Page -->
    <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.5";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!-- End For Facebook Page -->
<header>

<div>
	<marquee style="padding-top:10px; font:bold 12pt 'Trebuchet MS', Arial, Helvetica, sans-serif;color:#FFF; text-transform:uppercase;background-color:#043807" onmouseout="this.start()" onmouseover="this.stop()" scrolldelay="5" scrollamount="3">
     <?php 
                         $s2="SELECT * FROM latest_news order by sortid";
						$obj_2=$db->ExecuteQuery($s2); 
						$news="";
						foreach($obj_2 as $val)
						{
							$news.=$val['description']."  ";
                        
                        } ?>
                        <p><?php echo $news;?></p>
    
    </marquee>
</div>

      <div class="container-fluid">
    <div class="row">
          <div class="col-sm-6">
        <div  class="logo"><a href="#" ><img src="<?php echo PATH_IMAGE?>/logo.png" class="img-responsive"></a></div>
      </div>
          <div class="col-sm-6">
        <div class="logo pull-right">
              <div class="pull-left"><img src="<?php echo PATH_IMAGE?>/logo-right.png" class="img-responsive right-logo"></div>
              <div class="pull-left iso-text">
            <p>Call Now 9425294099</p>
            <p><span>ISO</span> 9001:2015 Certified Organization</p>
          </div>
              <div class="clearfix"></div>
            </div>
      </div>
        </div>
    
    <!-- Second navbar for categories -->
    <nav class="navbar">
          <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
          <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right manu-bar ">
              <li><a href="<?php echo PATH_LINK;?>/" class="<?php if($page[1]=="index.php" || $page[1]==""){echo 'active';}?>">Home</a></li>

              <li><a href="<?php echo PATH_LINK;?>/about-cg.php" class="<?php if($page[1]=="about-cg.php"){echo 'active';} ?>">About CG</a></li>

              <li><a href="<?php echo PATH_LINK;?>/tourist-places.php" class="<?php if($page[1]=="tourist-places.php"){echo 'active';} ?>">Tourist Places</a></li>

              
               <li class="active dropdown dropdown1"><a href="javascript:void(0)" id="dLabel" role="button" data-toggle="dropdown"  data-target="#"> Units/State <span class="caret"></span> </a>
               
               
            <ul class="dropdown-menu dropdown-menu1 multi-level" role="menu" aria-labelledby="dropdownMenu">
            <?php //$Getunit=$db->ExecuteQuery("SELECT Unit_Id,Unit_Name,status FROM unit_master");
			   $Getunit=$db->ExecuteQuery("SELECT unit_master.Unit_Id,unit_master.Unit_Name,unit_master.status 
       FROM unit_master 
       left join member ON unit_master.Unit_Id=member.Unit_Id");

			 foreach($Getunit as $GetunitVal)
			 {
				 if($GetunitVal['status']=='1'){  ?>
       
                  <li class="dropdown-submenu"> <a href="javascript:void(0)"><?php  
				  echo $GetunitVal['Unit_Name'];?> </a>
                  
                  <ul class="dropdown-menu">
                      <li><a tabindex="-1" href="about-us.php?id=<?php echo base64_encode($GetunitVal['Unit_Id']);?>">About Us</a></li>
                      <li><a tabindex="-1" href="office_bearer.php?id=<?php echo base64_encode($GetunitVal['Unit_Id']);?>">Office Bearer</a></li>
                      <li><a tabindex="-1" href="member.php?id=<?php echo base64_encode($GetunitVal['Unit_Id']);?>">Member</a></li>
                      
                      <li><a tabindex="-1" href="activity.php?id=<?php echo base64_encode($GetunitVal['Unit_Id']);?>">Activity</a></li>
                      <li><a tabindex="-1" href="assets.php?id=<?php echo base64_encode($GetunitVal['Unit_Id']);?>">Assets</a></li>     
                 
                </ul>
               
                  
                  </li>
                  <?php 
				 }} ?>
                </ul>
               
                
                
          </li>
            
          <li><a href="<?php echo PATH_LINK;?>/circular.php" class="<?php if($page[1]=="circular.php"){echo 'active';} ?>">Circular</a></li>
          <!--<li><a href="<?php echo PATH_LINK;?>/membership-discount.php" class="<?php if($page[1]=="membership-discount.php"){echo 'active';} ?>">Membership & Discount</a></li>-->
          <li><a href="<?php echo PATH_LINK;?>/membership-fees.php" class="<?php if($page[1]=="membership-fees.php"){echo 'active';} ?>">Membership Fees</a></li>
          <li><a href="<?php echo PATH_LINK;?>/discounts.php" class="<?php if($page[1]=="discounts.php"){echo 'active';} ?>">Discounts</a></li>
          <li><a href="<?php echo PATH_LINK;?>/activity-calendar.php" class="<?php if($page[1]=="activity-calendar.php"){echo 'active';} ?>">Activity Calendar</a></li>
          <li><a href="<?php echo PATH_LINK;?>/our-hotel.php" class="<?php if($page[1]=="our-hotel.php"){echo 'active';} ?>">Our Hostel</a></li>
          <li class="active dropdown dropdown1"><a href="#" id="dLabel" role="button" data-toggle="dropdown"  data-target="#"> Others <span class="caret"></span> </a>
            <ul class="dropdown-menu multi-level dropdown-menu1" role="menu" aria-labelledby="dropdownMenu">
                  <li><a href="<?php echo PATH_LINK;?>/apply-for-camp-leader.php">Apply for Camp Leader</a></li>
                  <li><a href="<?php echo PATH_LINK;?>/cancellation.php">Cancellation</a></li>
                  <li><a href="<?php echo PATH_LINK;?>/refund-rules.php">Refund Process</a></li>
                  <li><a href="http://yhaindia.org/uploads/downloads/Memorandum_Updated_YHAI.pdf" target="_blank">Memorandum And Rules &amp; Regulation</a></li>
                </ul>
          </li>
              <li><a href="<?php echo PATH_LINK;?>/contact-us.php" class="<?php if($page[1]=="contact-us.php"){echo 'active';} ?>">Contact Us </a></li>
            </ul>
        <div class="clearfix"></div>
      </div>
          <!--/.nav-collapse --> 
          
        </nav>
    <!-- /.navbar --> 
  </div>
      <div class="clearfix"></div>
    </header>