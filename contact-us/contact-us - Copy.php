<?php 
include('../config.php');
require(PATH_INCLUDE.'/header.php');
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

<main>

  <div class="container">
   <!-- <h1 class="text-center page-title"><img src="<?php //echo PATH_IMAGE ?>/phone.png"/>  <span> CONTACT US</span></h1> -->
    
	<div class="contact-bgall contact-containt">
    
    <div class="col-md-7">
    <div class="clearfix">
    <div class="col-sm-4"><i class="fa fa-envelope envelope"></i></div>
    <div class="col-sm-8"><h1 class="contact-us-title">Contact us </h1>
   <p class="contact-text">For more information please fill out the form beside or contact our office direct.</p></div>
    	 
    
    </div>
    
    <div class="address-bg">
    	 <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
         
         
         <div class="col-sm-6"> <address>
                <strong> A-5 Class Contractions, PWD, National Highway, FCI, MPL & Bridge </strong><br>
               Devand Jain School Road,
50 Verdhman Nagar, Rajnadgaon (c.g.) 491441<br>
             
                <abbr title="Phone">
                    P:</abbr>
                07744-407025 | 9425235555

            </address>
            
             
            
            </div>
         <div class="col-sm-6">
            <address>
                <strong>E-mail</strong><br/>
                <a href="mailto:sanjaysinghi@redimail.com">sanjaysinghi@redimail.com</a><br />
                <a href="mailto:info@ssrcivilcon.com">info@ssrcivilcon.com</a>
              
            </address>
         
         </div>
           
          
         
    <div class="clearfix"></div>
    
    </div>
    
    
          
        </div>
        <div class="col-md-5">
        	
        <div align="center" class="text-success" id="success_msg" style="padding-bottom:5px;"></div>
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
         
    <div class="clearfix"></div>
    </div>
 
   


    <!--========== top main container end here=======-->
    
    
    <!--main-container div--> 
  </div>
</main>


<?php include(PATH_INCLUDE.'/footer.php') ?>