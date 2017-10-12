
              <h3 class="news-text"><span>What's New</span></h3>
              <marquee height="240" onmouseout="this.start()" onmouseover="this.stop()" scrolldelay="5" scrollamount="1" direction="up" behavior="scroll" style="height:240px;">
              <div>
              <?php 
			   $cureentdate=date("d-m-Y");
			
			  $getEvent=$db->ExecuteQuery("SELECT News_And_Events_Id,News_Heading,Images,Description,DATE_FORMAT(Event_Last_Date,'%d-%m-%Y') AS 'EventLastDate' FROM news_and_events WHERE DATE_FORMAT(Event_Last_Date,'%d-%m-%Y')>='".$cureentdate."' ORDER BY News_And_Events_Id DESC");
			  foreach($getEvent as $eventval)
			  {
			  
			  ?>
           <div class="box-news-event"><?php if($eventval['Images']!=""){?> <div class="img"><img width="60" height="60" src="<?php echo PATH_IMAGE_UPLOAD."/newsevent/thumb/".$eventval['Images'];?>" alt="" /></div><?php } ?> 
            <div><span class="news-head"><?php echo $eventval['News_Heading'];?></span><small><?php echo $eventval['EventLastDate'];?> </small> <p><?php echo $eventval['Description'];?></p></div>
             <div class="clearfix"></div>
        </div>
            <?php } ?>
           </div>
          </marquee>
          
            <div>
             
             <div class="fadeInLeft  wow animated">
                  <div class="link-box"> <a href="<?php echo PATH_LINK;?>/activity.php?id=OA=="> <img src="images/state-level.jpg" class="img-responsive"> <span>State Level Programmes</span> </a></div>
                </div>
            <div class="fadeInRight  wow animated">
                  <div class="link-box"> <a href="<?php echo PATH_LINK;?>/membership-discount.php"> <img src="images/membersupport.jpg" class="img-responsive"> <span>Member &amp; Discount</span> </a> </div>
                </div>
            <div class="fadeInLeft  wow animated">
                  <div class="link-box"> <a href="<?php echo PATH_LINK;?>/our-hotel.php"> <img src="images/youth-programm.jpg" class="img-responsive"> <span>Our Hostel</span> </a> </div>
                </div>
            <div class=" fadeInRight  wow animated">
                  <div class="link-box"> <a href="<?php echo PATH_LINK;?>/activity-calendar.php"> <img src="images/img-gallery.jpg" class="img-responsive"> <span>Activity Calendar</span> </a> </div>
             
            </div>
            
            </div>
            <br/>
            <br/>