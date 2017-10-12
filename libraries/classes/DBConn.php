<?php
require_once("conn.php");

class DBConn  extends Conn {

   function __construct(){
   $this->ConnToServer();//this will call connToserver method
   $this->ConnToDb();//this method will call connTodb method
  }
function ConnToServer()
    {
	 mysql_connect($this->server, $this->user, $this->pswd) or die("Server Not Found");
      
    }
	//this method will used to connect with database
   function ConnToDb()
    {
	   mysql_select_db($this->database) or die ("Database Not Found");
    }
	
	 function query($sql)
    {
      if(!$this->query = mysql_query($sql)){
	    echo (/*mysql_error()."</br>".*/mysql_errno());
	  }
	  else{
	  
	      return true;
	  }
	  
   
    }
	
	 function fetch()
    {
      if(mysql_fetch_row($this->query)){
        return $this->query;
        }
         else {
         return false;
        }
    }
//Function to insert values in any give table
//first paramenter will be table name
//second parameter will be an array of fields name
//third parameter will be an array of values
   function  valInsert($tblname1,$tblfield1,$tblvalues1)
  {
  
  	 //generate query for insertion
	 $val_part="";
  $sql = "INSERT INTO `$tblname1` ("; 
    $i = 0; 
    while ( $i < count($tblfield1) ) 
    { 
	    //prepare field to be insert
        $sql = $sql . "`" . $tblfield1[$i] . "`"; 
        $val_part = $val_part . "'" . $tblvalues1[$i] . "'"; 
        if ( ($i + 1) != count($tblfield1) ) 
       	 { 
            $val_part = $val_part . ", "; 
            $sql = $sql . ", "; 
         } 
        $i++; 
    } 
 $sql = $sql . ") VALUES (" . $val_part . ")"; 
	 
	//call connection class function setConnection()
	//$sql;// exit();
	 //call  query method of dbconn5 class
//echo $sql;	
	if($this->query($sql) ==1)
	{
	  return true;
	}
	 else
	{
	 return false;
	}
	
  }

//this method will used to update records for given table , fields name
//first paramenter will be table name
//second parameter will be an array of fields name
//third parameter will be an array of values

	function updateValue($tblname1,$tblfield1,$tblvalues1,$condition)
    {
      	 
	 //generate query for insertion
	 $sql = "UPDATE `$tblname1` SET "; 
     $i = 0; 
    while ( $i < count($tblfield1) ) 
    { 
	    //prepare field to be insert
        $sql = $sql . "`" . $tblfield1[$i] . "`= '" . $tblvalues1[$i] . "'"; 
		
        if ( ($i + 1) != count($tblfield1) ) 
       	 { 
           // $val_part = $val_part . ", "; 
            $sql = $sql . ", "; 
         } 
         $i++; 
    } 
	 //here condition clause will add into sql query 
    $sql = $sql . " WHERE " . $condition . ""; 
	//echo $sql;
	 // $this->conn= $this->setConnection();
	 if($this->query($sql))
	 {
		 return true;
	 }
	 else
	 {
		 return false;
	 }
	  
    }
	
	//this method will used If you want to perform some add or minus in records for given table , fields name
	//parameter of methods are
	//tabname1 give table name you want to perform updation
	//tblfield1 give filed name in this parameter
	//tblvalues1 give value you want to Plus or minus from the records
	//operation will be operator like + or -
	//Condition will in which condition you want to plus or minus that values 
	function AppendValue($tblname1,$tblfield1,$tblvalues1,$operation,$condition)
    {
      //generate query for insertion
	 $sql = "UPDATE `$tblname1` SET "; 
    $sql = $sql.$tblfield1."=". $tblfield1 . $operation .$tblvalues1;
	//here condition clause will add into sql query 
    $sql = $sql . " WHERE " . $condition . ""; 
	 //this method will call for database connection	
	
	 // $this->conn= $this->setConnection();
	  //this method will pass query to object

	  $this->query($sql);
	  
    }
	//Delete Records from given Tables
	//first parameter will be table name
	//second parameter will be condition 
	function deleteRecords($tblname,$condition)
    {
       "delete from $tblname where $condition " ==1;
	  //connect to database 
	  if($this->query("delete from $tblname where $condition ") ==1)
	  {
		  return true;
	   }
	   else
	   {
		   return false;
		}
	  //$this->query("delete from $tblname where $condition ");
	  
    }
	
	
	//this method is used to get maximum number for user id from given table
	//first parameter will be table name
	//second parameter will be Field name
		
	function getUserId($tblname,$fieldname)
	{
		//connect to database 
	 
	   //fire query on database
  	   $this->query("select max($fieldname) from $tblname ");
	   return mysql_result($this->fetch(),0)+1;
	}
	

	
	
	//fetch all records from database 
	//first parameter will be table name
	//second parameter will be condition 
	function fatch($table , $condition)
	{
		  //fire query on that database
  	   	  $this->query("select * from $table where $condition ");
	   	  return $this->fetch();
	}
	
	//this method will used to check login for given table & given field
	//first parameter will be table name
	//second parameter will be field name
	//third parameter will value you want to check with second parameter or from field
	//fourth parameter will be second field name like password 
	//fifth parameter will be value of that password field
	function checkLogin($table,$useridfield,$userID,$passfield,$password)
	{
	  //fire query on that database
  	   	  $this->query("select * from $table where  $useridfield='".mysql_real_escape_string($userID)."' and  $passfield='".mysql_real_escape_string($password)."'");
		  // here i m checking query successfully run or not 
		  if($this->fetch()){
		 //for successfull query 
		  return true;
		  } else{
//for unsucessfull query 
		 return false;
			}
	}
	
	//this method will used to fetchall records from given table 
	function fetchAll($table)
	{
		$obj=array();
	    //fire query on that database
		$result=mysql_query("select * from $table");
		//count number of records 
		
	    $num_fields = mysql_num_fields($result); 

		$j=0;
		$x=1;
		//while loop to fetch all records from result set
		while($row=mysql_fetch_array($result)){  
		//for loop to fetch all fields from any rows
 		  for($j=0;$j<$num_fields;$j++){
   			 $name = mysql_field_name($result, $j);
  			 $obj[$x][$name]=$row[$name];
 			}
			$x++;
			}
		

    return $obj;
		
	}
	//pass any insert or delete query to database
	function InsertQuery($userQuery)
	{
	   	//fire query on that database
		$result=mysql_query($userQuery);
		
	}
	//if user want to pass its own query then he can call this method
	// he or she can directly pass query
	 function ExecuteQuery($userQuery)
	{
	    $userQuery;
		//fire query on that database
		//echo $userQuery;// exit();
		$result= mysql_query($userQuery);
			
				//count number of records 
                $num_fields = mysql_num_fields($result); 
				$obj = array();
				$j=0;
				$x=1;
				
				//while loop to fetch all records from result set
				while($row=mysql_fetch_array($result)){  
				//for loop to fetch all fields from any rows
				  for($j=0;$j<$num_fields;$j++){
					 $name = mysql_field_name($result, $j);
					 $obj[$x][$name]=$row[$name];
					}
					$x++;
					}			
		
		
		
     return $obj;
		
	}
 
	
	// ==================================================================
		
		function valid_email ( $str )
	{
		return ( ! preg_match ( "/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", $str ) ) ? FALSE : TRUE;
	}
	
		function normalise($string) {
		$string = str_replace("'", "", $string);
	
		return $string;	
		}
		
		
		
		function couponnumber( $type='capalnum',$num=8,$tbl,$field,$prefix )
	{		
		
		
			
			while ( 1) 
			{
			 
				  $tid = $this->random_string($type, $num );
					$tid=$prefix.$tid;	 
				  $result = mysql_query( "SELECT $field  FROM $tbl 
									where $field  = '" .  $tid  . "'"  );     
			   
					if($result)
					 {
							if(mysql_num_rows($result) > 0 )
							{
							   // do nothing ;	
							}
							else
							{
								// if record not found 
								break;  // transaction id valid 
							}	
						}
						else
						{
							break;
						}
			    }
			
				
			return $tid;
		
	}
		
		function random_string ( $type = 'alnum', $len = 8 )
	{					
		switch ( $type )
		{
			case 'alnum'	:
			case 'numeric'	:
			case 'nozero'	:
			case 'capalnum' :
			
					switch ($type)
					{
						case 'alnum'	:	$pool = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
							break;
						case 'capalnum'	:	$pool = '123456789ABCDEFGHIJKLMNPQRSTUVWXYZ';
							break;
						case 'numeric'	:	$pool = '0123456789';
							break;
						case 'nozero'	:	$pool = '123456789';
							break;
					}
	
					$str = '';
					for ( $i=0; $i < $len; $i++ )
					{
						$str .= substr ( $pool, mt_rand ( 0, strlen ( $pool ) -1 ), 1 );
					}
					return $str;//uniqid ($str)
			break;
			case 'unique' : return md5 ( uniqid ( mt_rand () ) );
			break;
			
			
		}
	}

		
		
			//===============================================================================
	


	function isEmailIdExist($emailId)
	{
		 $result = mysql_query( "SELECT * FROM member WHERE email = '".  $emailId  ."' ");      
		
         if($result)
             {
                if(mysql_num_rows($result) > 0 )
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			else
		return false ;
	}
//=================================================================================


			function checkexistence($uid,$tbl,$fld)
		{	
			
		
			$sql="select $fld from $tbl where $fld='".mysql_real_escape_string($uid)."'";
			$obj2=$this->ExecuteQuery($sql);	
			if(count($obj2)>0)
			{
				 return false;
			}
			else
			{
				return true;
			}
		
			
		}	
//======================================================================	
		function checkcategory($uid,$tbl,$fld1,$fld2,$val2)
      {	
	

	 $sql="select $fld1 from $tbl where $fld1='".mysql_real_escape_string($uid)."' and $fld2='".mysql_real_escape_string($val2)."'";
	$obj2=$this->ExecuteQuery($sql);	
	if(count($obj2)>0)
	{
		 return false;
	}
	else
	{
		return true;
	}

	
}	
//============================================================================
	function checksameid($uid,$tbl,$fld1,$fld2,$val2)
	{	
		
	
		 $sql="select $fld1 from $tbl where $fld1='".mysql_real_escape_string($uid)."' and $fld2!='".mysql_real_escape_string($val2)."'";
		$obj2=$this->ExecuteQuery($sql);	
		if(count($obj2)>0)
		{
			 return false;
		}
		else
		{
			return true;
		}
	
		
	}
	//==========================================================
function createmenu()
{
	$sql="select * from menu_list where Show_menu=1 order by page_order asc";
 				$obj=mysql_query($sql);
				$ultext='<ul class="menuul" >';
				$menuval="";
				$ult='</ul>';
				while($val=mysql_fetch_array($obj))
				{
					$pquery="select * from pages where id=".$val['pageid'];
					$result=mysql_query($pquery);
					$row=mysql_fetch_array($result);
					$menuval.='<li id="sun'.$val['id'].'" ><a <?php if($fslash=="'.$row["filename"].'") { ?> class="active" <?php } ?>  href="'.$row['filename'].'">'.$row['name'].'</a></li>'."\n";	
				}
					
                    $menufile=$ultext."\n".$menuval."\n".$ult."\n";
				 	$file = fopen( "../menu.php","w");
			 	 	fwrite($file, $menufile);
			  	 	fclose($file);	
}
//============================================================================

   function Orderby($tblname,$columnname,$sorttype)
   {
        $sql='select * from '.$tblname.'  ORDER BY BINARY  '.$columnname.' '.$sorttype;
	    return($this->ExecuteQuery($sql));
	  
	}	
//===================================================================================
//@ To get current Academic Year
//@ to Get value use:- $re=$db->getAcademicSession();
//                          echo $re[1]['session'];
//oupput:=2013-2014
      function getAcademicSession()
     {
	    $sql="select session from academic_session where status=1";
		return ($this->ExecuteQuery($sql));
		
     }
//geeting session desktop application


  function getSession()
     {
	    $sql="SELECT SESSION  as 'session' FROM academic_session WHERE STATUS=1";
		return ($this->ExecuteQuery($sql));
		
     }
///////////// get plan type duration of plan master////////////////////
function countplandays($group)
{
	 $sql=("select case when Plan_Type=1  then 1 when Plan_Type=2  then 7 when Plan_Type=3  then 15 else 30 end as 'Plan_Type' from plan_master p inner join group_master cm on cm.Plan_Id=p.Plan_Id where Group_Id=".$group."");
	return ($this->ExecuteQuery($sql));

	
}
///////////// get plan type name of plan master////////////////////
function plantypename($group)
{
	 $sql=("select case when Plan_Type=1  then 'Daily' when Plan_Type=2  then 'Weekly' when Plan_Type=3  then 'Fortnight' else 'Monthly' end as 'Plan_Type' from plan_master p inner join group_master cm on cm.Plan_Id=p.Plan_Id where Group_Id=".$group."");
	return ($this->ExecuteQuery($sql));
	
	
}
}//closing of class user
?>