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
$path = ROOT."/images/newsevent/";
$path1 = ROOT."/images/newsevent/thumb/";

if($_POST['type']=="addnewsevent")
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
		//***********Permit Date**********//  
		$eventview=date('Y-m-d',strtotime($_POST['eventview']));    
			
	
	    $tblfield=array('News_Heading','News_Date','Images','Description','Event_Last_Date');
		$tblvalues=array(addslashes($_POST['heading']),$_POST['timeline'],$actual_image_name,addslashes($_POST['newsdetail']),$eventview);
		$res=$db->valInsert("news_and_events",$tblfield,$tblvalues);
		
		
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
if($_POST['type']=="editNewsEvent")
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
		$eventview=date('Y-m-d',strtotime($_POST['eventview']));  
		
	
	$tblname="news_and_events";
	    $tblfield=array('News_Heading','News_Date','Images','Description','Event_Last_Date');
		$tblvalues=array(addslashes($_POST['heading']),$_POST['timeline'],$actual_image_name,addslashes($_POST['newsdetail']),$eventview);
	$condition="News_And_Events_Id=".$_POST['id'];
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
	
	 $newseventimg=$db->ExecuteQuery("SELECT Images FROM news_and_events WHERE News_And_Events_Id='".$_POST['id']."' ");
     
	 		
	$tblname="news_and_events";
	$condition="News_And_Events_Id=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
	
	if($newseventimg[1]['Images']!="")
	{
	unlink($path.$newseventimg[1]['Images']);
	unlink($path1.$newseventimg[1]['Images']);
	}
}