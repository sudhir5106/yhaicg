// JavaScript Document
$(document).ready(function(){
	 $('#loading').hide();
	//////////////////////////////////
	// Add Sector form validation
	////////////////////////////////////
	/*
	$("#heading").keypress(function (e){
        var code =e.keyCode || e.which;
		$('#headingerrmsg').text('');
		$('#headingerrmsg').hide();
        if((code<65 || code>90)&&(code<97 || code>122)&&code!=32&&code!=46)  
        {
          
		  $('#headingerrmsg').show();
		  $('#headingerrmsg').append("Only alphabates are allowed");;
          return false;
        }
    });*/
	
	
    $("#insertnewsevent").validate({
	  rules: 
		{ 
			heading: 
			{ 
				required: true,
				//alphanumeric: true
				//lettersonly: true
				
			},			
			
			newsdetail: 
			{ 
				required: true,	
				
			},
			eventview: 
			{ 
				required: true,	
				
			},
			
						
		},
		messages:
		{
		}
	});// eof validation
	
	
	///////////////////////////////////
	// Edit Party form validation
	////////////////////////////////////
	$("#editnewsevent").validate({
	  rules: 
		{ 
			heading: 
			{ 
				required: true,
				//alphanumeric: true
				
			},			
			
			newsdetail: 
			{ 
				required: true,	
				
			},
			eventview: 
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
		
		flag=$("#insertnewsevent").valid();
		
		if (flag==true)
		{	
				
			var formdata = new FormData();
			formdata.append('type', "addnewsevent");
			formdata.append('heading', $("#heading").val());
			formdata.append('timeline', $("#timeline").val());
			formdata.append('newsdetail', tinyMCE.get('newsdetail').getContent());			
			formdata.append('eventview', $("#eventview").val());
			var image = $("#image").val();
			if(image!="")
			{
			var extension = image.split('.').pop().toUpperCase();
			if (extension!="PNG" && extension!="JPG" && extension!="GIF" && extension!="JPEG" && extension!="PNG"){
				$('#errmsg').text('');
				$('#errmsg').show();
				$('#errmsg').append("Should be uploaded valid format PNG,JPG,GIF,JPEG ");
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
			   url: "newsevent-curd.php",
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
							window.location.replace("newsevent-list.php");
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
		
		flag=$("#editnewsevent").valid();
		
		if (flag==true)
		{			
			
			var formdata = new FormData();
			formdata.append('type', "editNewsEvent");
			formdata.append('heading', $("#heading").val());
			formdata.append('timeline', $("#timeline").val());
			formdata.append('newsdetail', tinyMCE.get('newsdetail').getContent());	
			formdata.append('eventview', $("#eventview").val());
			
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
			var x;
			$.ajax({
			   type: "POST",
			   url: "newsevent-curd.php",
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
							window.location.replace("newsevent-list.php");
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
				url:"newsevent-curd.php",
				type: "POST",
				data: {type:"delete",id:id},
				async:false,
				success: function(data){ //alert(data);
				}
			});
			location.reload();
	    }
	});
	
});
