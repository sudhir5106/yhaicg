// JavaScript Document
$(document).ready(function(){
	 $('#loading').hide();
	//////////////////////////////////
	// Add Sector form validation
	////////////////////////////////////
	/*
	$("#circulername").keypress(function (e){
        var code =e.keyCode || e.which;
		$('#headingerrmsg').text('');
		$('#headingerrmsg').hide();
        if((code<65 || code>90)&&(code<97 || code>122)&&code!=32&&code!=46)  
        {
          
		  $('#headingerrmsg').show();
		  $('#headingerrmsg').append("Only alphabates are allowed");;
          return false;
        }
    });
	*/
	
    $("#insertcirculer").validate({
	  rules: 
		{ 
			circulername: 
			{ 
				required: true,
				//alphanumeric: true
				
			},			
			
			aboutcirculer: 
			{ 
				required: true,	
				
			},
			circulardate: 
			{ 
				required: true,	
				
			},
			
			UploadFile:			
			{
				//required: true,
				extension: "PDF|DOC|DOCX|JPG|JPEG",
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
	$("#editcircular").validate({
	  rules: 
		{ 
			circulername: 
			{ 
				required: true,
				//alphanumeric: true
				
			},			
			
			aboutcirculer: 
			{ 
				required: true,	
				
			},
			circulardate: 
			{ 
				required: true,	
				
			},
			
			UploadFile:			
			{
				//required: true,
				extension: "PDF|DOC|DOCX|JPG|JPEG",
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
		
		flag=$("#insertcirculer").valid();
		
		if (flag==true)
		{	
				
			var formdata = new FormData();
			formdata.append('type', "addcirculer");
			formdata.append('circulername', $("#circulername").val());
			formdata.append('aboutcirculer', $("#aboutcirculer").val());
			formdata.append('circulardate', $("#circulardate").val());
			formdata.append('file', $('#UploadFile')[0].files[0]);
			
			$('#submit').hide();
		 $('#reset').hide();//account_no
		  $('#loading').show();	
			var x;
			$.ajax({
			   type: "POST",
			   url: "circular-curd.php",
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
							window.location.replace("circular-list.php");
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
		
		flag=$("#editcircular").valid();
		
		if (flag==true)
		{			
			
			var formdata = new FormData();
			formdata.append('type', "editcircular");
			formdata.append('circulername', $("#circulername").val());
			formdata.append('aboutcirculer', $("#aboutcirculer").val());
			formdata.append('file', $('#UploadFile')[0].files[0]);
			formdata.append('path', $("#path").val());	
			formdata.append('id', $("#id").val());
			formdata.append('circulardate', $("#circulardate").val());
			
			$('#edit').hide();
		 $('#reset').hide();
		  $('#loading').show();
			var x;
			$.ajax({
			   type: "POST",
			   url: "circular-curd.php",
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
							window.location.replace("circular-list.php");
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
				url:"circular-curd.php",
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
