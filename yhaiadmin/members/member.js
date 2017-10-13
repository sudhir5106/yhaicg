// JavaScript Document
$(document).ready(function(){
	 $('#loading').hide();
	//////////////////////////////////
	// Add Sector form validation
	////////////////////////////////////
	
    $("#insertMember").validate({
	  rules: 
		{ 
			unitname: 
			{ 
				required: true,				
			},
			designation: 
			{ 
				required: true,				
			},
			mobile:
			{
				number:true,
				minlength:10,	
				maxlength:10,
				required: true,
			},
			membership: 
			{ 
				required: true,				
			},			
			membername: 
			{ 
				required:true,				
			},
			memberdetail:
			{
				email:true,
			},
			membertype: 
			{ 
				required: true,
			},
			membershipNo:
			{
				required: true,
			}
		},
		messages:
		{
		}
	});// eof validation
	
	
	///////////////////////////////////
	// Edit Party form validation
	////////////////////////////////////
	$("#editMember").validate({
	  rules: 
		{ 
			unitname: 
			{ 
				required: true,
				
			},
			designation: 
			{ 
				required: true,	
				
			},
			mobile:
			{
				number:true,
				minlength:10,	
				maxlength:10,
				required: true,
			},
			membership: 
			{ 
				required: true,	
				
			},
			
			membername: 
			{ 
				required: true,	
				
			}	,
			memberdetail:
			{
			email:true,
			},	
			membertype: 
			{ 
				required: true,	
				
			},
			membershipNo:
			{
				required: true,
			}
		},
		messages:
		{
			
		}
	});// eof validation
	
		
	
	//////////////////////////////////
	// on click of submit button
	//////////////////////////////////
	$('#submit').click(function(){
		
		flag=$("#insertMember").valid();
		
		if (flag==true)
		{	
			$('#submit').hide();
		 $('#reset').hide();//account_no
		  $('#loading').show();		
			var formdata = new FormData();
			formdata.append('type', "addMember");
			formdata.append('unitid', $("#unitname").val());
			formdata.append('designation', $("#designation").val());
			formdata.append('membership', $("#membership").val());
			formdata.append('membershipdate', $("#membershipdate").val());
			formdata.append('membername', $("#membername").val());
			formdata.append('mobile', $("#mobile").val());
			formdata.append('address', $("#address").val());
			formdata.append('memberdetail', $("#memberdetail").val());
			formdata.append('membertype', $("#membertype").val());
			formdata.append('membershipNo', $("#membershipNo").val());
			
			var x;
			$.ajax({
			   type: "POST",
			   url: "member-curd.php",
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
							window.location.replace("member-list.php");
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
		
		flag=$("#editMember").valid();
		
		if (flag==true)
		{			
		    $('#edit').hide();
		    $('#reset').hide();
		    $('#loading').show();
		
			var formdata = new FormData();
			formdata.append('type', "editMember");
			formdata.append('unitid', $("#unitname").val());
			formdata.append('designation', $("#designation").val());
			formdata.append('membership', $("#membership").val());
			formdata.append('membershipdate', $("#membershipdate").val());
			formdata.append('membername', $("#membername").val());
			formdata.append('mobile', $("#mobile").val());
			formdata.append('address', $("#address").val());
			formdata.append('memberdetail', $("#memberdetail").val());			
			formdata.append('id', $("#id").val());
			formdata.append('membertype', $("#membertype").val());
			formdata.append('membershipNo', $("#membershipNo").val());
			var x;
			$.ajax({
			   type: "POST",
			   url: "member-curd.php",
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
							window.location.replace("member-list.php");
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
				url:"member-curd.php",
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
		//// search Member///////
		///////////////////////////////
		
	$('#search1').click(function(){
		
		var formdata = new FormData();
		formdata.append('type', "searchid");
		formdata.append('search_unitname', $("#search_unitname").val());
		formdata.append('search_membertype', $("#search_membertype").val());
		
			var x;
			$.ajax({
			   type: "POST",
			   url: "member-report.php",
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
				window.location.replace("member-list.php");
			}
			
		
		
	});
	
	///////////////////////////////
		//// Inactive Member///////
		///////////////////////////////
		
	$(document).on('click','.memberhide',function(){
		//alert(123);
		
		var formdata = new FormData();
		formdata.append('type', "memberhide");
		formdata.append('memberid', $(this).attr("id"));
		
		
			var x;
			$.ajax({
			   type: "POST",
			   url: "member-curd.php",
			   data: formdata,
			   async: false,
			   success: function(data){ 
				   x=data;
				  
			   },
			   cache: false,
			   contentType: false,
			   processData: false,
			});//eof ajax
		
			if(x==1)
			{
				window.location.replace("member-list.php");
			}
			
		
		
	});
	
	///////////////////////////////
		//// Active Member///////
		///////////////////////////////
		
	$(document).on('click','.membershow',function(){
		
		var formdata = new FormData();
		formdata.append('type', "membershow");
		formdata.append('memberid', $(this).attr("id"));
		
		
			var x;
			$.ajax({
			   type: "POST",
			   url: "member-curd.php",
			   data: formdata,
			   async: false,
			   success: function(data){ 
				   x=data;
				  
			   },
			   cache: false,
			   contentType: false,
			   processData: false,
			});//eof ajax
		
			if(x==1)
			{
				window.location.replace("member-list.php");
			}
			
		
		
	});
	
	
});
