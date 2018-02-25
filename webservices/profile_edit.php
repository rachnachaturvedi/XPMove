<?php

if(isset($_POST['customer_id']))
{
    include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
    $cust_id = $_POST['customer_id'];
    $user_mobileno = $_POST['mobileno'];
    $name = $_POST['Name'];
    $email=$_POST['Email'];
     $add=$_POST['Add'];
    $city=$_POST['city'];
        $state=$_POST['state'];
        $zip=$_POST['zip'];
    $names = explode(" ",$name);
    $firstname = $names[0];
      if(sizeof($names)==1)
     {
 	
        $lastname =" ";
     }
     else{
         	 $lastname = $names[1];
         
     }
      /*$qry = "Select count(*) from hl_customer where telephone='$user_mobileno' OR email='$email'";
    $result=mysql_query($qry) or die(mysql_error());
	$data=mysql_fetch_array($result) or die(mysql_error());
   // print_r($data);
	if($data[0]==1)
	{
         $output = array('insert' => 0);
    }
   else{*/
        
       /* $qry1 = "Select zone_id from hl_zone Where name='$state'";
        $result1=mysql_query($qry1);
	    $data1=mysql_fetch_array($result1);
        $no =mysql_num_rows($result1);
        if($no>0){
        $state_id = $data1['zone_id'];
        }
         $qry2 = "Select city_id from hl_city Where city_name='$city'";
        $result2=mysql_query($qry2);
	    $data2=mysql_fetch_array($result2);
        $no1=mysql_num_rows($result2);
        if($no1>0){
        $city_id = $data2['city_id'];
        }
    
    */
    
    $query = "UPDATE hl_customer SET firstname ='$firstname',lastname ='$lastname',email ='$email',
              telephone='$user_mobileno',address='$add',city_id='$city',state_id='$state',pincode='$zip'
              WHERE customer_id ='$cust_id'"; 
    //$query = "INSERT INTO placement_apply_details(notice_id,student_userid,apply_date) VALUES ('12','iccs_1','$date')"; 
    $res = mysql_query($query);
  if($res)
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

