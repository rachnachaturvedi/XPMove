<?php
if(isset($_POST['mobileno']))
{
    include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
    
    $mobile = $_POST['mobileno'];
    
    $query = "Select * From hl_customer Where telephone='$mobile'";
    $res = mysql_query($query);
    while($row = mysql_fetch_array($res)){
        
        $result[] = array('FName' =>$row['firstname'],
                          'LName' =>$row['lastname'],
                          'Email' =>$row['email']);
        
    }
     $output = array("status" =>'success', "list" =>$result);

}
 echo json_encode($output);
}
  ?>