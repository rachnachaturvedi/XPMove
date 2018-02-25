<?php

if(isset($_POST['customer_id']))
{
    include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
    $cust_id = $_POST['customer_id'];
    $user_mobileno = $_POST['mobileno'];
    $pass = $_POST['pass'];

    $password = md5($pass);
    
     $qry ="UPDATE hl_original_password 
            SET password='$pass'
            WHERE username ='$user_mobileno'";
       $re =mysql_query($qry);
    
    
    $query = "UPDATE hl_customer
              SET password='$password'
              WHERE customer_id ='$cust_id'"; 
    //$query = "INSERT INTO placement_apply_details(notice_id,student_userid,apply_date) VALUES ('12','iccs_1','$date')"; 
    $res = mysql_query($query);
  if($res>0)
	{
		$result = 1;
      
	}
	else
	{
		$result = 0;
        
	} 
   
    $output = array('insert' => $result);
  
}
    echo json_encode($output);


?>

