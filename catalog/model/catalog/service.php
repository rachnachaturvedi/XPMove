<?php
class ModelCatalogService extends Model {
	public function getServiceType() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "service_type");

		return $query->rows;
	}	
    public function insertComment($data) {
       
   $name=$data['name']; 
   $email=$data['email'];   
   $no=$data['no'];   
   $comments=$data['comments'];   
$query = $this->db->query("INSERT INTO " . DB_PREFIX . "contact(contact_name,contact_email,contact_no,comments) VALUES ('$name','$email','$no','$comments')");
	
	}

}