<?php
class ModelLocalisationVehicle extends Model {
	public function getVehicle($vehicle_type_id) {
		$query = $this->db->query("SELECT vehicle_type_id FROM " . DB_PREFIX . "vehicle_type WHERE vehicle_type_id = '" . (int)$vehicle_type_id ."'");

		return $query->row;
	}

	public function getVehicles() {
		//$country_data = $this->cache->get('country.status');

		//if (!$country_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "vehicle_type");

			$vehicle_data = $query->rows;

			$this->cache->set('country.status', $vehicle_data);
		//}

		return $vehicle_data;
	}
    
    public function getVehicleDetails($vehicle_id) {
		//$country_data = $this->cache->get('country.status');

		//if (!$country_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "vehicle_type WHERE vehicle_type_id='".(int)$vehicle_id."'");

			$vehicle_data = $query->row;

			$this->cache->set('country.status', $vehicle_data);
		//}

		return $vehicle_data;
	}
    public function getServiceType($service_id) {
		//$country_data = $this->cache->get('country.status');

		//if (!$country_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "service_type WHERE service_type_id='".$service_id."'");

			$service_data = $query->row;

			$this->cache->set('country.status', $service_data);
		//}

		return $service_data;
	}
}