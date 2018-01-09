// JavaScript unit
	///////////////////////////////////////////////
	/////////// Add Empty Unit ///////////////////
	/////////////////////////////////////////////
	$(document).ready(function(){		  
	  $('#loading').hide();
	  
	  $("#insertfees").validate({
		 	rules:
			{
				membershipType:
				{
					required:true,
				},
				prefix:
				{
					required:true,
				},
				duration:
				{
					required:true,
				},
				fees:
				{
					required:true,
					number:true
				},
				cgst:
				{
					required:true,
				},
				sgst:
				{
					required:true,
				},
				total:
				{
					required:true,
				},
			},
			messages:
			{			
			}
	  });
	  
	  
		/////////////////////////////////////////
		/////////// on keyup of fees ///////////
		/////////////////////////////////////////
		$(document).on("keyup", "#fees", function(){

			if($(this).val()!=0){
				var gst = ((parseFloat($(this).val())*9)/100).toFixed(2);
				$("#cgst").val(gst);
				$("#sgst").val(gst);

				var total = (gst*2)+parseFloat($(this).val());
				$("#total").val(Math.round(total).toFixed(2));
			}
			else{
				$("#cgst").val("");
				$("#sgst").val("");
				$("#total").val("");
			}

		});//eof keyup event


		/////////////////////////////////////////
		/////////// Add Membship Fees ///////////
		/////////////////////////////////////////
		$(document).on("click", "#submit", function(){
		
			var unitvalid=$("#insertfees").valid();
			if(unitvalid==true)
			{
				var formdata=new FormData();
				formdata.append('type','addFees');
				formdata.append('membershipType',$("#membershipType").val());
				formdata.append('prefix',$("#prefix").val());
				formdata.append('duration',$("#duration").val());
				formdata.append('fees',$("#fees").val());
				formdata.append('cgst',$("#cgst").val());
				formdata.append('sgst',$("#sgst").val());
				formdata.append('total',$("#total").val());
				
				$("#submit").hide();
				$("#reset").hide();
				$("loading").show();
				
				$.ajax({
					   type:"POST",
					   url:"membership-curd.php",
					   data:formdata,
					   success:function(data){
						 
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
						  		});//eof dialog
							}//eof if condition

					   },
					   cache:false,
					   contentType:false,
					   processData:false,
					   
				});// eof ajax
						
		}// eof if condition
		
	});	
	
	
	/////////////////////////////////////////
	/////////// Edit Membership Fees ///////
	///////////////////////////////////////
	$(document).on("click", "#edit", function(){
	
		var editvalid=$("#insertfees").valid();
		
		if(editvalid==true)
		{
			var formdata=new FormData()
			formdata.append('type',"editFees");
			formdata.append('membershipType',$("#membershipType").val());
			formdata.append('prefix',$("#prefix").val());
			formdata.append('duration',$("#duration").val());
			formdata.append('fees',$("#fees").val());
			formdata.append('cgst',$("#cgst").val());
			formdata.append('sgst',$("#sgst").val());
			formdata.append('total',$("#total").val());
			formdata.append('id',$("#mid").val());

			$("#edit").hide();
			$("#reset").hide();
			$("#loading").show();
			
			$.ajax({
					type:"POST",
					url:"membership-curd.php",
					data:formdata,
					success:function(data){ //alert(data);
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
					cache:false,
					contentType:false,
					processData:false,
				}); //eof Ajax
				
			
		}// eof validation
		
	}); //eof edit
	

	/////////////////////////////////////////
	/////////// Edit Membership Fees ///////
	///////////////////////////////////////
	$(document).on("click", ".delete", function(){
		var mid = $(this).attr('id');

		var formdata=new FormData()
			formdata.append('type',"delete");
			formdata.append('mid',mid);

			$.ajax({
					type:"POST",
					url:"membership-curd.php",
					data:formdata,
					success:function(data){ //alert(data);
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
					cache:false,
					contentType:false,
					processData:false,
				}); //eof Ajax

	});//eof delete


});