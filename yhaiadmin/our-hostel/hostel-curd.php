<?php 
include('../../config.php'); 
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db = new DBConn();


///*******************************************************
/// To Insert New Member /////////////////////////////////
///*******************************************************
if($_POST['type']=="addHostel")
{
	   
	
	    $tblfield=array('City_Id','Hostel_Name','Address','Nearby','Contact_Num','Email_Id');
		$tblvalues=array($_POST['cityname'],$_POST['hostelname'],addslashes($_POST['address']),addslashes($_POST['nearby']),$_POST['mobile'],$_POST['email']);
		$res=$db->valInsert("hostel",$tblfield,$tblvalues);
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
/// Edit Party
///*******************************************************
if($_POST['type']=="editHostel")
{
	
	
	$tblname="hostel";
	    $tblfield=array('City_Id','Hostel_Name','Address','Nearby','Contact_Num','Email_Id');
		$tblvalues=array($_POST['cityname'],$_POST['hostelname'],addslashes($_POST['address']),addslashes($_POST['nearby']),$_POST['mobile'],$_POST['email']);
	$condition="Hostel_Id=".$_POST['id'];
	$res=$db->updateValue($tblname,$tblfield,$tblvalues,$condition);
	
	if (empty($res))
	{
		echo 0;
	}
	else
	{
		echo 1;
	}
}


 ///*******************************************************
/// Delete row from Party table
///*******************************************************
if($_POST['type']=="delete")
{
	 
	 		
	$tblname="hostel";
	$condition="Hostel_Id=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
}

?>