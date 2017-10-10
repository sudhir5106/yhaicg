<?php 
include('../../config.php'); 
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
require_once(PATH_LIBRARIES.'/functions/fun1.php');
$db = new DBConn();


///*******************************************************
/// To Insert New activity /////////////////////////////////
///*******************************************************
$path = ROOT."/images/activity/";
$path1 = ROOT."/images/activity/thumb/";

if($_POST['type']=="addActivity")
{
	if(isset($_FILES['file']['name']))
	    {
			$name = $_FILES['file']['name'];
			//$actual_image_name = time().$name;
			
			$ext = pathinfo($name, PATHINFO_EXTENSION);
			$actual_image_name = time().".".$ext;
			echo $actual_image_name;
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
		
		
	$cactivitydate=date('Y-m-d',strtotime($_POST['cactivitydate'])); 
	
	    $tblfield=array('Unit_Id','Activity_Name','Activity_Detail','Images','Current_Activity_Date');
		$tblvalues=array($_POST['unitid'],addslashes($_POST['heading']),addslashes($_POST['activitydetail']),$actual_image_name,$cactivitydate);
		$res=$db->valInsert("activity",$tblfield,$tblvalues);
		
		$last_Id=mysql_insert_id();
		if(empty($res))
    	{
 	  		echo "@@0@@";
    	}
     	else
		{

	  		echo "@@1@@".$last_Id;
		}
}

///*******************************************************
/// To Insert gallery image for activity /////////////////////////////////
///*******************************************************
$pathmulti = ROOT."/images/galleryimage/";
$pathmulti1 = ROOT."/images/galleryimage/thumb/";

if($_POST['type']=="addgallery")
{
	$pathmulti = ROOT."/images/galleryimage/";
    $pathmulti1 = ROOT."/images/galleryimage/thumb/";
	
	$gallary = $_FILES['file2']['name'];
	
	$i=0;
	
	foreach($gallary as $gallaryval)
	{
		
		$tmp2 = $_FILES['file2']['tmp_name'];
		//print_r($tmp2);
		
		   $gallary_image = time().$gallaryval; // rename the file name
		if(move_uploaded_file($tmp2[$i], $pathmulti.$gallary_image))
					{
						// move the image in the thumb folder
						$resizeObj1 = new resize($pathmulti.$gallary_image);
						$resizeObj1 ->resizeImage(200,200,'auto');
						$resizeObj1 -> saveImage($pathmulti1.$gallary_image, 100);
						
						/// insert images in to gallery table
						
						 $tblfield=array('Activity_Id','Images');
		$tblvalues=array($_POST['activityid'],$gallary_image);
		$res=$db->valInsert("activity_gallery_image",$tblfield,$tblvalues);
						
		    $i++;
	   }
	}//end of foreach
	
	
		echo 1;
	
}

///*******************************************************
/// single image deletion from gallery table
///*******************************************************
if($_POST['type']=="deletegallery")
{
	
 $deleteVal=$_POST['id'];
 
	     //get name of image which we want to delete
		$imagename=$db->ExecuteQuery("SELECT Images FROM activity_gallery_image WHERE Activity_Gallery_Image_Id =".$deleteVal);	
		
		/// delete single image fom gallery table
		
		$tblname="activity_gallery_image";
		$condition="Activity_Gallery_Image_Id =".$deleteVal;
		$res=$db->deleteRecords($tblname,$condition);
		
		
		foreach($imagename as $image)
		{
			if($image['Images']!="")
				{
				unlink($pathmulti.$image['Images']);
				unlink($pathmulti1.$image['Images']);
			    }
		}
		

}


 
///*******************************************************
/// To Insert Video for activity /////////////////////////////////
///*******************************************************
$pathmultivideo = ROOT."/video/";


if($_POST['type']=="addVideo")
{
	
	
	if(isset($_FILES['file']['name']))
	    {
			$name = $_FILES['file']['name'];
			$actual_video_name = $name;
			$tmp = $_FILES['file']['tmp_name'];
			move_uploaded_file($tmp, $pathmultivideo.$actual_video_name);
			/*$resizeObj1 = new resize($path.$actual_image_name);
			$resizeObj1 ->resizeImage(200,200,'auto');
			$resizeObj1 -> saveImage($path1.$actual_image_name, 100);	*/	
		}
		else
		{
			$actual_video_name="";
		}
	
		//print_r($tmp2);
		
		  
		  
		
					//echo "hello";	
						 $tblfield=array('Activity_Id','Activity_Video');
		$tblvalues=array($_POST['activityid'],$actual_video_name);
		$res=$db->valInsert("activity_video",$tblfield,$tblvalues);
						
		
	
		echo 1;
	
}


///*******************************************************
/// single delete deletion from activity_video table
///*******************************************************
if($_POST['type']=="deletevideo")
{
	
 $deleteVal=$_POST['id'];
 
	     //get name of image which we want to delete
		$videoname=$db->ExecuteQuery("SELECT Activity_Video FROM activity_video WHERE Activity_Video_Id =".$deleteVal);	
		
		/// delete single image fom gallery table
		
		$tblname="activity_video";
		$condition="Activity_Video_Id =".$deleteVal;
		$res=$db->deleteRecords($tblname,$condition);
		
		
			if($videoname[1]['Activity_Video']!="")
				{
				unlink($pathmultivideo.$videoname[1]['Activity_Video']);
				
			    }
		
		

}


///*******************************************************
/// To Edit activity /////////////////////////////////
///*******************************************************
$path = ROOT."/images/activity/";
$path1 = ROOT."/images/activity/thumb/";

if($_POST['type']=="editactivity")
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
		
	$cactivitydate=date('Y-m-d',strtotime($_POST['cactivitydate'])); 
		
	$tblname="activity";
	    $tblfield=array('Unit_Id','Activity_Name','Activity_Detail','Images','Current_Activity_Date');
		$tblvalues=array($_POST['unitid'],addslashes($_POST['heading']),addslashes($_POST['activitydetail']),$actual_image_name,$cactivitydate);
		$condition="Activity_Id=".$_POST['id'];
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
/// Delete row from Party table
///*******************************************************
if($_POST['type']=="delete")
{
	
	///////////////Video path///////////////////
	$pathmultivideo = ROOT."/video/";
	
	///////////////////Image Path///////////////////
	
	$pathmulti = ROOT."/images/galleryimage/";
    $pathmulti1 = ROOT."/images/galleryimage/thumb/";
	
	///////////////Get video name ///////////////////
	
	 $videoname=$db->ExecuteQuery("SELECT Activity_Video FROM activity_video WHERE Activity_Id =".$_POST['id']);
	 
	 ///////////////get image name///////////////////
	
	 $imagename=$db->ExecuteQuery("SELECT Images FROM activity_gallery_image WHERE Activity_Id =".$_POST['id']);	
	 
	 
	 $tblname="activity_video";
	$condition="Activity_Id=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
	
	
	$tblname="activity_gallery_image";
	$condition="Activity_Id=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
	 
	 ///////////////delete activity///////////////////	
	 		
	$tblname="activity";
	$condition="Activity_Id=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
	
	
	
	///////////////delete Video ///////////////////
	
	foreach($videoname as $video)
		{
			if($video['Activity_Video']!="")
				{
					
				unlink($pathmultivideo.$video['Activity_Video']);
				
			    }
		}
		
		///////////////delete image///////////////////
		foreach($imagename as $image)
		{
			if($image['Images']!="")
				{
				unlink($pathmulti.$image['Images']);
				unlink($pathmulti1.$image['Images']);
			    }
		}
}
?>