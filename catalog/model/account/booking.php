<?php
class ModelAccountBooking extends Model {
public function addOrder($from,$to,$distance,$distance_price,$vehicle_id,$delivery_date,$labour_id,$total_labour_price,$customer_id) {
    //echo "hello";die;
    $this->db->query("INSERT INTO " . DB_PREFIX . "booking_status SET customer_id = '" . (int)$customer_id . "', form_address = '" . $from. "', to_address = '" . $to .  "', distance='".$distance."', distance_price='".$distance_price."' , vehicle='".$vehicle_id."' , delivering_time='".$delivery_date."' , labour_count='".$labour_id."', total_labour_price='".$total_labour_price."', status =1");

$booking_id = $this->db->getLastId();
	
		$this->db->query("INSERT INTO " . DB_PREFIX . "total_booking_price SET order_id='". $booking_id."', price = '" . $distance_price . "',tax_amount=0,total_price='".$distance_price."'");


	
}
    public function getBookingDetails($customer_id) {
        
				$query = $this->db->query("SELECT b_s.booking_status_id,b_s.customer_id,b_s.form_address,b_s.to_address,b_s.state,b_s.city,b_s.pin, b_s.exact_address,b_s.distance,b_s.delivering_time,b_s.invoice,b_s.invoice_prefix,b_s.labour_count,b_s.total_labour_price,b_s.vehicle,b_s.booking_time,b_s.delivering_time,b_s.status,b_s.price_of_customer,b_s.price_of_transpoter,b_s.amount_calc,b_s.assigned_to_telecaller,b_s.assigned_to_transporter,b_s.service_type,b_s.transporter_id,b_s.vehicle_no,b_s.driver_name,b_s.licence_no,b_s.mobile_no,b_s.area,b_s.subarea,b_s.vehicle_type,b_s.address,v.vehicle_type_id,v.vehicle_type_name,v.vehicle_type_price,v.labour_price,c.customer_id,c.customer_group_id,c.store_id,c.firstname,c.lastname,c.email,c.telephone,c.fax,c.username, c.password,c.salt,c.cart,c.wishlist,c.newsletter,c.address_id,c.custom_field,c.ip,c.status,c.approved,c.safe,c.token, c.date_added,c.city_id,c.state_id,c.address,c.pincode FROM " . DB_PREFIX . "booking_status b_s,". DB_PREFIX . "vehicle_type v,". DB_PREFIX . "customer c WHERE b_s.vehicle=v.vehicle_type_id AND b_s.customer_id=c.customer_id AND b_s.customer_id = '" . (int)$customer_id . "' order by booking_status_id DESC");
    // print_r($query);die;
        		return $query->rows;


	
}
        public function getBookingDetail($booking_id) {
            
				//$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "booking_status b_s,". DB_PREFIX . "vehicle_type v,". DB_PREFIX . "customer c,". DB_PREFIX . "service_type st WHERE b_s.vehicle=v.vehicle_type_id AND b_s.service_type=st.service_type_id AND b_s.customer_id=c.customer_id AND booking_status_id = '" . (int)$booking_id . "'");
            $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "booking_status b_s LEFT JOIN ". DB_PREFIX . "vehicle_type v ON b_s.vehicle=v.vehicle_type_id LEFT JOIN ". DB_PREFIX . "customer c ON b_s.customer_id=c.customer_id LEFT JOIN ". DB_PREFIX . "service_type st ON b_s.service_type=st.service_type_id LEFT JOIN ". DB_PREFIX . "order_status o_s ON o_s.order_status_id=b_s.status WHERE booking_status_id = '" . (int)$booking_id . "'");
         //print_r($query);die;
        		return $query->row;


	
}

}