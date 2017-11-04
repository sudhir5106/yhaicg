// JavaScript Document

$(document).ready(function(){
			$('#loading').hide();
			$("#insert_district").validate({
				rules:
					  {
						destrict_name:{
							required:true,
							DistrictNameExist:true,			
						  },
					  },
			  messages:{
					   }
			});
			
			///////////////////////////////////////////////////////////////////////////
			/////////////// Designation Duplicate name exists validation//////////////
			/////////////////////////////////////////////////////////////////////////	
			$.validator.addMethod('DistrictNameExist',function(val,element)
			{
				var district_name=$("#destrict_name").val();
				//var id=$("#id").val();
				//alert(designationname+"+"+id);
				$.ajax({
						url:"district_curd.php",
						type:"POST",
						data:{type:"validate",district_name:district_name},
						async:false,
						success:function(data){
							//$("#desi_nameid").val(data);
							isSuccess=(data==1)?false:true;
						}
					  }); //eof Ajax
					  return isSuccess;
			},'District Already exists.');
			
			
			///////////////////////////////////////////////////////////////////////////
			/////////////// District Duplicate name exists validation//////////////
			/////////////////////////////////////////////////////////////////////////
			$.validator.addMethod('EditDistrictNameExist',function(val,element)
			{
				var district_name=$("#destrict_name").val();
				var id=$("#id").val();
				
				$.ajax({
						url:"district_curd.php",
						type:"POST",
						data:{type:"EditDistrictNameExist",district_name:district_name, id:id},
						async:false,
						success:function(data){
							//$("#desi_nameid").val(data);
							isSuccess=(data==1)?false:true;
						}
					  }); //eof Ajax
					  return isSuccess;
			},'District Already exist.');
			
			
			////////////////////////////////////////////
			/// Add The Designanation File /////////////
			////////////////////////////////////////////
			
		$("#submit").click(function(){
			var district_name_flag=$("#insert_district").valid();
			if(district_name_flag==true)
			{
				$("#submit").hide();
				$("#reset").hide();
				$('#loading').show();
			var district_name=$("#destrict_name").val();	
			var formdata=new FormData();
			formdata.append('type',"adddistrict");
			formdata.append('district_name',district_name);
		
			
			var x;
			$.ajax({
					url:"district_curd.php",
					type:"POST",
					data:formdata,
					async:false,
					success:function(data){
							
					  x=data;
					},
					cache:false,
					contentType:false,
					processData:false,	
			    }); /// eof Ajax
				if(x==1)
				{
					
					$('#loading').hide();
				$( "#dialog" ).dialog({
						dialogClass: "alert",
						buttons: {
						 'Ok': function() {
							 
							window.location.replace("district_list.php");
							}
						}
					  });
					
				}
			} // eof if validation
		});
		
			
			
		
			
	////////////////////////////////////////////
			/// validation Update The Designanation File 
			////////////////////////////////////////////
			
			$("#loading").hide();
			$("#updatedistrict").validate({
				rules:
					  {
						destrict_name:
						{
						   required:true,
						   EditDistrictNameExist:true,
						},
					  },
				messages:{
						 }				
			});	
			
			
	
			////////////////////////////////////////////
			/// Update The district File /////////////
			////////////////////////////////////////////
		
			$("#edit").click(function(){
				var edit=$("#updatedistrict").valid();
				if(edit==true)
				{
					
					var formdata=new FormData();
					formdata.append('type',"updatedistrict");					
					formdata.append('destrict_name',$("#destrict_name").val());
					formdata.append('id',$("#id").val());
					$("#edit").hide();
					$("#reset").hide();
					$("#loading").show();
					
					var x;
					$.ajax({
							url:"district_curd.php",
							type:"POST",
							data:formdata,
							async:false,
							success:function(data){
								//alert(data);
								x=data;
							},
							cache:false,
							processData:false,
							contentType:false
					}); //eof ajax
					if(x==1)
					{
				$('#loading').hide();
								$( "#dialog" ).dialog({
										dialogClass: "alert",
						buttons: {
						 'Ok': function() {
							window.location.replace("district_list.php");
							}
						}
					  });
					}
					
				}// validate if
				
			});			
		//////////////////////////////////
	// on click of delete button /////
	//////////////////////////////////	
	$(document).on('click', '.delete', function() {
		
		var didConfirm = confirm("Are you sure you want to delete?");
	    if (didConfirm == true) {
			var id=$(this).attr("id");
			
			$.ajax({
				url:"district_curd.php",
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
								window.location.replace("district_list.php");
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