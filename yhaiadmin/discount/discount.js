// JavaScript Document
$(document).ready(function(){
	 $('#loading').hide();
	////////////////////////////////////
	// Add Discount form validation
	////////////////////////////////////	
    $("#insertDiscount").validate({
	  rules: 
		{ 
			couponCode: 
			{ 
				required: true,				
			},
			offer: 
			{ 
				required: true,
			},
			discountInfo: 
			{ 
				required: true,				
			},
			image:			
			{
				required: true,
			},
						
		},
		messages:
		{
		}
	});// eof validation
	
			
	
	//////////////////////////////////
	// on click of submit button
	//////////////////////////////////
	$('#submit').click(function(){
		
		flag=$("#insertDiscount").valid();
		
		if (flag==true)
		{	
				
			var formdata = new FormData();
			formdata.append('type', "addDiscount");
			formdata.append('couponCode', $("#couponCode").val());
			formdata.append('offer', $("#offer").val());
			formdata.append('discountInfo', $("#discountInfo").val());
			
			var image = $("#image").val();
			if(image!="")
			{
				var extension = image.split('.').pop().toUpperCase();
				if (extension!="PNG" && extension!="JPG" && extension!="GIF" && extension!="JPEG" && extension!="PNG"){
					$('#errmsg').text('');
					$('#errmsg').show();
					$('#errmsg').append("Should be uploaded valid format PNG,JPG,GIF,JPEG ");;
					return;
				}
				var file_size = $('#image')[0].files[0].size;
			
				if(file_size>1000141) {
					$('#errmsg').text('');
					$('#errmsg').show();
					$("#errmsg").append("File size should be less than 1MB");				
					return false;
				} 
			}
		
			formdata.append('file', $('#image')[0].files[0]);
			
			$('#submit').hide();
		 	$('#reset').hide();//account_no
		  	$('#loading').show();	

			$.ajax({
			   type: "POST",
			   url: "discount-curd.php",
			   data:formdata,
			   success: function(data){ //alert(data);
				   
				   if(data==1)
					{
						 $('#loading').hide();
						 $( "#dialog" ).dialog({
							dialogClass: "alert",
							buttons: {
							 'Ok': function() {
								window.location.replace("index.php");
								}
							}
						  });
					}

			   },
			   cache: false,
			   contentType: false,
			   processData: false
			});//eof ajax

		}// eof if condition
		
	});
	
	
   	////////////////////////////////////
	// Edit Activity form validation
	////////////////////////////////////	
    $("#editDiscount").validate({
	  rules: 
		{ 
			couponCode: 
			{ 
				required: true,				
			},
			offer: 
			{ 
				required: true,
			},
			discountInfo: 
			{ 
				required: true,				
			}
						
		},
		messages:
		{
		}
	});// eof validation
	
	
    /////////////////////////////////
	// on click of edit button
	/////////////////////////////////		
	$('#edit').click(function(){
		
		flag=$("#editDiscount").valid();
		
		if (flag==true)
		{			
			
			var formdata = new FormData();
			formdata.append('type', "editDiscount");
			formdata.append('couponCode', $("#couponCode").val());
			formdata.append('offer', $("#offer").val());
			formdata.append('discountInfo', $("#discountInfo").val());

			
			var image = $("#image").val();
			
			if(image!="")
			{
				var extension = image.split('.').pop().toUpperCase();
				if (extension!="PNG" && extension!="JPG" && extension!="GIF" && extension!="JPEG" && extension!="PNG"){
					$('#errmsg').text('');
					$('#errmsg').show();
					$('#errmsg').append("Should be uploaded valid format PNG,JPG,GIF,JPEG ");;
					return;
				}
				
				var file_size = $('#image')[0].files[0].size;
			
				if(file_size>1000141) {
					$('#errmsg').text('');
					$('#errmsg').show();
					$("#errmsg").append("File size should be less than 1MB");
					
					return false;
				} 
				
			}

			formdata.append('file', $('#image')[0].files[0]);
			formdata.append('path', $("#path").val());	
			formdata.append('id', $("#id").val());
			
			$('#edit').hide();
		 	$('#reset').hide();
		  	$('#loading').show();
			
			$.ajax({
			   type: "POST",
			   url: "discount-curd.php",
			   data:formdata,
			   success: function(data){ //alert(data);
				   
				   if(data==1)
					{
		            	$('#loading').hide();
						$( "#dialog" ).dialog({
								dialogClass: "alert",
								buttons: {
								 'Ok': function() {
									window.location.replace("list.php");
									}
								}
							  });
						
					}
			   },
			   cache: false,
			   contentType: false,
			   processData: false
			});//eof ajax
		
			
		}// eof if condition
		
	});
	
	
	
	
	//////////////////////////////////
	// on click of delete button
	//////////////////////////////////
	
	$(document).on('click', '.delete', function() {
		
		var didConfirm = confirm("Are you sure you want to delete?");
	    if (didConfirm == true) {
			var id=$(this).attr("id");
			
			$.ajax({
				url:"discount-curd.php",
				type: "POST",
				data: {type:"delete",id:id},
				success: function(data){ //alert(data);
					if(data==1)
						{
							$('#loading').hide();
							
							$( "#dialog" ).dialog({
							dialogClass: "alert",
								buttons: {
								 'Ok': function() {
									window.location.replace("list.php");
									}
								}
						  	});
						}
				}
			});
			location.reload();
	    }
	});
	
	
});
