<?php 
//include('config.php'); 
//require_once(PATH_LIBRARIES.'/classes/DBConn.php');
//$db = new DBConn();




///*******************************************************
/// To Insert detail/////////////////////////////////
///*******************************************************
if($_POST['type']=="contact")
{	  
   

	$subject="Email vai Contact Us Page Of yhaicgstate.org Website";
     $to="contact@yhaicgstate.org";
	 $from=$_POST['email'];
		if($from==''){
				$from="info@yhaicgstate.org";
			}
	
    $message = "

		<table width='100%' border='1' cellspacing='0' cellpadding='0'>

		  <tr>

			<td>Name:</td>

			<td align='left'><strong>".$_POST['name']."</strong></td>

		  </tr>
		  <tr>

			<td>Email:</td>

			<td align='left'><strong>".$_POST['email']."</strong></td>

		  </tr>
		  <tr>

			<td>Phone:</td>

			<td align='left'><strong>".$_POST['mobile']."</strong></td>

		  </tr>
          

		  <tr>

			<td>Message:</td>

			<td align='left'><strong>".$_POST['message']."</strong></td>

		  </tr>
		</table>";

		$message = wordwrap($message, 70);
				
		$headers = 'MIME-Version: 1.0' . PHP_EOL . 'Content-type: text/html; charset=utf-8' . PHP_EOL . 'from: ' . $from . PHP_EOL . 'reply-To: ' . $from;

       /* $headers  = 'MIME-Version: 1.0' . "\r\n";

		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";		

		$headers .= 'From:'.$from. "\r\n";		
*/
		mail($to, $subject, $message, $headers);

	
		echo 1;

    
}

?>
