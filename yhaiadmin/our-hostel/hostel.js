// JavaScript Document
$(document).ready(function(){
	 $('#loading').hide();
	//////////////////////////////////
	// Add Sector form validation
	////////////////////////////////////
	
    $("#insertHostel").validate({
	  rules: 
		{ 
			cityname: 
			{ 
				required: true,
				
			},
			hostelname: 
			{ 
				required: true,	
				
			},
			
			address: 
			{ 
				required: true,	
				
			},
			email:
			{
			email:true,
			},
			mobile:
			{
					
					digits:true,
					minlength:10,
					maxlength:10,
					//MobileNoExist:true

			},
			
					
		},
		messages:
		{
		}
	});// eof validation
	
	
	///////////////////////////////////
	// Edit Party form validation
	////////////////////////////////////
	$("#editHostel").validate({
	  rules: 
		{ 
			cityname: 
			{ 
				required: true,
				
			},
			hostelname: 
			{ 
				required: true,	
				
			},
			
			address: 
			{ 
				required: true,	
				
			},	
			email:
			{
			email:true,
			},
			mobile:
			{
					
					digits:true,
					minlength:10,
					maxlength:10,
					//MobileNoExist:true

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
		
		flag=$("#insertHostel").valid();
		
		if (flag==true)
		{	
			$('#submit').hide();
		 $('#reset').hide();//account_no
		  $('#loading').show();		
			var formdata = new FormData();
			formdata.append('type', "addHostel");
			formdata.append('cityname', $("#cityname").val());
			formdata.append('hostelname', $("#hostelname").val());
			formdata.append('address', $("#address").val());
			formdata.append('nearby', $("#nearby").val());
			formdata.append('mobile', $("#mobile").val());
			formdata.append('email', $("#email").val());
			
			
			var x;
			$.ajax({
			   type: "POST",
			   url: "hostel-curd.php",
			   data:formdata,
			   async: false,
			   success: function(data){ //alert(data);
				   x=data;
			   },
			   cache: false,
			   contentType: false,
			   processData: false
			});//eof ajax
		
			if(x==1)
			{
					 $('#loading').hide();
				$( "#dialog" ).dialog({
						dialogClass: "alert",
						buttons: {
						 'Ok': function() {
							window.location.replace("hostel-list.php");
							}
						}
					  });
			}
		}// eof if condition
		
	});
	
	
    /////////////////////////////////
	// on click of edit button
	/////////////////////////////////		
	$('#edit').click(function(){
		
		flag=$("#editHostel").valid();
		
		if (flag==true)
		{			
			$('#edit').hide();
		 $('#reset').hide();
		  $('#loading').show();
			var formdata = new FormData();
			formdata.append('type', "editHostel");
			formdata.append('cityname', $("#cityname").val());
			formdata.append('hostelname', $("#hostelname").val());
			formdata.append('address', $("#address").val());
			formdata.append('nearby', $("#nearby").val());
			formdata.append('mobile', $("#mobile").val());
			formdata.append('email', $("#email").val());		
			formdata.append('id', $("#id").val());
			
			var x;
			$.ajax({
			   type: "POST",
			   url: "hostel-curd.php",
			   data:formdata,
			   async: false,
			   success: function(data){//alert(data);
				   x=data;
			   },
			   cache: false,
			   contentType: false,
			   processData: false
			});//eof ajax
		
			if(x==1)
			{
            	$('#loading').hide();
				$( "#dialog" ).dialog({
						dialogClass: "alert",
						buttons: {
						 'Ok': function() {
							window.location.replace("hostel-list.php");
							}
						}
					  });
				
			}
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
				url:"hostel-curd.php",
				type: "POST",
				data: {type:"delete",id:id},
				async:false,
				success: function(data){ //alert(data);
				}
			});
			location.reload();
	    }
	});
	
	    ///////////////////////////////
		//// search Member///////
		///////////////////////////////
		
	$('#search1').click(function(){
		
		var formdata = new FormData();
		formdata.append('type', "searchid");
		formdata.append('search_cityname', $("#search_cityname").val());
		
		
			var x;
			$.ajax({
			   type: "POST",
			   url: "hostel-report.php",
			   data: formdata,
			   async: false,
			   success: function(data){ // alert(data);
				   x=data;
				   $('#add').html(data);
			   },
			   cache: false,
			   contentType: false,
			   processData: false,
			});//eof ajax
		
			if(x==0)
			{
				window.location.replace("hostel-list.php");
			}
			
		
		
	});
	
	
	
	
});
