<?php
include('../../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db=new DBConn();

///*******************************************************
/// validate Insert Duplicate/////// /////////////////////
///*******************************************************
if($_POST['type']=="validate")
{
	$sql="SELECT Unit_Name FROM unit_master WHERE Unit_Name='".$_POST['unitname']."' AND Unit_Id<>'".$_POST['id']."'";
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
/// To Insert New Unit/////// ////////////////////////////
///*******************************************************

if($_POST['type']=="addunit")
{
	$tblfield=array("Unit_Name","Description","status");
	$tblvalues=array($_POST['unitname'], addslashes($_POST['aboutunitid']),'1');
	$res=$db->valInsert("unit_master",$tblfield,$tblvalues);
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
/// To Edit New Unit///////// ////////////////////////////
///*******************************************************
if($_POST['type']=="editunit")
{
	$tblname="unit_master";
	$tblfield=array("Unit_Name","Description");
	$tblvalues=array($_POST['unitname'], addslashes($_POST['aboutunit']));
	$condition="Unit_Id=".$_REQUEST['id'];
	$res=$db->updateValue($tblname,$tblfield,$tblvalues,$condition);
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
/////for hide and show unit  /////////////////////////////
 ///*******************************************************
if($_POST['type']=='changeStatus')
{
	$tblname="unit_master";
	$tblfield="status";
	$condition="Unit_Id";	
	$id=$_POST['id'];
	$id=explode('-',$id);
	
	$res=$db->Status($id[1],$tblname,$tblfield,$condition);
	if(empty($res))
	{
		echo $id[1];
	}
	else
	{
		echo $id[1];
	}
  
}

 ///*******************************************************
/// Delete row from Party table ///////////////////////////
///********************************************************
if($_POST['type']=="delete")
{

	$path = ROOT."/images/activity/";
	$paththumb = ROOT."/images/activity/thumb/";
	
	$assetPath = ROOT."/images/assets/";
	$assetPaththumb = ROOT."/images/assets/thumb/";
	
	$pathgalleryimage = ROOT."/images/galleryimage/";
	$pathgalleryimagethumb = ROOT."/images/galleryimage/thumb/";
	
	$con= mysql_connect(SERVER,DBUSER,DBPASSWORD);
	mysql_query('SET AUTOCOMMIT=0',$con);
	mysql_query('START TRANSACTION',$con);
	
	try{
		
		$tblname="member";
		$condition="Unit_Id=".$_POST['id'];
		$member_del=$db->deleteRecords($tblname,$condition);
		
			
		  if(!$member_del)
		 {
			throw new Exception('#member_del');
		 }

         $activityrecord=$db->ExecuteQuery("SELECT Activity_Id, Images FROM activity WHERE Unit_Id=".$_POST['id']);
	   		
		   //activity loop start
		   foreach($activityrecord  as $recordactivity)
		   {
				 
				 
			  unlink($path.$recordactivity['Images']);
			  unlink($paththumb.$recordactivity['Images']);
				  
			  $activity_galleryrecord=$db->ExecuteQuery("SELECT  Images,Activity_Id FROM activity_gallery_image WHERE Activity_Id=".$recordactivity['Activity_Id']);
		 
		 	  //**********************************************      
			  //loop start activity_gallery_image	////////////
			  //**********************************************
			  foreach($activity_galleryrecord  as $activity_galleryrecord)
			  {
			    			
				unlink($pathgalleryimage.$activity_galleryrecord['Images']);
				unlink($pathgalleryimagethumb.$activity_galleryrecord['Images']);
					 
				$activity_gallery_image_table="activity_gallery_image";
				$Activity_Id="Activity_Id=".$activity_galleryrecord['Activity_Id'];
				$activityGallery_del=$db->deleteRecords($activity_gallery_image_table,$Activity_Id);
				
				if(!$activityGallery_del)
		        {
			    	throw new Exception('#activity_gallery_image');
		        }

					 
			}///loop end activity_gallery_image		
			
			$activity_table="activity";
			$condition_Unit_Id="Unit_Id=".$_POST['id'];
			$activity_del=$db->deleteRecords($activity_table,$condition_Unit_Id);	
			
			if(!$activity_del)
			{
				throw new Exception('#activity_del');
			}				
					
		}//activity loop end	
		
		$getAssetsImg=$db->ExecuteQuery("SELECT Images FROM assets WHERE Unit_Id=".$_POST['id']." AND Images<>''");		
		
		foreach($getAssetsImg as $ImgVal)
		{
			unlink($assetPath.$ImgVal['Images']);
			unlink($assetPaththumb.$ImgVal['Images']);			
		}
		
		$tblname="assets";
		$condition="Unit_Id=".$_POST['id'];
		$assets_del=$db->deleteRecords($tblname,$condition);
			
		if(!$assets_del)
		{
			throw new Exception('#assets_del');
		}
		
		$tbl="unit_master";		
		$condition_id="Unit_Id=".$_POST['id'];
		$unit_master_del=$db->deleteRecords($tbl,$condition_id);
		
		if(!$unit_master_del)
		{
			throw new Exception('#unit_master_del');
		}	
		
		mysql_query("COMMIT",$con);		
		echo 1;
				
	} //try end
	catch(Exception $e)
	{
		echo  $e->getMessage();
		mysql_query('ROLLBACK',$con);
		mysql_query('SET AUTOCOMMIT=1',$con);
		
	}
	
	
	
	
	
}

?>