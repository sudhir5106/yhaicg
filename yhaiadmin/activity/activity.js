// JavaScript Document
$(document).ready(function(){
	 $('#loading').hide();
	//////////////////////////////////
	// Add Sector form validation
	////////////////////////////////////
	
    $("#insertactivity").validate({
	  rules: 
		{ 
			unitname: 
			{ 
				required: true,
				
			},
			heading: 
			{ 
				required: true,
				//alphanumeric: true
				
			},
			cactivitydate: 
			{ 
				required: true,
				//alphanumeric: true
				
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
		   
		flag=$("#insertactivity").valid();
		
		if (flag==true)
		{	
				
			var formdata = new FormData();
			formdata.append('type', "addActivity");
			formdata.append('unitid', $("#unitname").val());
			formdata.append('heading', $("#heading").val());
			//formdata.append('activitydate', $("#activitydate").val());
			formdata.append('activitydetail', $("#activitydetail").val());
			//formdata.append('activitydetail', tinyMCE.get('activitydetail').getContent());
			formdata.append('cactivitydate', $("#cactivitydate").val());
			
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
			var x;
			$.ajax({
			   type: "POST",
			   url: "activity-curd.php",
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
							window.location.replace("activity-gallery.php?id="+x[2]);
							}
						}
					  });
			}
		}// eof if condition
		
	});
	
	//////////////////////////////////
	// on click of submit button of gallery
	//////////////////////////////////
	$('#submitgallery').click(function(){
		
		
			
		
		  $('#loading').show();		
			var formdata = new FormData();
			formdata.append('type', "addgallery");
			formdata.append('activityid', $("#activityid").val());
			var totalFiles = document.getElementById("MultiPicUpload").files.length;
			if(totalFiles<1)
			{
				$('#errmsg').show();
				$('#errmsg').append("image is required");;
				return;
			}
			for (var i = 0; i < totalFiles; i++) {
				var file = document.getElementById("MultiPicUpload").files[i];
				var image = $("#MultiPicUpload").val();
				var file_size = $('#MultiPicUpload')[0].files[0].size;
				
				
			var extension = image.split('.').pop().toUpperCase();
			if (extension!="PNG" && extension!="JPG" && extension!="GIF" && extension!="JPEG" && extension!="png"){
				$('#errmsg').text('');
				$('#errmsg').show();
				$('#errmsg').append("Should be uploaded valid format PNG,JPG,GIF,JPEG ");;
				return;
			}if(file_size>1000141) {
		$('#errmsg').text('');
		$('#errmsg').show();
		$("#errmsg").append("File size should be less than 1MB");
		
		return false;
	} 
			
			else
			{
				formdata.append("file2[]", file);  //Use [] to add multiple.
			}
			}
			
			var x;
			$.ajax({
			   type: "POST",
			   url: "activity-curd.php",
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
							location.reload();
							}
						}
					  });
			}
		
		
	});
	
	
	
	//////////////////////////////////
	// on click of submit button of gallery
	//////////////////////////////////
	$('#submitvideo').click(function(){
		
		
		
		
		  $('#loading').show();		
			var formdata = new FormData();
			formdata.append('type', "addVideo");
			formdata.append('activityid', $("#activityid").val());
			
				
				var video = $("#video").val();
				
				if(video=="")
				{
					$('#errmsg').show();
				$('#errmsg').append("Video is required");;
				return;
				}
			var extension = video.split('.').pop().toUpperCase();
			
			if (extension!="mp4" && extension!="MP4"){
				$('#errmsg').text('');
				$('#errmsg').show();
				$('#errmsg').append("Should be uploaded valid format mpg,MPG ");
				return;
			}else
			{
				
				formdata.append('file', $('#video')[0].files[0]); //Use [] to add multiple.
			}
				
			
			
			
			
			var x;
			$.ajax({
			   type: "POST",
			   url: "activity-curd.php",
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
							location.reload();
							}
						}
					  });
			}
		
		
		
	});
	
   //////////////////////////////////
// on click of delete button for  image delete
//////////////////////////////////

	$(".deleteimage").click(function(){
		
		var didConfirm = confirm("Are you sure you want to delete?");
	    if (didConfirm == true) {
			var id=$(this).attr("id");
			$("#loding").show();
			$.ajax({
				url:"activity-curd.php",
				type: "POST",
				data: {type:"deletegallery",id:id},
				async:false,
				success: function(data){ //alert(data);
				}
			});
			location.reload();
	    }
	});
	
	
	
	
	  //////////////////////////////////
// on click of delete button for  image delete
//////////////////////////////////

	$(".deletevideo").click(function(){
		
		var didConfirm = confirm("Are you sure you want to delete?");
	    if (didConfirm == true) {
			var id=$(this).attr("id");
			$("#loding").show();
			$.ajax({
				url:"activity-curd.php",
				type: "POST",
				data: {type:"deletevideo",id:id},
				async:false,
				success: function(data){ //alert(data);
				}
			});
			location.reload();
	    }
	});
	
//////////////////////////////////
	// Edit Activity form validation
	////////////////////////////////////
	
    $("#editactivity").validate({
	  rules: 
		{ 
			unitname: 
			{ 
				required: true,
				
			},
			heading: 
			{ 
				required: true,	
				//alphanumeric: true
				
			},
			image:			
			{
				//required: true,
				//extension: "jpg|png|jpeg|gif",
				//Size:true,
			},
			cactivitydate: 
			{ 
				required: true,
				//alphanumeric: true
				
			},
						
		},
		messages:
		{
		}
	});// eof validation
	
	
	
	
	
    /////////////////////////////////
	// on click of edit button
	/////////////////////////////////		
	$('#edit').click(function(){
		
		flag=$("#editactivity").valid();
		
		if (flag==true)
		{			
			
			var formdata = new FormData();
			formdata.append('type', "editactivity");
			formdata.append('unitid', $("#unitname").val());
			formdata.append('heading', $("#heading").val());
			//formdata.append('activitydate', $("#activitydate").val());
			formdata.append('cactivitydate', $("#cactivitydate").val());
			formdata.append('activitydetail', tinyMCE.get('activitydetail').getContent());
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
			   url: "activity-curd.php",
			   data:formdata,
			   async: false,
			   success: function(data){//alert(data);
				   x=data.split('@@');;
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
							window.location.replace("activity-list.php");
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
				url:"activity-curd.php",
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
		//// search Party///////
		///////////////////////////////
		
	$('#search1').click(function(){
		
		var formdata = new FormData();
		formdata.append('type', "searchid");
		formdata.append('search_unitname', $("#search_unitname").val());
		formdata.append('search_activityname', $("#search_activityname").val());
		
		
			var x;
			$.ajax({
			   type: "POST",
			   url: "activity-report.php",
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
				window.location.replace("index.php");
			}
			
		
		
	});	
	
	
});
