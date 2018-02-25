<?php
    if(isset($_POST['booking_status_id']))
{
    include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
    $book_id = $_POST['booking_status_id'];
// echo $cust_id;
    
    $query="SELECT * FROM hl_booking_status WHERE booking_status_id='$book_id'";
    $result=mysql_query($query);
    $num = mysql_num_rows($result);
        if($num>0){
   while($data=mysql_fetch_array($result)){
      /* $date = $data['booking_time'];
      // echo $date;
       $date1 = explode(" ",$date);
       $booking_date = $date1[0];*/
      // echo $booking_date;
      
       $vehi_id = $data['vehicle'];
       $qry ="Select vehicle_type_name From hl_vehicle_type Where vehicle_type_id='$vehi_id'";
       $r = mysql_query($qry) ;
       $row = mysql_fetch_array($r);
       
       $vehicle_type = $row['vehicle_type_name'];
       
       $serv_id = $data['service_type'];
       $qry1 ="Select Name From hl_service_type Where service_type_id='$serv_id'";
       $r1 = mysql_query($qry1);
       $row1 = mysql_fetch_array($r1);
       
       $service_type = $row1['Name'];
       
        $status_id = $data['status'];
       $qry2 ="Select name From hl_order_status Where order_status_id='$status_id'";
       $r2 = mysql_query($qry2);
       $row2 = mysql_fetch_array($r2);
       
       $status = $row2['name'];
     //  echo $vehicle_type;
       //$total_cost = $data['distance_price']+$data['total_labour_price'];
     
        $res[]= array("Id"=>$data['booking_status_id'],
                      "from"=> $data['form_address'],
                      "To" => $data['to_address'],
                      "Booking_Time" => $data['booking_time'],
                      "Distance"=>$data['distance'],
                      "Dist_price"=>$data['distance_price'],
                      "service_type"=>$service_type,
                      "vehicle" =>$vehicle_type,
                      "Delivery_Time" =>$data['delivering_time'],
                      "Exact_loc"=>$data['exact_address'],
                      "Mob"=>$data['customer_mobile_no'],
                      "Status"=>$status);
        
        $output = array("status"=>"success","list"=>$res);
        
    }
 }
}
     echo json_encode($output);
?>