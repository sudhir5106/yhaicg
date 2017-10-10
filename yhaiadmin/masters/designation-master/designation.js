// JavaScript Document

$(document).ready(function(){
			$('#loading').hide();
			$("#insertdesignation").validate({
				rules:
					  {
						desi_name:{
									required:true,
									DesignationNameExist:true,			
								  },
					  },
			  messages:{
					   }
			});
			///////////////////////////////////////////////////////////////////////////
			/////////////// Designation Duplicate name exists validation//////////////
			/////////////////////////////////////////////////////////////////////////
	
	$.validator.addMethod('DesignationNameExist',function(val,element)
	{
		var designationname=$("#desi_name").val();
		//var id=$("#id").val();
		//alert(designationname+"+"+id);
		$.ajax({
				url:"designation-curd.php",
				type:"POST",
				data:{type:"validate",designationname:designationname,id:$("#id").val()},
				async:false,
				success:function(data){
					//$("#desi_nameid").val(data);
					isSuccess=(data==1)?false:true;
				}
			  }); //eof Ajax
			  return isSuccess;
	},'Designation Already exists.');
			
			
			////////////////////////////////////////////
			/// Add The Designanation File /////////////
			////////////////////////////////////////////
			
		$("#submit").click(function(){
			var designation=$("#insertdesignation").valid();
			if(designation==true)
			{
				$("#submit").hide();
				$("#reset").hide();
				$('#loading').show();
			var desi_name=$("#desi_name").val();	
			var formdata=new FormData();
			formdata.append('type',"adddesignation");
			formdata.append('desi_name',desi_name);
		//	alert("desi_name"+desi_name);
			
			var x;
			$.ajax({
					url:"designation-curd.php",
					type:"POST",
					data:formdata,
					async:false,
					success:function(data){
						//	alert(data);	
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
							window.location.replace("designation-list.php");
							}
						}
					  });
					
				}
			} // eof if validation
		});
		
			
			
			
	$(document).on('click', '.updateorder', function() {
		
		var didConfirm = confirm("Are you sure you want to update?");
	    if (didConfirm == true) {
			var id=$(this).attr("id");
			
			$.ajax({
				url:"designation-curd.php",
				type: "POST",
				data: {type:"updateorder",id:$(this).attr("id"),desi_order:$("#desi_order"+"-"+id).val()},
				async:false,
				success: function(data){ //alert(data);
				}
			});
			location.reload();
	    }
	});		
			
	////////////////////////////////////////////
			/// validation Update The Designanation File 
			////////////////////////////////////////////
			
			$("#loading").hide();
			$("#updatedesignation").validate({
				rules:
					  {
						desi_name:
						{
						   required:true,
						   DesignationNameExist:true,	
						},
					  },
				messages:{
						 }				
			});	
			
			
	
			////////////////////////////////////////////
			/// Update The Designanation File /////////////
			////////////////////////////////////////////
		
			$("#edit").click(function(){
				var edit=$("#updatedesignation").valid();
				if(edit==true)
				{
					
					
					var formdata=new FormData();
					formdata.append('type',"updatedesignation");					
					formdata.append('desi_name',$("#desi_name").val());
					formdata.append('id',$("#id").val());
					$("#edit").hide();
					$("#reset").hide();
					$("#loading").show();
					
					var x;
					$.ajax({
							url:"designation-curd.php",
							type:"POST",
							data:formdata,
							async:false,
							success:function(data){
							//	alert(data);
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
							window.location.replace("designation-list.php");
							}
						}
					  });
					}
					
				}// validate if
				
			});			
			
		
});