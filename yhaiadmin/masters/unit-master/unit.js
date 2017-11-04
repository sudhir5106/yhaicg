// JavaScript unit
	///////////////////////////////////////////////
	/////////// Add Empty Unit ///////////////////
	/////////////////////////////////////////////
		$(document).ready(function(){		  
	  $('#loading').hide();
	  $("#insertunit").validate({
		 	rules:
				{
		unitname:
				{
				required:true,
				UnitNameExist:true,
				},
				},
		messages:
				{			
				}
	  });
	  
	  ///////////////////////////////////////////////
	/////////// Duplicate Empty Unit /////////////
	/////////////////////////////////////////////
	var isSuccess="";
		$.validator.addMethod('UnitNameExist',function(val,element)
	{
				
				$.ajax({
				url:"unit-curd.php",
				type:"POST",
				data:{type:"validate",unitname:$("#unitname").val(),id:$("#id").val()},
				async:false,
				success:function(data){
					isSuccess=(data==1)?false:true;
				}
			  }); //eof Ajax
			  return isSuccess;
	},'Unit Name Already exists.');
		

	/////////////////////////////////////////
	/////////// Add Unit Master ////////////
	///////////////////////////////////////
	

		$("#submit").click(function(){
			var unitvalid=$("#insertunit").valid();
			if(unitvalid==true)
			{
				
			
			var formdata=new FormData();
			formdata.append('type','addunit');
			formdata.append('unitname',$("#unitname").val());
			formdata.append('aboutunitid',$("#aboutunit").val());
			$("#submit").hide();
				$("#reset").hide();
				$("loading").show();
			var x;
			$.ajax({
				   type:"POST",
				   url:"unit-curd.php",
				   data:formdata,
				   async:false,
				   success:function(data){
					 //  alert(data);
					   x=data;
				   },
				   cache:false,
				   contentType:false,
				   processData:false,
				   
			});// eof ajax
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
				
				$.ajax({
						type:"POST",
						url:"unit-curd.php",
						data:formdata,
						success:function(data){
							
							if(data==1)
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
						},
						cache:false,
						contentType:false,
						processData:false,
					}); //eof Ajax
					
				
			}// eof validation
			
		});
		
		//for hide show
	
		$(document).on("click",".status", function()
		{			
			var id = $(this).attr("id");
			var formdata = new FormData();
			formdata.append('type', "changeStatus");
			formdata.append('id', id);
			
			$.ajax({
			   type: "POST",
			   url: "unit-curd.php",
			   data:formdata,
			   success: function(data){ //alert(data);
				   window.location.replace("unit-list.php");
			   },
			   cache: false,
			   contentType: false,
			   processData: false
			});//eof ajax
		
		});
		
	//////////////////////////////////
	// on click of delete button /////
	//////////////////////////////////	
	$(document).on('click', '.delete', function() {
		
		var didConfirm = confirm("Are you sure you want to delete?");
	    if (didConfirm == true) {
			var id=$(this).attr("id");
			
			$.ajax({
				url:"unit-curd.php",
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
								window.location.replace("unit-list.php");
								}
							}
						});
					}
				}
			});
			location.reload();
	    }
	
	});// delete records
	
	
	
});