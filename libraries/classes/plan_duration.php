<?php 

function __autoload($class_name) 
{	
	if(file_exists(PATH_LIBRARIES.'/classes/'.$class_name.'.php'))
    require_once PATH_LIBRARIES.'/classes/'.$class_name.'.php';
}

function transactionid($db)
{
	return $transactionid=$db->random_string('nozero',8);	
}

function rquotes($ssr)
{
	return str_replace("'","''",$ssr);
}

function clean($str) 
{
	if(!get_magic_quotes_gpc()) 
	{
    	$str = addslashes($str);
    }
	$str = strip_tags(htmlspecialchars($str));
	return $str;
}



//==========================================================================================================


function plan_duration($plan)
{
	if($plan==1)
	{
		$duration=1;
		
	}
	if($plan==2)
	{
		$duration=7;
		
	}
	if($plan==3)
	{
		$duration=15;
		
	}
	if($plan==4)
	{
		$duration=30;
		
	}
	
}


//=========================================================================================

?>