<?php 
include('../../config.php'); 
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
require_once(PATH_LIBRARIES.'/functions/fun1.php');
$db = new DBConn();


///*******************************************************
/// To Insert New discount ///////////////////////////////
///*******************************************************
$path = ROOT."/images/discount/";
$path1 = ROOT."/images/discount/thumb/";

if($_POST['type']=="addDiscount")
{
	if(isset($_FILES['file']['name']))
	    {
			$name = $_FILES['file']['name'];
			//$actual_image_name = time().$name;
			
			$ext = pathinfo($name, PATHINFO_EXTENSION);
			$actual_image_name = time().".".$ext;
			
			$tmp = $_FILES['file']['tmp_name'];
			move_uploaded_file($tmp, $path.$actual_image_name);
			$resizeObj1 = new resize($path.$actual_image_name);
			$resizeObj1 ->resizeImage(200,200,'auto');
			$resizeObj1 -> saveImage($path1.$actual_image_name, 100);		
		}
		else
		{
			$actual_image_name="";
		}		
	
	    $tblfield=array('Coupon_Code','Offer','Details','Images');
		$tblvalues=array($_POST['couponCode'],addslashes($_POST['offer']),addslashes($_POST['discountInfo']),$actual_image_name);
		$res=$db->valInsert("discount",$tblfield,$tblvalues);		
		
		if(empty($res))
    	{
 	  		echo "0";
    	}
     	else
		{
	  		echo "1";
		}

}//eof if condition


///*******************************************************
/// To Edit Discount /////////////////////////////////
///*******************************************************
$path = ROOT."/images/discount/";
$path1 = ROOT."/images/discount/thumb/";

if($_POST['type']=="editDiscount")
{
	if(isset($_FILES['file']['name']))
	    {
			$name = $_FILES['file']['name'];
			$ext = pathinfo($name, PATHINFO_EXTENSION);
			$actual_image_name = time().".".$ext;
			$tmp = $_FILES['file']['tmp_name'];

			move_uploaded_file($tmp, $path.$actual_image_name);

			$resizeObj1 = new resize($path.$actual_image_name);
			$resizeObj1 ->resizeImage(200,200,'auto');
			$resizeObj1 -> saveImage($path1.$actual_image_name, 100);
			
			if($_POST['path']!="")
			{
				unlink($path.$_POST['path']);
				unlink($path1.$_POST['path']);			
			}
			
		}
		else
		{
			$actual_image_name=$_POST['path'];
		}
		
		
	$tblname="discount";
    $tblfield=array('Coupon_Code','Offer','Details','Images');
	$tblvalues=array($_POST['couponCode'],addslashes($_POST['offer']),addslashes($_POST['discountInfo']),$actual_image_name);
	$condition="Discount_Id=".$_POST['id'];

	$res=$db->updateValue($tblname,$tblfield,$tblvalues,$condition);
		
		if(empty($res))
    	{
 	  		echo "0";
    	}
     	else
		{
	  		echo "1";
		}
}


 ///*******************************************************
/// Delete row from Party table
///*******************************************************
if($_POST['type']=="delete")
{
	
	///////////////////Image Path///////////////////	
	$path = ROOT."/images/discount/";
	$path1 = ROOT."/images/discount/thumb/";
	
	///////////////get image name///////////////////	
	$imagename=$db->ExecuteQuery("SELECT Images FROM discount WHERE Discount_Id =".$_POST['id']);	 
	 
	///////////////delete activity///////////////////	 		
	$tblname="discount";
	$condition="Discount_Id=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
	
	///////////////delete image///////////////////
	if($imagename[1]['Images']!="")
	{
		unlink($path.$imagename[1]['Images']);
		unlink($path1.$imagename[1]['Images']);
    }

    if(empty($res)){
    	
    	echo 0;
    }
    else{
    	echo 1;
    }
}
?>