<?php

if(isset($_POST['mob']))
{
    include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
    $user_mobileno = $_POST['mob'];
   // echo $user_mobileno;
  
     date_default_timezone_set('Asia/Calcutta'); 
    $present_date=date('Y-m-d H:i:s'); 
  
    
      $qry = "Select count(*),customer_id,firstname from hl_customer where username='$user_mobileno'";
    $result=mysql_query($qry);
   //$num =mysql_num_rows($result);
    
	$data=mysql_fetch_array($result);
    $id = $data['customer_id'];
    $name =$data['firstname'];
    //print_r($data);
    //echo $id;
    $num= $data[0];
	if($num>0)
	{
        $rnd=rand(111111,999999);
       /*$password = randomPassword();*/
       $password = $rnd;
        
         $qry ="Update hl_original_password Set password='$password' where username='$user_mobileno'";
       $re =mysql_query($qry) ;
       
       $pass = md5($password);
        
        
        $qry1 = "Update hl_customer Set password ='$pass' where customer_id='$id'";
        $result1 =mysql_query($qry1);
       //result1 will retrun true on success & false on error 
        //$data1=mysql_fetch_array($result1) or die(mysql_error());
        //$cust_id = $data1['customer_id'];
       if($result1){
           $result=1;
           //echo $user_mobileno;
           $sms="Dear ".$name.", your password for Hire Lorry login is ".$password.".";
          // echo $sms;
            $request =""; //initialise the request variable
            $param['loginid'] = "hirelorry";
            $param['password'] = "QELZtYMY7";
            $param['send_to'] = ($user_mobileno);
            $param['method']= "sendMessage";
            $param['msg'] = ($sms);
            $param['v'] = "1.1";
            $param['msg_type'] = "TEXT"; //Can be "FLASH./"UNICODE_TEXT"/.BINARY.
            foreach($param as $key=>$val) {
            $request.= $key."=".urlencode($val);
            $request.= "&";
            }
            $request = substr($request, 0, strlen($request)-1);
            $url ="http://Smwebsolution.msg4all.com/GatewayAPI/rest?".$request;
            $ch = curl_init($url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $curl_scraped_page = curl_exec($ch);
            curl_close($ch);
            //echo $curl_scraped_page;
       }
        else{
            $result=0;
        }
        $output = array('update' => $result,'customer_id' =>$id);
    }
    else{
         $output = array('update' =>"No User");
    }
}
  
    echo json_encode($output);
?>

