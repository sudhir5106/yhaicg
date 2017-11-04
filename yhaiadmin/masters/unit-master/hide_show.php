<?php
include('../../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db=new DBConn();
if($_POST['type']=='show')
{
	$tblname="unit_master";
	$tblfield=array("status");
	$tblvalues=array('1');
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

if($_POST['type']=='hide')
{
	$tblname="unit_master";
	$tblfield=array("status");
	$tblvalues=array('0');
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