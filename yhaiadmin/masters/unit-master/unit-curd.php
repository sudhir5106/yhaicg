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
	$tblfield=array("Unit_Name","Description");
	$tblvalues=array($_POST['unitname'], addslashes($_POST['aboutunitid']));
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


?>