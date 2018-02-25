<?php
class ModelAccountCustomerGroup extends Model {
	public function getCustomerGroup($customer_group_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "customer_group cg LEFT JOIN " . DB_PREFIX . "customer_group_description cgd ON (cg.customer_group_id = cgd.customer_group_id) WHERE cg.customer_group_id = '" . (int)$customer_group_id . "' AND cgd.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		return $query->row;
	}

	public function getCustomerGroups() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer_group cg LEFT JOIN " . DB_PREFIX . "customer_group_description cgd ON (cg.customer_group_id = cgd.customer_group_id) WHERE cgd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY cg.sort_order ASC, cgd.name ASC");

		return $query->rows;
	}
    public function getCustomers($customer_id) {
       // echo $customer_id;die;
		$query = $this->db->query("SELECT ci.city_id,z.zone_id,c.firstname,c.address,c.pincode,c.username,c.telephone,c.email FROM " . DB_PREFIX . "customer c LEFT JOIN " . DB_PREFIX . "city ci ON ci.city_id=c.city_id LEFT JOIN " . DB_PREFIX . "zone z ON z.zone_id=c.state_id where customer_id='".$customer_id."'");
//print_r($query);die;
		return $query->row;
	}
     public function getCustomerDetails($customer_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "address WHERE customer_id='".$customer_id."'");

		return $query->row;
	}
    
    public function updateCustomer($data,$customer_id) {
  
$this->db->query("UPDATE " . DB_PREFIX . "customer SET firstname = '" . $data['firstname'] . "',telephone = '" . $data['mobile_no'] . "',email = '" .$data['email'] . "',address = '" .$data['address'] . "',pincode = '" .$data['zip'] . "',state_id='" .$data['state'] ."',city_id= '" . $data['city'] . "' WHERE customer_id = '" . (int)$customer_id . "'");
    }
 public function getCities() {

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "city");

		return $query->rows;
	}
      public function getStates() {

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone where country_id='99'");

		return $query->rows;
	}
    
    public function updatePassword($data,$username) {
       // echo $data['password1'];
        //echo $this->db->escape(sha1($salt . sha1($salt . sha1($data['password2']))));die;
         $password_change=md5($data['password2']);
$this->db->query("UPDATE " . DB_PREFIX . "customer SET  password = '" . $password_change."' WHERE username = '" . $username . "'");
        $this->db->query("UPDATE " . DB_PREFIX . "original_password SET  password = '" . $password_change."' WHERE username = '" . $username . "'");
    }
    /* public function getBookingDetails($customer_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "booking_status WHERE customer_id='".$customer_id."'");

		return $query->row;
	}*/
}