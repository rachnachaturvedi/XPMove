<?php
class ModelAccountCustomer extends Model {
	public function addCustomer($data) {
      
        $password_change=md5($data['password']);
         $mobile_no=$data['mobile_no'];

        $this->db->query("INSERT INTO " . DB_PREFIX . "customer SET telephone = '" . $data['mobile_no'] . "', firstname = '" . $this->db->escape($data['firstname']) . "', email = '" . $this->db->escape($data['email']) . "', username = '" . $data['mobile_no'] . "',password = '" . $password_change . "',city_id= '" . $data['city'] ."', state_id= '" . $data['state'] ."',pincode= '" .$data['zip'] ."',address= '" .$data['address'] ."',status = '1',approved = '1',date_added = NOW()");  
                // $customer_id = $this->db->getLastId();
                $this->db->query("INSERT INTO " . DB_PREFIX . "original_password(username,password) VALUES ('$mobile_no','".$data['password']."')");
        $password=$data['password'];
        $to=$data['email'];
        $name=$data['firstname'];
        $subject="HireLorry Online Registration Form";
        $message="Dear $name,<br><br>Welcome and thank you for registering at HireLorry!<br><br>Your account has now been created and you can log in by using your email address and password by visiting our website or at the following URL: <br><br>Your Login Credential<br><br>Username :<b>$mobile_no</b><br><br>Password :<b>$password</b><br><br>Thanks and Regards,<br><b>Team HireLorry</b>";
        if($to!='')
        {
        $this->sendMail($to,$subject,urlencode($message),$name);
        }
        
    }
     public function sendMail($to,$subject,$message,$name){
         require_once("catalog/view/javascript/PHPMailer/class.phpmailer.php");
 require_once("catalog/view/javascript/PHPMailer/class.smtp.php");
        $mail = new PHPMailer(true);
         // the true param throws exceptions that we need to catch
    $mail->IsSMTP();             // telling the class to use SMTP
      try {
        // Enables SMTP debug information (for testing)
        //    1 = errors and messages
        //    2 = messages only
        $mail->SMTPDebug = 0;                    

        // Enable SMTP authentication
        $mail->SMTPAuth = true;
 
        // SMTP server
        $mail->Host = "mail.hirelorry.in";   

        // set the SMTP port for the outMail server        
        //    use either 25 or 587
        $mail->Port = 587;

        // outMail username        
        $mail->Username = "business@hirelorry.in";
        
        // outMail password
        $mail->Password = "hirelorry#123";
        
        // Message details
        $mail->AddReplyTo('info@getwebcare.in', 'GetWebCare');
        $mail->AddAddress($to, $name);
        $mail->SetFrom('business@hirelorry.in', 'Hire Lorry');
        $mail->Subject = $subject;
        $mail->MsgHTML(urldecode($message));
        
        // Send the Message
        if($mail->Send())
        {
  //      echo "Message Sent OK</p>\n";
        }
      }
          catch (phpmailerException $e){/*echo $e->errorMessage();*/} //Pretty error msg from PHPMailer
    
    catch (Exception $e){/*echo $e->getMessage();*/} //Boring error messages from anything else!
       
     }


    	public function insertCustomer($data,$vehicle_type,$rnd,$id,$service_type,$price) {
         $query=$this->db->query("select * from " . DB_PREFIX . "vehicle_type where vehicle_type_id='$vehicle_type'");   
            $vehicle_details=$query->row;
            $cal_distance=round($data['distance'])-$vehicle_details['vehicle_base_fair'];
            $eastimated_price=($cal_distance*$vehicle_details['vehicle_type_price'])+$vehicle_details['vehicle_base_km'];
             date_default_timezone_set('Asia/Calcutta');
            $date_deliver=$data['ret_date'];
           //echo $date_deliver;die;
            $deliver_date = date('Y-m-d H:i:s',strtotime($date_deliver));
        //    print_r($deliver_date);die;
          $date = date('Y-m-d H:i:s');
        $password_change=md5($rnd);
         $cust_no=$data['email_id'];
        
         
            $cust_name=$data['customer_name'];
            $cust_data=$this->db->query("SELECT * FROM " . DB_PREFIX . "customer where username='$cust_no'");
        $cust_details=$cust_data->row;
        $cust_details_count=count($cust_data->rows);
                $username=$this->db->query("SELECT * FROM " . DB_PREFIX . "customer where customer_id='$id'");
              $user=isset($username->row['username']);
             $customer_user=$this->db->query("SELECT * FROM " . DB_PREFIX . "customer where username='$user'");
            $user_count=count($customer_user->rows);
            if($user_count>0)
            {
          //  die($date."1");
                
                
                 $dat=("INSERT INTO " . DB_PREFIX . "booking_status SET booking_time='$date', distance_price='$price',state='Maharastra',city='Pune',status='1',form_address='" . $data['from'] . "',to_address='". $data['to'] ."',customer_id='$id',customer_name='$cust_name',delivering_time='" . $deliver_date . "',exact_address='".$data['exactpickuplocation']."',distance='".$data['distance']."',vehicle='".$vehicle_type."',service_type='".$service_type."',device='1'");
                 $book = $this->db->getLastId();
             $this->db->query("UPDATE " . DB_PREFIX . "booking_status SET customer_name='$cust_name' where booking_status_id='$book'");
            }
            if($cust_details_count==0 && $id==0)
        {
           //      die($date."2");
   $this->db->query("INSERT INTO " . DB_PREFIX . "original_password(username,password) VALUES('$cust_no','$rnd')");
$this->db->query("INSERT INTO " . DB_PREFIX . "customer(firstname,telephone,username,customer_group_id,password,status,approved,date_added) VALUES('$cust_name','$cust_no','$cust_no','1','$password_change','1','1','$date')");
        $customer_id = $this->db->getLastId();
       // $this->db->query("UPDATE " . DB_PREFIX . "customer SET firstname='$cust_name',telephone='$cust_no' where customer_id='$id'");
         $dat=("INSERT INTO " . DB_PREFIX . "booking_status SET booking_time='$date', distance_price='$price',state='Maharastra',city='Pune',status='1',form_address='" . $data['from'] . "',to_address='". $data['to'] ."',customer_id='$customer_id',customer_name='$cust_name',delivering_time='" . $deliver_date . "',exact_address='".$data['exactpickuplocation']."',distance='".$data['distance']."',vehicle='".$vehicle_type."',service_type='".$service_type."',device='1'");
                   
        
        }else if($cust_details_count>0 || $id!=0)
        {
                  if($id==0)
                  {
            //      die($date."3");
                       $customer_id=$this->db->query("SELECT * FROM " . DB_PREFIX . "customer where username ='$cust_no'");
              $customer_id=$customer_id->row['customer_id'];
                 $dat=("INSERT INTO " . DB_PREFIX . "booking_status SET booking_time='$date', distance_price='$price',state='Maharastra',delivering_time='" . $deliver_date . "',city='Pune',status='1',form_address='" . $data['from'] . "',to_address='". $data['to'] ."',customer_id = '" . $customer_id . "',customer_name='$cust_name',exact_address='".$data['exactpickuplocation']."',distance='".$data['distance']."',vehicle='".$vehicle_type."',service_type='".$service_type."',device='1'");
           $booking = $this->db->getLastId();
             $this->db->query("UPDATE " . DB_PREFIX . "booking_status SET customer_name='$cust_name' where booking_status_id='".$booking."'");
                  }
                else {
                      
	//	die($date."4");
                $dat=("INSERT INTO " . DB_PREFIX . "booking_status SET booking_time='$date', distance_price='$price',state='Maharastra',delivering_time='" . $deliver_date . "',city='Pune',status='1',form_address='" . $data['from'] . "',to_address='". $data['to'] ."',customer_id = '" . $id . "',customer_name='$cust_name',exact_address='".$data['exactpickuplocation']."',distance='".$data['distance']."',vehicle='".$vehicle_type."',service_type='".$service_type."',device='1'");
           $booking = $this->db->getLastId();
             $this->db->query("UPDATE " . DB_PREFIX . "booking_status SET customer_name='$cust_name' where booking_status_id='".$booking."'");
                }
       
        }
           
              $this->db->query($dat);
             $booking_id = $this->db->getLastId();
    $query=$this->db->query("UPDATE " . DB_PREFIX . "booking_status SET customer_mobile_no = '" . $data['email_id'] . "'  WHERE booking_status_id = '" . (int)$booking_id . "'");
              $mobile_no=$data['email_id'];
            $name = explode(" ", $cust_name);
            $date=date('d-m-Y H:i A',strtotime($deliver_date));
   $sms="Dear ".$name[0].", thanks for booking. Your booking (id #".$booking_id.") has been scheduled at ".$date.". Soon Hire Lorry will contact you for other details if required.";
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
            
            $request="";
             $deliver_time=date('d-m-Y H:i A',strtotime($deliver_date));
             $sms_new="Dear HireLorry a booking (id ".$booking_id.") of ".$name[0]." (contact no. ".$mobile_no.") has been assigned to you from Pune at ".$deliver_time."";
            $request =""; //initialise the request variable
            $param['loginid'] = "hirelorry";
            $param['password'] = "QELZtYMY7";
            $param['send_to'] = "918698123444";
            $param['method']= "sendMessage";
            $param['msg'] = ($sms_new);
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
              return $booking_id;
 
	}
    
    
    public function getBooking($booking_id) {

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "booking_status bs," . DB_PREFIX . "customer c," . DB_PREFIX . "vehicle_type v," . DB_PREFIX . "service_type s WHERE bs.customer_id=c.customer_id AND v.vehicle_type_id=bs.vehicle AND s.service_type_id=bs.service_type AND booking_status_id = '" . (int)$booking_id . "'");

		return $query->row;
	}
     public function getVehicleType($vehicle_type_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "vehicle_type WHERE vehicle_type_id='" . (int)$vehicle_type_id . "'");
		return $query->row;
	}
    
    
       public function getCities() {

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "city");

		return $query->rows;
	}
      public function getStates() {

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone where country_id='99'");

		return $query->rows;
	}
      public function getServiceType($service_id) {

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "service_type WHERE service_type_id = '" . (int)$service_id . "'");

		return $query->row;
	}
    public function updateCust($customer_id,$booking_id,$vehicle_type)
    {
        $query=$this->db->query("UPDATE " . DB_PREFIX . "booking_status SET customer_id = '" . (int)$customer_id . "',vehicle = '" . (int)$vehicle_type . "' WHERE booking_status_id = '" . (int)$booking_id . "'");
        
        return $booking_id;
    }

	public function editCustomer($data) {
		$this->event->trigger('pre.customer.edit', $data);

		$customer_id = $this->customer->getId();

		$this->db->query("UPDATE " . DB_PREFIX . "customer SET firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', fax = '" . $this->db->escape($data['fax']) . "', custom_field = '" . $this->db->escape(isset($data['custom_field']) ? serialize($data['custom_field']) : '') . "' WHERE customer_id = '" . (int)$customer_id . "'");

		$this->event->trigger('post.customer.edit', $customer_id);
	}

	public function editPassword($email, $password) {
        $password_change=md5($password);
		$this->event->trigger('pre.customer.edit.password');

		$this->db->query("UPDATE " . DB_PREFIX . "customer SET salt = '" . $this->db->escape($salt = substr(md5(uniqid(rand(), true)), 0, 9)) . "', password = '" . $password_change . "' WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");

		$this->event->trigger('post.customer.edit.password');
	}

	public function editNewsletter($newsletter) {
		$this->event->trigger('pre.customer.edit.newsletter');

		$this->db->query("UPDATE " . DB_PREFIX . "customer SET newsletter = '" . (int)$newsletter . "' WHERE customer_id = '" . (int)$this->customer->getId() . "'");

		$this->event->trigger('post.customer.edit.newsletter');
	}

	public function getCustomer($customer_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE customer_id = '" . (int)$customer_id . "'");

		return $query->row;
	}
    
    public function getCust($customer_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE customer_id = '" . (int)$customer_id . "'");

		return $query->row;
	}

	public function getCustomerByEmail($email) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");

		return $query->row;
	}

	public function getCustomerByToken($token) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE token = '" . $this->db->escape($token) . "' AND token != ''");

		$this->db->query("UPDATE " . DB_PREFIX . "customer SET token = ''");

		return $query->row;
	}

	public function getTotalCustomersByEmail($email) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "customer WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");

		return $query->row['total'];
	}

	public function getIps($customer_id) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "customer_ip` WHERE customer_id = '" . (int)$customer_id . "'");

		return $query->rows;
	}

	public function isBanIp($ip) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "customer_ban_ip` WHERE ip = '" . $this->db->escape($ip) . "'");

		return $query->num_rows;
	}
	
	public function addLoginAttempt($email) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer_login WHERE email = '" . $this->db->escape(utf8_strtolower((string)$email)) . "' AND ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "'");
		
		if (!$query->num_rows) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "customer_login SET email = '" . $this->db->escape(utf8_strtolower((string)$email)) . "', ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "', total = 1, date_added = '" . $this->db->escape(date('Y-m-d H:i:s')) . "', date_modified = '" . $this->db->escape(date('Y-m-d H:i:s')) . "'");
		} else {
			$this->db->query("UPDATE " . DB_PREFIX . "customer_login SET total = (total + 1), date_modified = '" . $this->db->escape(date('Y-m-d H:i:s')) . "' WHERE customer_login_id = '" . (int)$query->row['customer_login_id'] . "'");
		}			
	}	
	
	public function getLoginAttempts($email) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "customer_login` WHERE email = '" . $this->db->escape(utf8_strtolower($email)) . "'");

		return $query->row;
	}
	
	public function deleteLoginAttempts($email) {
		$this->db->query("DELETE FROM `" . DB_PREFIX . "customer_login` WHERE email = '" . $this->db->escape(utf8_strtolower($email)) . "'");
	}	
}