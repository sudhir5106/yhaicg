<?php
include('../../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db = new DBConn();

///*******************************************************
/// Validate that the data already exist or not
///*******************************************************

if($_POST['type']=="validate")
{
	 $sql="SELECT Designation_Name FROM designation_master WHERE Designation_Name='".$_POST['designationname']."' AND Designation_Id<>'".$_POST['id']."'";
	$res=$db->ExecuteQuery($sql) ;
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
/// To Insert New designation ////////////////////////////
///*******************************************************
if($_POST['type']=="adddesignation")
{	
$desOrder="";
    $sql="SELECT MAX(Designation_Order) AS 'Total' FROM designation_master";
	$add=$db->ExecuteQuery($sql);
	if(count($add)>0)
	{
	$desOrder=$add[1]['Total']+1;
	}else
	{
		$desOrder=1;
	}
	
	
	//echo $sum;
	$tblfield=array("Designation_Name","Designation_Order");
	$tblvalues=array($_POST['desi_name'],$desOrder);
	$res=$db->valInsert("designation_master",$tblfield,$tblvalues);
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
/// To UPdate New designation ////////////////////////////
///*******************************************************


if($_POST['type']=="updatedesignation")
{
	$tblname="designation_master";
	$tblfield=array("Designation_Name");
	$tblvalues=array($_POST['desi_name']);
	$condition="Designation_Id=".$_REQUEST['id'];
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
/// To UPdate  designation order////////////////////////////
///*******************************************************

if($_POST['type']=="updateorder")
{
	$tblname="designation_master";
	$tblfield=array("Designation_Order");
	$tblvalues=array($_POST['desi_order']);
	$condition="Designation_Id=".$_POST['id'];
	$res=$db->updateValue($tblname,$tblfield,$tblvalues,$condition);
	
}

?>