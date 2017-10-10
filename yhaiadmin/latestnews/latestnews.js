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
	
    $("#insertlatestnews").validate({
	  rules: 
		{ 
			title: 
			{ 
				required: true,
				//alphanumeric: true
				
			},			
			
			newsdate: 
			{ 
				required: true,	
				
			},
			description: 
			{ 
				required: true,	
				
			},
			sortid: 
			{ 
				number: true,	
				
			},
						
		},
		messages:
		{
		}
	});// eof validation
	
	
	
	///////////////////////////////////
	// Edit Party form validation
	////////////////////////////////////
	$("#editlatestnews").validate({
	  rules: 
		{ 
			title: 
			{ 
				required: true,
				//alphanumeric: true
				
			},			
			
			newsdate: 
			{ 
				required: true,	
				
			},
			description: 
			{ 
				required: true,	
				
			},
			sortid: 
			{ 
				number: true,	
				
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
		
		flag=$("#insertlatestnews").valid();
		
		if (flag==true)
		{	
				
			var formdata = new FormData();
			formdata.append('type', "addlatestnews");
			formdata.append('title', $("#title").val());
			formdata.append('newsdate', $("#newsdate").val());
			formdata.append('description', $("#description").val());
			formdata.append('sortid', $("#sortid").val());
			
			
			$('#submit').hide();
		 $('#reset').hide();//account_no
		  $('#loading').show();	
			var x;
			$.ajax({
			   type: "POST",
			   url: "latestnews-curd.php",
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
							window.location.replace("latestnews-list.php");
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
		
		flag=$("#editlatestnews").valid();
		
		if (flag==true)
		{			
			
			var formdata = new FormData();
			formdata.append('type', "editlatestnews");
			formdata.append('title', $("#title").val());
			formdata.append('newsdate', $("#newsdate").val());
			formdata.append('description', $("#description").val());
			formdata.append('sortid', $("#sortid").val());
			formdata.append('id', $("#id").val());
			
			
			$('#edit').hide();
		 $('#reset').hide();
		  $('#loading').show();
			var x;
			$.ajax({
			   type: "POST",
			   url: "latestnews-curd.php",
			   data:formdata,
			   async: false,
			   success: function(data){//alert(data);
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
							window.location.replace("latestnews-list.php");
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
				url:"latestnews-curd.php",
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
function updateVal()
{
	var ids=document.getElementById('updateIds').value;
	var idArray=ids.split('x');
	var countVar=idArray.length;

	var preVal=document.getElementById('updateValues').value;
	for(var i=1;i<countVar;i++)
	{
		var vals=document.getElementById('sortid'+idArray[i]).value;
		preVal=preVal+'x'+vals;
	}
	document.getElementById('updateValues').value=preVal;
	
	var formdata = new FormData();
	formdata.append('type', "updateorder");
	formdata.append('updateIds', $("#updateIds").val());
	formdata.append('updateValues', $("#updateValues").val());
	var x;
	$.ajax({
				url:"latestnews-curd.php",
				type: "POST",
				data:formdata,
				async:false,
				success: function(data){ //alert(data);
				x=data;
				},
			   cache: false,
			   contentType: false,
			   processData: false
			});
			if(x==1)
			{
				location.reload();
			}else
			{
				alert('please select atlist one');
			}
			
	
}

function setId(x)
{
	if(document.getElementById('checkIds'+x).checked==true)
	{
	document.getElementById('sortid'+x).readOnly =false;
	var ids=document.getElementById('updateIds').value;
	ids=ids+'x'+x;
	document.getElementById('updateIds').value=ids;
	}
	else
	{
		document.getElementById('sortid'+x).readOnly =true;
		var ids=document.getElementById('updateIds').value;
		ids = ids.replace('x'+x,'');
		document.getElementById('updateIds').value=ids;
	}
}