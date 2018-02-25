<?php
class ModelLocalisationVehicle extends Model {
	public function getVehicle($vehicle_id) {
		$query = $this->db->query("SELECT vehicle_id FROM " . DB_PREFIX . "vehicle_type WHERE vehicle_id = '" . (int)$vehicle_id ."'");

		return $query->row['vehicle_id'];
	}

	public function getVehicles() {
		//$country_data = $this->cache->get('country.status');

		//if (!$country_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "vehicle_type ORDER BY vehicle_name ASC");

			$vehicle_data = $query->rows;

			$this->cache->set('country.status', $vehicle_data);
		//}

		return $vehicle_data;
	}
}