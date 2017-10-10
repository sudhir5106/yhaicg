<?php 
include('../../config.php'); 
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db = new DBConn();


///*******************************************************
/// To Insert New Member /////////////////////////////////
///*******************************************************
if($_POST['type']=="addMember")
{
	    $membershipdate=date('Y-m-d',strtotime($_POST['membershipdate']));   
	
	    $tblfield=array('Unit_Id','Designation_Id','Membership_Type','Membership_Date','Member_Name','Contact_No','Address','Member_Detail','Member_Type');
		$tblvalues=array($_POST['unitid'],$_POST['designation'],$_POST['membership'],$membershipdate,$_POST['membername'],$_POST['mobile'],addslashes($_POST['address']),addslashes($_POST['memberdetail']),$_POST['membertype']);
		$res=$db->valInsert("member",$tblfield,$tblvalues);
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
if($_POST['type']=="editMember")
{
	$membershipdate=date('Y-m-d',strtotime($_POST['membershipdate']));   
	
	$tblname="member";
	    $tblfield=array('Unit_Id','Designation_Id','Membership_Type','Membership_Date','Member_Name','Contact_No','Address','Member_Detail','Member_Type');
		$tblvalues=array($_POST['unitid'],$_POST['designation'],$_POST['membership'],$membershipdate,$_POST['membername'],$_POST['mobile'],addslashes($_POST['address']),addslashes($_POST['memberdetail']),$_POST['membertype']);
	$condition="Member_Id=".$_POST['id'];
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
	 
	 		
	$tblname="member";
	$condition="Member_Id=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
}

///*******************************************************
/// inactive member
///*******************************************************

if($_POST['type']=="memberhide")
{
	$status=0;
	$tblname="member";
	    $tblfield=array('Member_Status');
		$tblvalues=array($status);
	$condition="Member_Id=".$_POST['memberid'];
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
/// active member
///*******************************************************

if($_POST['type']=="membershow")
{
	$status=1;
	$tblname="member";
	    $tblfield=array('Member_Status');
		$tblvalues=array($status);
	$condition="Member_Id=".$_POST['memberid'];
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