<?php

class ModelLocalisationCountry extends Model {

	public function getCountry($country_id) {

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "country WHERE country_id = '" . (int)$country_id . "' AND status = '1'");

		

		return $query->row;

	}	

	

	public function getCountries() {

		$country_data = $this->cache->get('country.status');

		

		if (!$country_data) {

			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "country WHERE status = '1' ORDER BY name ASC");

	

			$country_data = $query->rows;

		

			$this->cache->set('country.status', $country_data);

		}



		return $country_data;

	}

        

        public function validate($pincode) {

		$query = $this->db->query("SELECT COUNT(*) AS CNT FROM " . DB_PREFIX . "seql_zip WHERE trim(PINCODE) = '" . trim($pincode) . "'");

		

		return $query->row;

	}	

        public function validateState($pincode,$state) {

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seql_zip WHERE trim(PINCODE) = '" . trim($pincode) . "'");

                if($query->row['STATE']==strtoupper($state))
                {
                    return 1;
                }
                else
                    return 0;
	}

}

?>