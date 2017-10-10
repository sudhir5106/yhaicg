<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 
 ?>
 <script type="text/javascript" src="<?php echo PATH_JS_LIBRARIES; ?>/jquery.validate.min.js"></script> 
<script src="<?php echo PATH_ADMIN_JS_LIBRARIES?>/jquery.validate.js"></script>
 <script>
	      $(document).ready(function(){	
		   
		 $("#contact").validate({
		  rules:{
			name: {
		      required: true,			  
		    },  
		   email: {
		      required: true,
			  email: true,			 
		    },
			mobile: {
		      required: true,
			 number: true,
			 minlength: 10,
			 maxlength:11,
			  
		    },
			
			message: {
		      required: true,		 
			  
		    },
			
			},
			onfocusout: false,
			onkeyup: false,
			onclick: false
		});
		
		
	$('#btnContactUs').click(function(){
		
		 if ($("#contact").valid() ){
			var x;
			
		    $("#submit").html('<button type="button" class="btn btn-primary pull-right" id="">Send Message</button>');	
			
			$.ajax({
			   type: "POST",
			   url: "contactus-curd.php",
			   data: {type: "contact",
			        name:$("#name").val(),
					email:$("#email").val(),
					mobile:$("#mobile").val(),
					message:$("#message").val()
					},
			   async: false,
			   success: function(data){ //alert(data);			   
				   x=data;	  
			   },
			   
			});//eof ajax
		     if(x==1)
			 {
				//location.reload();
				
				$("#success_msg").html("<strong> Your message has been send!</strong>");
                window.setTimeout(function(){location.reload()},3000);
			 }
		 }
	})
		
});// eof ready function
</script>
<div class="container">
 <section class="content-header">
    <h1>Contact Us</h1>
    <ol class="breadcrumb">
      <li>Home</li>
    	<li class="active">Contact Us</li>
    </ol>
  </section>
  </div>


<main>
      
      <div>
    <div class="container">
      <div class="box-main">
          <div class="row">
         <!-- /////////////left bar containt here-->
          <div class="col-sm-6">
        <div class="address-bg">
    	 <legend><span class="glyphicon glyphicon-globe"></span> Our National office</legend>
         
         
         <div class="col-sm-6"> <address>
                <strong>Youth Hostels Association of India<br />
5, Nyaya Marg, Chanakyapuri<br />
New Delhi-110021

<br>
             
               

            </address>
            
             
            
            </div>
         <div class="col-sm-6">
            <address>
                <strong>E-mail</strong><br/>
                <a href="mailto:info@yhaindia.org">info@yhaindia.org</a>
                <br />
               <abbr title="Tel">
                    Tel:</abbr>7827999000
            </address>
         
         </div>
           
          
         
    <div class="clearfix"></div>
    
    </div>
       <div class="address-bg">
    	 <legend><span class="glyphicon glyphicon-globe"></span> Our State office</legend>
         
         
         <div class="col-sm-6"> <address>
                <strong> Youth Hostels Association of India<br />
Qtr. No. 4-B, Street No. 26<br />
Sector – 9<br />
P.O. Bhilai <br />
Dist. Durg (CG) <br /> Pin : 490 009
<br/>
             
               

            </address>
            
             
            
            </div>
         <div class="col-md-6">
            <address>
                <strong>E-mail</strong><br/>
                <a href="mailto:chattisgarhstateyhai@gmail.com"> chattisgarhstateyhai@gmail.com</a> <br />
               
               <abbr title="Mobile">
                    Mobile:</abbr>
               9425294099
            </address>
         
         </div>
           
          
         
    <div class="clearfix"></div>
    
    </div>   
          
          
       
          	
        <div align="center" class="text-success" id="success_msg" style="padding-bottom:5px;"></div>
         <legend><i class="fa fa-paper-plane"></i> Contact Now</legend>
         <p>Please provide the following information about your  needs to help us serve you better. </p>
          <form class="form-horizontal" action="" id="contact" method="post">
          <fieldset class="col-sm-12">
          
    
            <!-- Name input-->
            <div class="form-group">
          
              <label class=" control-label" for="name">Name<span>*</span></label>
        <div>
                 <input type="text" class="form-control" id="name" placeholder="Enter name" required />
              </div>
            </div>
    
            <!-- Email input-->
            <div class="form-group">
         
              <label class=" control-label" for="email">Your E-mail<span>*</span></label>
         <div>
             <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required /></div>
             
            </div>
<!--    contact no.-->
    <div class="form-group">

              <label class=" control-label" for="mobile">Contact No.<span>*</span></label>
             <div>
             <input type="text" class="form-control" id="mobile"  name="mobile" placeholder="Contact No." required /></div>
             
            </div>
            <!-- Are you.-->
    
            <!-- Message body -->
            <div class="form-group">
            
              <label class=" control-label" for="message">Your message<span>*</span></label>
             <div>
              <textarea name="message" id="message" class="form-control" rows="4"  placeholder="Please enter your message here..." required></textarea>
              </div>
            </div>
    
            <!-- Form actions -->
            <div class="form-group">
              <div class="text-right" id="submit">
                        <button type="button" class="btn btn-success pull-right raised" id="btnContactUs">Send Message</button>
              </div>
            </div>
          </fieldset>
          </form>
          
          
          
  
          
        </div>
          <!-- /////////////left bar containt here-->
          <div class="col-md-6">
          	<div>
            	<img src="images/cg-map.gif" style="border:none;" class="img-responsive" />
            
            
            </div>
          
          
          </div>
          
          
          
    </div>
     
        
      </div>
        </div>
  </div>
    </main>


    <?php include(PATH_INCLUDE.'/footer.php'); ?>