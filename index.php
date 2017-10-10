<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();
 ?>
 <?php include(PATH_INCLUDE.'/slider.php');?>
<main>
      <div class="top-bg-about wow fadeInDown animated ">
    <div class="container">
          <div class="row">
        <div class="col-sm-3 img-space-top"> <img src="images/about-img.jpg" class="img-responsive"> </div>
        <div class="col-sm-9">
              <h1>About us</h1>
              <h3>Youth Hostels Association of india Chhattisgarh State</h3>
               <p>Chattisgarh as a new state of India was formed on November 1st 2000 from the erstwhile Madhya Pradesh. YHAI CG State Branch was officially formed on 27-03-2001 under the leadership of Shri. Alok Shukla, IAS.</p>
            </div>
      </div>
        </div>
  </div>
      <div class="main-bg">
    <div class="container">
          <div class="row">
        <div class="col-sm-7">
              <div class="row">
            <div class="col-sm-6 col-xs-6 col-mb-0 fadeInLeft  wow animated">
                  <div class="link-box"> <a href="<?php echo PATH_LINK;?>/activity.php?id=OA=="> <img src="images/state-level.jpg" class="img-responsive"> <span>State Level Programmes</span> </a> </div>
                </div>
            <div class="col-sm-6 col-xs-6 col-mb-0 fadeInRight  wow animated">
                  <div class="link-box"> <a href="<?php echo PATH_LINK;?>/membership-discount.php"> <img src="images/membersupport.jpg" class="img-responsive"> <span>Member &amp; Discount</span> </a> </div>
                </div>
            <div class="col-sm-6 col-xs-6 col-mb-0 fadeInLeft  wow animated">
                  <div class="link-box"> <a href="<?php echo PATH_LINK;?>/our-hotel.php"> <img src="images/youth-programm.jpg" class="img-responsive"> <span>Our Hostel</span> </a> </div>
                </div>
            <div class="col-sm-6 col-xs-6 col-mb-0 fadeInRight  wow animated">
                  <div class="link-box"> <a href="<?php echo PATH_LINK;?>/activity-calendar.php"> <img src="images/img-gallery.jpg" class="img-responsive"> <span>Activity Calendar</span> </a> </div>
                </div>
          </div>
            </div>
        <div class="clearfix hidden-pc"></div>
        
        <?php include "likes-news.php";?>
        <div class="clearfix hidden-pc"></div>
        <div class="col-sm-7 wow fadeInDown animated">
              <div class="update-box">
            <h3 class="text-me">Thoughts of the day</h3>
            <ul class="bxslider">
                  <li>
                <blockquote>You must not lose faith in humanity. Humanity is an ocean; if a few drops of the ocean are dirty, the ocean does not become dirty.
                      <p>- Mahatma Gandhi</p>
                    </blockquote>
              </li>
               <li>
              	<blockquote>As a child of God, I am greater than anything that can happen to me. 
                
                 <p>- Abdul Kalam</p>
                </blockquote>
              </li>
                  <li>
                <blockquote>Not all of us can do great things. But we can do small things with great love. 
                      <p>- Mother Teresa</p>
                    </blockquote>
              </li>
                  <li>
                <blockquote> The greatest religion is to be true to your own nature. Have faith in yourselves. 
                      <p>- Swami Vivekananda</p>
                    </blockquote>
              </li>
                <li>
                <blockquote> The burden of the self is lightened when I laugh at myself. 
                      <p>- Rabindranath Tagore</p>
                    </blockquote>
              </li>
               <li>
                <blockquote> A man is great by deeds, not by birth.
                      <p>- Chanakya</p>
                    </blockquote>
              </li>
             
                </ul>
          </div>
            </div>
      </div>
        </div>
  </div>
    </main>
    <?php include(PATH_INCLUDE.'/footer.php'); ?>