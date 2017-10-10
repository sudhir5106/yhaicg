<?php
include('../../config.php');
require_once(PATH_LIBRARIES.'/classes/DBConn.php');
$db = new DBConn();

$resetpwd=mysql_query("UPDATE `adminlogin` SET `Password`='".$_POST['password1']."' ");
if($resetpwd)
{
	echo "1";
}
else
{
	echo "0";
}
?>