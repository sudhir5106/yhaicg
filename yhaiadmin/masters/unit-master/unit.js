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