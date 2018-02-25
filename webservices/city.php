<?php

 include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
$query ="Select * From hl_city";

$res = mysql_query($query);
//print_r($res);
 $num = mysql_num_rows($res);
if($num>0){
 while($row = mysql_fetch_array($res)){
        
        $result[] = array('id'=> $row['city_id'],
                          'Name'=> $row['city_name']);
 }
}
   // print_r($result);
      
 $output = array("status" =>'success', "city" =>$result);

 echo json_encode($output);

?>