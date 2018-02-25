<?php


if(isset($_POST['mobileno']))
{
    include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
    $user_mobileno = $_POST['mobileno'];
    $name = $_POST['Name'];
   // $email=$_POST['Email'];
     date_default_timezone_set('Asia/Calcutta'); 
    $present_date=date('Y-m-d H:i:s'); 
    $names = explode(" ",$name);
    $output=array();
    $firstname = $names[0];
      if(sizeof($names)==1)
     {
 	
        $lastname =" ";
     }
     else{
         	 $lastname = $names[1];
         
     }
    
   // echo randomPassword();
    
      $qry = "Select count(*),customer_id from hl_customer where username='$user_mobileno'";
    $result=mysql_query($qry);
   //  $num =mysql_num_rows($result);
    
	$data=mysql_fetch_array($result);
    $id = $data['customer_id'];
    //print_r($data);
    //echo $id;
    $num= $data[0];
	if($num>0)
	{
        /*$qry1 = "Update hl_customer Set firstname ='$firstname',lastname='$lastname' where username='$user_mobileno'";
        $result1 =mysql_query($qry1) or die(mysql_error());*/
        //$num1 =mysql_num_rows($result1);
        //$data1=mysql_fetch_array($result1) or die(mysql_error());
        //$cust_id = $data1['customer_id'];
       // $output = array('custid' => $cust_id);
       // if($result1>0){
           $update =2;
            
       $output = array('insert' =>$update,'customer_id'=>$id);
        //}
        
    }
   else{
       $rnd=rand(111111,999999);
       /*$password = randomPassword();*/
       $password = $rnd;
       
      /* $to = "anuja.tayade37@gmail.com.com";
       $subject = "My subject";
       $txt = "Dear Customer,
               Your HireLorry password is $password";
       $headers = "From:rubi786chaudhary@gmail.com" . "\r\n" .
       "CC: somebodyelse@example.com";

       mail($to,$subject,$txt,$headers);*/
       
        
        /* $to = "anuja.tayade37@gmail.com";
         $subject = "Hirelorry";
         
         $message = "<b>Dear Customer,
               Your HireLorry password is $password</b>";
         $message .= "<h1>This is headline.</h1>";
         
         $header = "From:rubi786chaudhary@gmail.com \r\n";
         $header = "Cc:anuja.tayade@getwebcare.in \r\n";
         $header .= "MIME-Version: 1.0\r\n";
         $header .= "Content-type: text/html\r\n";
         
         $retval = mail ($to,$subject,$message,$header);
         
         if( $retval == true )
         {
            echo "Message sent successfully...";
         }
         else
         {
            echo "Message could not be sent...";
         }
    
       */
       
       $qry ="INSERT INTO hl_original_password(username,password) VALUES('$user_mobileno','$password')";
       $re =mysql_query($qry);
       
       $pass = md5($password);
       
    $query = "INSERT INTO hl_customer(firstname,lastname,telephone,password,date_added,username,approved,status) VALUES         ('$firstname','$lastname','$user_mobileno','$pass','$present_date','$user_mobileno',1,1)"; 
    //$query = "INSERT INTO placement_apply_details(notice_id,student_userid,apply_date) VALUES ('12','iccs_1','$date')"; 
    $res = mysql_query($query);
      // echo $res;
       //$no = mysql_num_rows($res);
  if($res>0)
	{
		//$result ="success";
        $result = 1;
        $customer_id =mysql_insert_id();
      //echo $customer_id;
      // print_r(mysql_insert_id());
	}
	else
	{
		//$result = "failed";
        $result = 0;
        $customer_id =" ";
	} 
   
    $output = array('insert' => $result,'customer_id' => $customer_id);
   }
}

function randomPassword() {
    $alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789";
    $pass = array(); //remember to declare $pass as an array
    $alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
    for ($i = 0; $i < 8; $i++) {
        $n = rand(0, $alphaLength);
        $pass[] = $alphabet[$n];
    }
    return implode($pass); //turn the array into a string
}


    echo json_encode($output);


?>

