<?php 
include('../../config.php'); 
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
require_once(PATH_LIBRARIES.'/functions/fun1.php');
$db = new DBConn();





if($_POST['type']=="addlatestnews")
{
	
	$date=date('Y-m-d',strtotime($_POST['newsdate']));
	$tablename="latest_news";
    $tblfield1=array('title','description','sortid','dateVar');
	$tblvalues1=array($_POST['title'],addslashes($_POST['description']),$_POST['sortid'],$date);
	$res=$db->valInsert($tablename,$tblfield1,$tblvalues1);
		
		
		if(empty($res))
    	{
 	  		echo "0";
    	}
     	else
		{

	  		echo "1";
		}
}

///*******************************************************
/// Edit Asset
///*******************************************************
if($_POST['type']=="editlatestnews")
{
	$date=date('Y-m-d',strtotime($_POST['newsdate']));
	$tblname1="latest_news";
	$tblfield1=array('title','dateVar','description','sortid');
	$tblvalues1=array($_POST['title'],$date,addslashes($_POST['description']),$_POST['sortid']);
	$condition="uid=".$_POST['id'];
	$res=$db->updateValue($tblname1,$tblfield1,$tblvalues1,$condition);
	
	if(empty($res))
    	{
 	  		echo "0";
    	}
     	else
		{

	  		echo "1";
		}
}


 ///*******************************************************
/// Delete row from Asset table
///*******************************************************
if($_POST['type']=="delete")
{
	
	 
	 
	   $tblname="latest_news";
	$condition="uid=".$_POST['id'];
	$res=$db->deleteRecords($tblname,$condition);
     
	 		
	
}
///*******************************************************
/// Delete row from Asset table
///*******************************************************
if($_POST['type']=="updateorder")
{

$ids=explode("x",$_POST['updateIds']);
$val=explode("x",$_POST['updateValues']);
$limit=count($ids);
if($limit<1)
{
	echo "0";
}
else
{
for($i=1;$i<$limit;$i++)
{
	$db = new DBConn();
	$uid=$ids[$i];
	$tblname1="latest_news";
	$tblfield1=array('sortid');
	$tblvalues1=array($val[$i]);
	$condition="uid=$uid";
	$res=$db->updateValue($tblname1,$tblfield1,$tblvalues1,$condition);
	
}
if(empty($res))
    	{
 	  		echo "2";
    	}
     	else
		{

	  		echo "1";
		}
}

}

?>
