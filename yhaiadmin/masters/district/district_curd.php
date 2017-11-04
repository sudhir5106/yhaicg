<?php
include('../../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db = new DBConn();

///*******************************************************
/// Validate that the data already exist or not
///*******************************************************
if($_POST['type']=="validate")
{    $district_name=trim($_POST['district_name']);
	 $sql="SELECT District_name FROM district_master WHERE District_name='".$district_name."'";
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
/// Validate that the data already exist or not
///*******************************************************
if($_POST['type']=="EditDistrictNameExist")
{    $district_name=trim($_POST['district_name']);
	 $sql="SELECT District_name FROM district_master WHERE District_name='".$district_name."' AND District_Id<>".$_POST['id'];
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
if($_POST['type']=="adddistrict")
{	$district_name=trim($_POST['district_name']);
    $tblfield=array("District_name");
	$tblvalues=array($district_name);
	$res=$db->valInsert("district_master",$tblfield,$tblvalues);
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


if($_POST['type']=="updatedistrict")
{  
    $id=$_REQUEST['id'];
	$tblname="district_master";
	$tblfield=array("District_name");
	$tblvalues=array($_POST['destrict_name']);
	$condition="District_id=".$id;
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
if($_POST['type']=="delete")
{
	try{
	$tblename="district_master";
    $id=$_REQUEST['id'];
	$condition="District_id=".$id;
	$res=$db->deleteRecords($tblename,$condition);	
	
			if(!$res)
			{
				throw new Exception('#error');
			}
			else{ echo "1";}
			
			
	}
	catch(Exception $e)
	{
		echo  $e->getMessage();
		mysql_query('ROLLBACK',$con);
		mysql_query('SET AUTOCOMMIT=1',$con);
		
	}
					
		}

?>