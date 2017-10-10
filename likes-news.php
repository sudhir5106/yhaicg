<div class="col-sm-5 pull-right float-none">
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
            </div>
            <div class="col-sm-5 pull-right float-none">
              <h3 class="news-text"><span>Likes</span></h3>
              <div> <!--<img src="images/likes.png" class="img-responsive">-->
              		<div class="fb-page" data-href="https://www.facebook.com/yhaicgstate/" data-tabs="YHAICG STATE" data-width="500" data-small-header="false" data-adapt-

container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"><div class="fb-xfbml-parse-ignore"><blockquote 

cite="https://www.facebook.com/yhaicgstate/"><a href="https://www.facebook.com/yhaicgstate/">Yhaicg State</a></blockquote></div></div>
              		
               </div>
            </div>