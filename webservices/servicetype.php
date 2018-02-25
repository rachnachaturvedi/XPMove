<?php

 include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
$query ="Select Name From hl_service_type";

$res = mysql_query($query);
//print_r($res);

 while($row = mysql_fetch_array($res)){
        
        $result[] = array('service_names'=> $row['Name']);
 }
      
   // print_r($result);
      
 $output = array("status" =>'success', "list" =>$result);

 echo json_encode($output);

?>