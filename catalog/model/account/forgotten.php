<?php
class ModelAccountForgotten extends Model {
public function updatePassword($data) {
    $mobile_no=$data['email'];
    $rnd_password=rand(111111,999999);
     $password_change=md5($rnd_password);
    $customer=$this->db->query("SELECT firstname from " . DB_PREFIX . "customer where username='".$data['email']."'");
    $name=$customer->row['firstname'];
   $this->db->query("UPDATE " . DB_PREFIX . "customer SET password='$password_change' where username='".$data['email']."'");
      $this->db->query("UPDATE " . DB_PREFIX . "original_password SET password='$rnd_password' where username='".$data['email']."'");
    $name = explode(" ", $name);
   $sms="Dear ".$name[0]." your password for Hire Lorry login is ".$rnd_password.".";
            $request =""; //initialise the request variable
            $param['loginid'] = "hirelorry";
            $param['password'] = "QELZtYMY7";
            $param['send_to'] = ($mobile_no);
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
}
}