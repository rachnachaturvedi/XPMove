<?php
if(isset($_POST['distance']))
{
    include_once 'db_connect.php';
    $db = new DB_Connect();
    $db->connect();
    $distance = round($_POST['distance']);
    $vehi_type = $_POST['vehicle_type'];
    //$no_lab = $_POST['no_of_lab'];
    
    $query ="Select vehicle_type_price,vehicle_base_km,vehicle_base_fair From hl_vehicle_type Where vehicle_type_name ='$vehi_type'";
    $res = mysql_query($query);
    $num = mysql_num_rows($res);
    //echo $num."<br>";
    if($num>0){
    $data=mysql_fetch_array($res);
  
    $vehi_price =$data['vehicle_type_price'];
    $base_km = $data['vehicle_base_fair'];
    $base_fair =  $data['vehicle_base_km'];
        
    /*Formula applied to find the cost as per the distance */
        
    if($distance>=$base_km){
    $dist = $distance-$base_km;
       // echo $dist;
    if($distance>10){
            $dprice = ($dist * $vehi_price)+(($dist * $vehi_price)/2)+$base_fair;
    }
    else{
            $dprice = ($dist * $vehi_price)+$base_fair;
    }

    }
    else{
        $dprice =$base_fair;
        $total = round($dprice);
        //echo $total;
        
    }
    $total = round($dprice);   
        
    $output = array("price" =>$total);
    }
}
echo json_encode($output);

?>