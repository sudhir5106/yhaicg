<?php
include('../../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db=new DBConn();

///*******************************************************
/// To Insert Membership Fees ////////////////////////////
///*******************************************************

if($_POST['type']=="addFees")
{
	$tblfield=array("Membership_Type", "Membership_No_Prefix", "Duration","Fees","CGST","SGST","Total");
	$tblvalues=array($_POST['membershipType'], $_POST['prefix'], $_POST['duration'], $_POST['fees'], $_POST['cgst'], $_POST['sgst'], $_POST['total']);
	$res=$db->valInsert("membership_fees",$tblfield,$tblvalues);
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
/// To Edit Membership Fees / ////////////////////////////
///*******************************************************
if($_POST['type']=="editFees")
{
	$tblname="membership_fees";
	$tblfield=array("Membership_Type", "Membership_No_Prefix", "Duration", "Fees", "CGST", "SGST", "Total");
	$tblvalues=array($_POST['membershipType'], $_POST['duration'], $_POST['fees'], $_POST['cgst'], $_POST['sgst'], $_POST['total']);
	$condition="MID=".$_POST['id'];
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
/// To Edit Membership Fees / ////////////////////////////
///*******************************************************
if($_POST['type']=="delete")
{
	$tblname="membership_fees";
	$condition="MID=".$_POST['mid'];
	$res=$db->deleteRecords($tblname,$condition);
	
	if($res)
	{
		echo 1;
	}
	else
	{
		echo 0;
	}
}

?>