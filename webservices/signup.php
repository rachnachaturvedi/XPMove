<?php

if(isset($_POST['mobileno']))
{
    include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
    $user_mobileno = $_POST['mobileno'];
    $name = $_POST['Name'];
    $email=$_POST['Email'];
    $password=$_POST['Password'];
     $add=$_POST['Address'];
     $city=$_POST['City'];
     $state=$_POST['State'];
     $zip=$_POST['Zip'];
     date_default_timezone_set('Asia/Calcutta'); 
    $present_date=date('Y-m-d H:i:s');
    
    $state_id=0;
    $city_id=0;
    $names = explode(" ",$name);
    $firstname = $names[0];
     if(sizeof($names)==1)
     {
 	
        $lastname =" ";
     }
     else{
         	 $lastname = $names[1];
         
     }
    //$qry = "Select count(*) from hl_customer where username='$user_mobileno' OR email='$email'";
    
    $qry = "Select count(*) from hl_customer where username='$user_mobileno'";
    $result=mysql_query($qry);
	$data=mysql_fetch_array($result);
    //print_r($data);
	if($data[0]>0)
	{
         $output = array('insert' =>2);
    }
    else{
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
       // echo $city_id;*/
        
         $qry ="INSERT INTO hl_original_password(username,password) VALUES('$user_mobileno','$password')";
       $re =mysql_query($qry);
       
       $pass = md5($password);
        
    $query = "INSERT INTO hl_customer(firstname,lastname,email,telephone,password,date_added,username,approved,status,address,
    pincode,city_id,state_id) VALUES('$firstname','$lastname','$email','$user_mobileno','$pass','$present_date',
    '$user_mobileno',1,1,'$add','$zip','$city','$state')"; 
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
}
    echo json_encode($output);


?>

