$(document).ready(function()
{  
	$(document).on('change', '#district', function()
	 {		
		var formdata=new FormData();	
		formdata.append('district', $("#district").val());
	   
		$.ajax({
			   type:"POST",
			   url:"tourist_curd.php",
			   data:formdata,
			   async:false,
			   success:function(data){// alert(data);
				   $('#replace_content').html(" ");
				   $('#replace_content').html(data);
			   },
			   cache:false,
			   contentType:false,
			   processData:false,
			   
		});// eof ajax	
	
	})//eof change event	
	
	
	$(".pagination a").click( function(event)
	{		
		event.preventDefault();
		var page=$(this).attr('id');
	
		$("#planresult input[id=page]").val(page);
		var str = $("#planresult").serializeArray();
		
		$.ajax({  
				type: "GET",  
				url: "activity-report.php",  
				data: str,  
				async: false,
				success: function(value) {
					$("#add").html(value);
				}
		});//eof ajax
		
	});
	
	
});//eof ready function