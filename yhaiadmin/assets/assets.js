// JavaScript Document
$(document).ready(function(){
	 $('#loading').hide();
	//////////////////////////////////
	// Add Sector form validation
	////////////////////////////////////
	
    $("#insertasset").validate({
	  rules: 
		{ 
			unitname: 
			{ 
				required: true,
				
			},			
			
			assets_name: 
			{ 
				required: true,
				//alphanumeric: true	
				
			},
			aboutasset: 
			{ 
				required: true,	
				
			},
			image:			
			{
				//required: true,
				//extension: "jpg|png|jpeg|gif",
				//Size:true,
			},
						
		},
		messages:
		{
		}
	});// eof validation
	
	
	///////////////////////////////////
	// Edit Party form validation
	////////////////////////////////////
	$("#editasset").validate({
	  rules: 
		{ 
			unitname: 
			{ 
				required: true,
				
			},			
			
			assets_name: 
			{ 
				required: true,
				//alphanumeric: true	
				
			},
			aboutasset: 
			{ 
				required: true,	
				
			},
			image:			
			{
				//required: true,
				//extension: "jpg|png|jpeg|gif",
				//Size:true,
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
		
		flag=$("#insertasset").valid();
		
		if (flag==true)
		{	
			
			var formdata = new FormData();
			formdata.append('type', "addAsset");
			formdata.append('unitname', $("#unitname").val());
			formdata.append('assets_name', $("#assets_name").val());
			formdata.append('aboutasset', $("#aboutasset").val());
			
			var image = $("#image").val();
			if(image!="")
			{
			var extension = image.split('.').pop().toUpperCase();
			if (extension!="PNG" && extension!="JPG" && extension!="GIF" && extension!="JPEG" && extension!="PNG"){
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
			
			var x;
			$.ajax({
			   type: "POST",
			   url: "assets-curd.php",
			   data:formdata,
			   async: false,
			   success: function(data){ //alert(data);
				  x=data.split('@@');
			   },
			   cache: false,
			   contentType: false,
			   processData: false
			});//eof ajax
		
			if(x[1]==1)
			{
				$('#loading').hide();
				$( "#dialog" ).dialog({
						dialogClass: "alert",
						buttons: {
						 'Ok': function() {
							window.location.replace("assets-list.php");
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
		
		flag=$("#editasset").valid();
		
		if (flag==true)
		{			
			
			var formdata = new FormData();
			formdata.append('type', "editAsset");
			formdata.append('unitname', $("#unitname").val());
			formdata.append('assets_name', $("#assets_name").val());
			formdata.append('aboutasset', $("#aboutasset").val());
			var image = $("#image").val();
			if(image!="")
			{
			var extension = image.split('.').pop().toUpperCase();
			if (extension!="PNG" && extension!="JPG" && extension!="GIF" && extension!="JPEG" && extension!="PNG"){
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
			var x;
			$.ajax({
			   type: "POST",
			   url: "assets-curd.php",
			   data:formdata,
			   async: false,
			   success: function(data){//alert(data);
				   x=data.split('@@');
			   },
			   cache: false,
			   contentType: false,
			   processData: false
			});//eof ajax
		
			if(x[1]==1)
			{
            	$('#loading').hide();
				$( "#dialog" ).dialog({
						dialogClass: "alert",
						buttons: {
						 'Ok': function() {
							window.location.replace("assets-list.php");
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
				url:"assets-curd.php",
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
		//// search Assets///////
		///////////////////////////////
		
	$('#search1').click(function(){
		
		var formdata = new FormData();
		formdata.append('type', "searchid");
		formdata.append('search_unitname', $("#search_unitname").val());
		
		
			var x;
			$.ajax({
			   type: "POST",
			   url: "assets-report.php",
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
				window.location.replace("assets-list.php");
			}
			
		
		
	});
	
	
});
