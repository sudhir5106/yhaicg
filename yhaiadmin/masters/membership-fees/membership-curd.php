<?php
include('../../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db=new DBConn();

///*******************************************************
/// To Insert New Unit/////// ////////////////////////////
///*******************************************************

if($_POST['type']=="addFees")
{
	$tblfield=array("Membership_Type","Duration","Fees","CGST","SGST","Total");
	$tblvalues=array($_POST['membershipType'], $_POST['duration'], $_POST['fees'], $_POST['cgst'], $_POST['sgst'], $_POST['total']);
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


?>