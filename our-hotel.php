<?php require('config.php');
 include(PATH_INCLUDE.'/header.php');
 require_once(PATH_LIBRARIES.'/classes/DBConn.php');
 $db = new DBConn();
 
 //echo "SELECT City_Id,City_Name FROM hostel HT INNER JOIN cities CY ON CY.City_Id=HT.City_Id ORDER BY CY.City_Name ASC";
 
 $city=$db->ExecuteQuery("SELECT CY.City_Id,CY.City_Name FROM hostel HT INNER JOIN cities CY ON CY.City_Id=HT.City_Id GROUP BY CY.City_Name ORDER BY CY.City_Name ASC");
 ?>
 <script>
	$( document ).ready(function() {
		
	  var x;
			$.ajax({
			   type: "POST",
			   url: "our-hotel-detail.php",
			   async: false,
			   success: function(data){ //alert(data);
				   x=data;
				   $('#add').html(data);
			   }
			   });
			   
			   
$('#cityname').change(function(){
			
			city=$('#cityname').val();
			//alert(city);
			//if($('#cityname').val()!=""){
				
					   var formdata=new FormData();
				
				formdata.append('city_id',$('#cityname').val());
				var x;
				var areadetail;
				var arealist;
				$.ajax({
					
					type:"POST",
					url:"our-hotel-detail.php",
					data:formdata,
					async:false,
					success: function(data)
					{
						
						  x=data;						 
						 $('#add').html(data);
						 
						 
							
					},
					
					cache: false,
				   contentType: false,
				   processData: false
					
					
					});
				
			
			//}
			 
  });			   
			   
	});
</script>
<div class="container">
 <section class="content-header">
    <h1>Our Hostel</h1>
    <ol class="breadcrumb">
      <li>Home</li>
    	<li class="active">Our Hostel</li>
    </ol>
  </section>
  </div>

<main>
      
      <div>
    <div class="container">
     <div class="box-main">
          <div class="row">
         <!-- /////////////left bar containt here-->
          <div class="col-sm-8 col-md-9">
          
             <div class="form-group">
            	<label class="control-label col-sm-3 mandatory" for="cityname"><h4>Filter City Wise Hostel</h4></label>
                <div class="col-sm-4">
                <select name="cityname" id="cityname" class="form-control">
                	<option value="">Select City Name</option>
                    <option value="">All City's</option>
                   	<?php foreach($city as $val){?>
                    <option value="<?php echo $val['City_Id']?>"><?php echo $val['City_Name'];?></option>
                    <?php } ?>
                </select>
                </div>
            </div> 
            <div  id="add"></div>
          
          
        </div>
          
          
          
          
        
     <!--//////////////right bar containt here-->
        <div class="col-sm-4 col-md-3">
        <?php include "sidebar.php";?>
        </div>
     
        </div>
      </div>
        </div>
  </div>
  
    </main>
    <?php include(PATH_INCLUDE.'/footer.php'); ?>