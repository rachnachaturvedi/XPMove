<?php
if(isset($_POST['id']))
{
    include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
    
    $id = $_POST['id'];
    $result=array();
    $query = "Select * From hl_customer Where customer_id='$id'";
    $res1 = mysql_query($query);
    while($row = mysql_fetch_array($res1)){
     $city_id = $row['city_id'];
     $state_id = $row['state_id'];    
       // echo $city_id;
        
        $qry = "Select city_name From hl_city where city_id='$city_id'";
        $re = mysql_query($qry);
        $data = mysql_fetch_array($re);
        $city=$data['city_name'];
       // echo $city;
        
        $qry1 = "Select name From hl_zone where zone_id='$state_id'";
        $re1 = mysql_query($qry1);
        $data1 = mysql_fetch_array($re1);
        $state=$data1['name'];
        //echo $state;
        
        $result[] = array('Customer_id'=> $row['customer_id'],
                          'FName' =>$row['firstname'],
                          'LName' =>$row['lastname'],
                          'Email' =>$row['email'],
                          'Telephone'=>$row['telephone'],
                          'Address'=>$row['address'],
                          'city'=>$city,
                          'state'=>$state,
                          'username'=>$row['username'],
                          'zip'=>$row['pincode']);
        
    }
     $output = array("status" =>'success', "list" =>$result);

}
else{
      $output = array("status" =>'failed');
}
 echo json_encode($output);

  ?>