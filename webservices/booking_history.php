<?php
    if(isset($_POST['customer_id']))
{
    include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
    $cust_id = $_POST['customer_id'];
 //echo $cust_id;
    
    $query="SELECT * FROM hl_booking_status WHERE customer_id='$cust_id'";
    $result=mysql_query($query);
    $num = mysql_num_rows($result); 
      
        if($num>0){
   while($data=mysql_fetch_array($result)){
       $date = $data['booking_time'];
       //print_r($data);
     // echo $date;
       $date1 = explode(" ",$date);
       $booking_date = $date1[0];
      // echo $booking_date;
      
       $vehi_id = $data['vehicle'];
       $qry ="Select vehicle_type_name From hl_vehicle_type Where vehicle_type_id='$vehi_id'";
       $r = mysql_query($qry) ;
       $row = mysql_fetch_array($r);
       
       $vehicle_type = $row['vehicle_type_name'];
     //echo $vehicle_type;
       //$total_cost = $data['distance_price']+$data['total_labour_price'];
     
        $res[]= array("Id"=>$data['booking_status_id'],   
                      "Booking_Time" =>$booking_date,
                      "Total_cost"=>$data['distance_price']);
      // print_r($res);
        
        $output = array("status"=>"success","list"=>$res);
        
    }
            
    }else{
            $output = array("status"=>"failed","list"=>"No Record");
        }
}
     echo json_encode($output);
?>