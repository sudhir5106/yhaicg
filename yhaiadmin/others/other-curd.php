<?php 
include('../../config.php'); 
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
require_once(PATH_LIBRARIES.'/functions/fun1.php');
$db = new DBConn();


$path = ROOT."/uploadotherfile/";


if($_POST['type']=="addcirculer")
{
	if(isset($_FILES['file']['name']))
	    {
			$name = $_FILES['file']['name'];
			//$actual_image_name = time();
			$actual_upfile_name = time().$name;
			$tmp = $_FILES['file']['tmp_name'];
			move_uploaded_file($tmp, $path.$actual_upfile_name);
			/*$resizeObj1 = new resize($path.$actual_image_name);
			$resizeObj1 ->resizeImage(200,200,'auto');
			$resizeObj1 -> saveImage($path1.$actual_image_name, 100);	*/	
		}
		else
		{
			$actual_upfile_name="";
		}
		
		
	
	    $tblfield=array('Other_Name','Other_Detail','Other_Type_Id','Other_Files');
		$tblvalues=array($_POST['circulername'],addslashes($_POST['aboutcirculer']),$_POST['otherType'],$actual_upfile_name);
		$res=$db->valInsert("other_detail",$tblfield,$tblvalues);
		
			
		
		if(empty($res))
    	{
 	  		echo "@@0";
    	}
     	else
		{

	  		echo "@@1";
		}
}

///*******************************************************
/// Edit Asset
///*******************************************************
if($_POST['type']=="editcircular")
{
	
	if(isset($_FILES['file']['name']))
	    {
			$name = $_FILES['file']['name'];
			$actual_upfile_name =time().$name;
			$tmp = $_FILES['file']['tmp_name'];
			move_uploaded_file($tmp, $path.$actual_upfile_name);
			/*$resizeObj1 = new resize($path.$actual_image_name);
			$resizeObj1 ->resizeImage(200,200,'auto');
			$resizeObj1 -> saveImage($path1.$actual_image_name, 100);*/
			if($_POST['path']!="")
			{
			unlink($path.$_POST['path']);
			
			
			}
		
			
		}
		else
		{
			$actual_upfile_name=$_POST['path'];
		}
	
	$tblname="other_detail";
	    $tblfield=array('Other_Name','Other_Detail','Other_Type_Id','Other_Files');
		$tblvalues=array($_POST['circulername'],addslashes($_POST['aboutcirculer']),$_POST['otherType'],$actual_upfile_name);
	$condition="Other_Id=".$_POST['id'];
	$res=$db->updateValue($tblname,$tblfield,$tblvalues,$condition);
	
	
	
	if(empty($res))
    	{
 	  		echo "@@0";
    	}
     	else
		{

	  		echo "@@1";
		}
}


 ///*******************************************************
/// Delete row from Asset table
///*******************************************************
if($_POST['type']=="delete")
{
	
	 $circularfile=$db->ExecuteQuery("SELECT Other_Files FROM other_detail WHERE Other_Id='".$_POST['id']."' ");
	 
	  
	$tblname="other_detail";
	$condition="Other_Id=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
	
	
	
	if($circularfile[1]['Other_Files']!="")
	{
	unlink($path.$circularfile[1]['Other_Files']);
	
	}
}

?>
