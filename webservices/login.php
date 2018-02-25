<?php

include_once'db_connect.php';

$db = new DB_Connect();
$db->connect();

    $user_mob=$_GET['username'];
	$user_password=$_GET['password'];
    $pass =md5($user_password);

	$query="Select count(*) from hl_customer where username='$user_mob'AND password='$pass'";
	$result=mysql_query($query);
	$data=mysql_fetch_array($result); 
   // print_r($data);
	if($data[0]>0)
	{
        $qry = "Select customer_id from hl_customer where username='$user_mob'";
        $res=mysql_query($qry); 
      	$data1=mysql_fetch_array($res);
      // while($row = mysql_fetch_array($res)){
        $customer_id = $data1['customer_id'];
       // $customer_name =$data1['firstname'];
		//echo "Success";
        echo "Success"." ".$customer_id;
        
		//$_SESSION['username']=$op_userid;
       
   }
   	else
   	echo "Failed"." "."invalid";

?>