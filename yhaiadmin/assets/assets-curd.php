<?php 
include('../../config.php'); 
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
require_once(PATH_LIBRARIES.'/functions/fun1.php');
$db = new DBConn();

///*******************************************************
/// Validate that the data already exist or not
///*******************************************************
if($_POST['type']=="validate")
{

	$sql="SELECT Party_Name FROM otherparty_master WHERE Party_Name='".$_POST['party_name']."'  and Party_Id<>'".$_POST['id']."'";
	$res=$db->ExecuteQuery($sql);
		
	if(empty($res))
    {
 		echo 0;
    }
	else
	{
		echo 1;
	}

}

///*******************************************************
/// To Insert New Asset /////////////////////////////////
///*******************************************************
$path = ROOT."/images/assets/";
$path1 = ROOT."/images/assets/thumb/";

if($_POST['type']=="addAsset")
{
	if(isset($_FILES['file']['name']))
	    {
			$name = $_FILES['file']['name'];
			$ext = pathinfo($name, PATHINFO_EXTENSION);
			$actual_image_name = time().".".$ext;
			//$actual_image_name = time().$name;
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
		
		
	
	    $tblfield=array('Unit_Id','Asset_Name','Asset_Detail','Images');
		$tblvalues=array($_POST['unitname'],addslashes($_POST['assets_name']),addslashes($_POST['aboutasset']),$actual_image_name);
		$res=$db->valInsert("assets",$tblfield,$tblvalues);
		
		
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
if($_POST['type']=="editAsset")
{
	
	if(isset($_FILES['file']['name']))
	    {
			$name = $_FILES['file']['name'];
			$ext = pathinfo($name, PATHINFO_EXTENSION);
			$actual_image_name = time().".".$ext;
			//$actual_image_name = time().$name;
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
	
	$tblname="assets";
	    $tblfield=array('Unit_Id','Asset_Name','Asset_Detail','Images');
		$tblvalues=array($_POST['unitname'],addslashes($_POST['assets_name']),addslashes($_POST['aboutasset']),$actual_image_name);
	$condition="Asset_Id=".$_POST['id'];
	$res=$db->updateValue($tblname,$tblfield,$tblvalues,$condition);
	
	if (empty($res))
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
	
	 $assetimg=$db->ExecuteQuery("SELECT Images FROM assets WHERE Asset_Id='".$_POST['id']."' ");
     
	 		
	$tblname="assets";
	$condition="Asset_Id=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
	
	if($assetimg[1]['Images']!="")
	{
	unlink($path.$assetimg[1]['Images']);
	unlink($path1.$assetimg[1]['Images']);
	}
}