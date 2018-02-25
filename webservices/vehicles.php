<?php

 include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
$query ="Select * From hl_vehicle_type order by vehicle_type_id";

$res = mysql_query($query);
//print_r($res);

 while($row = mysql_fetch_array($res)){
        
        $result[] = array('id'=>$row['vehicle_type_id'],
                         'vehical_names'=> $row['vehicle_type_name'],
                           'description'=>$row['vehicle_description'],
                         'vehicle_price'=>$row['vehicle_type_price'],
                         'base_km'=>$row['vehicle_base_fair'],
                         'base_fair'=>$row['vehicle_base_km'],
                         'free_wait'=>$row['vehicle_free_wait_time'],
                         'waiting_charges'=>$row['waiting_charge'],
                          'labour_price'=>$row['labour_price'],
                         'extra'=>$row['extra_point'],
                         'night'=>$row['night_holding_charges'],
                         'labour'=>$row['labour_charges'],
                         'toll'=>$row['toll_fees'],
                         'max'=>$row['max_capacity']);
 }
      
   // print_r($result);
      
 $output = array("status" =>'success', "list" =>$result);

 echo json_encode($output);

?>