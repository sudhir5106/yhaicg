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

			var gst = ((parseFloat($(this).val())*9)/100).toFixed(2);
			$("#cgst").val(gst);
			$("#sgst").val(gst);

			var total = (gst*2)+parseFloat($(this).val());
			$("#total").val(Math.round(total).toFixed(2));

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
	/////////// Edit validation Unit Master /
	///////////////////////////////////////

	$("#editunit").validate({
			rules:
				 {
		  unitname:{
					required:true,
					},
		  
				  },
			messages:
					{		
					}
		});

	/////////////////////////////////////////
	/////////// Edit Unit Master ////////////
	///////////////////////////////////////
	
		$("#edit").click(function(){
			var editvalid=$("#editunit").valid();
				if(editvalid==true)
			{
				
				
				var formdata=new FormData()
				formdata.append('type',"editunit");
				formdata.append('unitname',$("#unitname").val());
			    formdata.append('aboutunit',$("#aboutunit").val());
				formdata.append('id',$("#id").val());
				$("#edit").hide();
				$("#reset").hide();
				$("#loading").show();
				
				var x;
				$.ajax({
						type:"POST",
						url:"unit-curd.php",
						data:formdata,
						async:false,
						success:function(data){
						//	alert(data);
							x=data;	
						},
						cache:false,
						contentType:false,
						processData:false,
					}); //eof Ajax
					if(x==1)
					{
						$('#loading').hide();
				$( "#dialog" ).dialog({
						dialogClass: "alert",
						buttons: {
						 'Ok': function() {
							window.location.replace("unit-list.php");
							}
						}
					  });
					}
				
			}// eof validation
			
		});
	
});