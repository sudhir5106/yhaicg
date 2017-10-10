<?php 
include('../../config.php'); 
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
require_once(PATH_LIBRARIES.'/functions/fun1.php');
$db = new DBConn();


$path = ROOT."/uploadfile/";


if($_POST['type']=="addcirculer")
{
	if(isset($_FILES['file']['name']))
	    {
			$name = $_FILES['file']['name'];
			//$actual_image_name = time();
			$actual_upfile_name = $name;
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
		
		$circulardate=date('Y-m-d',strtotime($_POST['circulardate']));   
	
	    $tblfield=array('Circular_Name','Circular_Detail','Circular_Date');
		$tblvalues=array($_POST['circulername'],addslashes($_POST['aboutcirculer']),$circulardate);
		$res=$db->valInsert("circular",$tblfield,$tblvalues);
		
		$last_Id=mysql_insert_id();
		
		$tblfield=array('Circular_Id','Circular_File_Name');
		$tblvalues=array($last_Id,$actual_upfile_name);
		$res=$db->valInsert("circular_file",$tblfield,$tblvalues);
		
		
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
			$actual_upfile_name =$name;
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
	$circulardate=date('Y-m-d',strtotime($_POST['circulardate'])); 
	
	$tblname="circular";
	    $tblfield=array('Circular_Name','Circular_Detail','Circular_Date');
		$tblvalues=array($_POST['circulername'],addslashes($_POST['aboutcirculer']),$circulardate);
	$condition="Circular_Id=".$_POST['id'];
	$res=$db->updateValue($tblname,$tblfield,$tblvalues,$condition);
	
	$tblname="circular_file";
	$condition="Circular_Id=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
	
	
	$tblfield=array('Circular_Id','Circular_File_Name');
		$tblvalues=array($_POST['id'],$actual_upfile_name);
		$res=$db->valInsert("circular_file",$tblfield,$tblvalues);
	
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
	
	 $circularfile=$db->ExecuteQuery("SELECT Circular_File_Name FROM circular_file WHERE Circular_Id='".$_POST['id']."' ");
	 
	   $tblname="circular_file";
	$condition="Circular_Id=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
     
	 		
	$tblname="circular";
	$condition="Circular_Id=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
	
	
	
	if($circularfile[1]['Circular_File_Name']!="")
	{
	unlink($path.$circularfile[1]['Circular_File_Name']);
	
	}
}

?>
