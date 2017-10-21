<?php $slides = $db->ExecuteQuery("SELECT Slide_Image, Slide_Caption FROM slides"); ?>

<div class="slider">
      <div id="carousel-example-captions" class="carousel slide" data-ride="carousel"> 
    <!--<ol class="carousel-indicators">
               <li data-target="#carousel-example-captions" data-slide-to="0" class=""></li>
               <li data-target="#carousel-example-captions" data-slide-to="1" class=""></li>
               <li data-target="#carousel-example-captions" data-slide-to="2" class="active"></li>
                <li data-target="#carousel-example-captions" data-slide-to="3" ></li>
               </ol>-->
    <div class="carousel-inner wow fadeInDown animated" role="listbox">
    	
    	<?php 
		$i=1;
		foreach($slides as $slidesVal){ ?>
        <div class="item <?php echo $i==1?'active':''?>">
          <img src="images/slides/<?php echo $slidesVal['Slide_Image'] ?>" alt="" style="width:100%;">
          <div class="carousel-caption">
              <h3><?php echo $slidesVal['Slide_Caption'] ?></h3>
          </div>
        </div>
		<?php $i++; }?>
        <!--<div class="item">
          <img src="images/slider2.jpg" style="width:100%;">
          <div class="carousel-caption">
             
          </div>
        </div>

        <div class="item">
          <img src="images/slider3.jpg" style="width:100%;">
          <div class="carousel-caption">
               
          </div>
        </div>

        <div class="item">
          <img src="images/slider4.jpg" style="width:100%;">
          <div class="carousel-caption">
               
          </div>
        </div>

        <div class="item">
          <img src="images/slider5.jpg" style="width:100%;">
          <div class="carousel-caption">
               
          </div>
        </div>

        <div class="item">
          <img src="images/slider6.jpg" style="width:100%;">
          <div class="carousel-caption">
               
          </div>
        </div>

        <div class="item">
          <img src="images/slider7.jpg" style="width:100%;">
          <div class="carousel-caption">
               
          </div>
        </div>-->

    </div>
    
    <a class="left carousel-control" href="#carousel-example-captions" role="button" data-slide="prev"> <i class="fa fa-angle-left"></i> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#carousel-example-captions" role="button" data-slide="next"> <i class="fa fa-angle-right"></i> <span class="sr-only">Next</span> </a></div>
    </div>