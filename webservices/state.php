<?php
include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();  
    
    $qry ="SELECT * FROM hl_zone WHERE country_id=99";
    $result=mysql_query($qry);
    $num = mysql_num_rows($result);
    
    if($num>0){
        while($row =mysql_fetch_array($result)){
        $out[] = array('id'=>$row['zone_id'],
                    'name'=>$row['name']);
        }
    }
$output = array("status" =>'success', "state" =>$out);
 echo json_encode($output);
?>