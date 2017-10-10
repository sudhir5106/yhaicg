<?php 
include('../config.php'); 
require_once(PATH_LIBRARIES.'/classes/DBConn.php');

$db = new DBConn();
$session_id=session_id();

///////////////////////////////////////////////
////// for registration (login)///////////////
/////////////////////////////////////////////
$sql="SELECT User_Name,Password FROM adminlogin WHERE User_Name='".$_POST['user']."' and Password='".$_POST['password']."'";
$res=$db->ExecuteQuery($sql);
if (!empty($res))
{
	if($res[1]['User_Name']== $_POST['user'])
	{
		
		if($res[1]['Password']== $_POST['password'])
		{
			
			$_SESSION['admin']=$res[1]['User_Name'];
		
			echo 1;
		
		}
		else
		{
			
			echo 0;
			}
	}
	else
	{
	echo 0;
		}
	
}
  else
  {
      echo 1;
  }
?>