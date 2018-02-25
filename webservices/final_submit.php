<?php
if(isset($_POST['customer_id'])){
  include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();  
    
    $id = $_POST['customer_id'];
    $from = $_POST['source'];
    $to = $_POST['destination'];
    $distance = $_POST['distance'];
    $vehicle = $_POST['vehicle'];
    $service = $_POST['service'];
    $delivery_time = $_POST['delivery_time'];
    $mob = $_POST['mobno'];
    $ext_loc=$_POST['ext_loc'];
    //$booktime=$_POST['booktime'];
    $cost = $_POST['cost'];
    $name =$_POST['name'];
   // echo $name;die;
    
    date_default_timezone_set('Asia/Calcutta'); 
    $present_date=date('Y-m-d H:i:s');
   // echo $present_date;
    $qry ="SELECT * FROM hl_vehicle_type WHERE vehicle_type_name='$vehicle'";
    $result=mysql_query($qry) ;
	$data=mysql_fetch_array($result);
    
    $vehicle_id = $data['vehicle_type_id'];
    $vehicle_price =$data['vehicle_type_price'];
    //$labour_price = $data['labour_price'];
    
     $qry2 ="SELECT * FROM hl_service_type WHERE Name='$service'";
    $result2=mysql_query($qry2);
	$data2=mysql_fetch_array($result2);
    
    $service_id = $data2['service_type_id'];
   
    
    $query = "INSERT INTO hl_booking_status(customer_id,form_address,to_address,distance,
    distance_price,vehicle,booking_time,delivering_time,status,service_type,customer_mobile_no,exact_address,customer_name,device)
    VALUES('$id','$from','$to','$distance','$cost',
    '$vehicle_id','$present_date','$delivery_time','1','$service_id','$mob','$ext_loc','$name',2)";
    $res = mysql_query($query);
   // $row = mysql_fetch_array($res) or die(mysql_error());
    
     if($res)
	{
         $output = 1;
         $book_id = mysql_insert_id(); 
         
        
            $cuname = explode(" ", $name);
            $date=date('d-m-Y H:i',strtotime($delivery_time));
        
   $sms="Dear ".$cuname[0].", thanks for booking. Your booking (id #".$book_id.") has been scheduled at ".$date.". Soon Hire Lorry will contact you for other details if required.";
            $request =""; //initialise the request variable
            $param['loginid'] = "hirelorry";
            $param['password'] = "QELZtYMY7";
            $param['send_to'] = ($mob);
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
         
          $sms_new="Dear HireLorry a booking (id ".$book_id.") of ".$cuname[0]." (contact no. ".$mob.") has been assigned to you from Pune at ".$date."";
            $request =""; //initialise the request variable
            $param['loginid'] = "hirelorry";
            $param['password'] = "QELZtYMY7";
            $param['send_to'] = "918698123444";
            $param['method']= "sendMessage";
            $param['msg'] = ($sms_new);
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
         
     }
    else{
         $output = 0;
    }
    $output1 =array("insert"=> $output,"booking_id"=>$book_id); 
    
}

 echo json_encode($output1);


?>