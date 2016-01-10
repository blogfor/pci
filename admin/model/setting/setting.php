<?php 
class ModelSettingSetting extends Model {
	public function getSetting($group, $store_id = 0) {
		$data = array(); 
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "setting WHERE store_id = '" . (int)$store_id . "' AND `group` = '" . $this->db->escape($group) . "'");
		
		foreach ($query->rows as $result) {
			if (!$result['serialized']) {
				$data[$result['key']] = $result['value'];
			} else {
				$data[$result['key']] = unserialize($result['value']);
			}
		}

		return $data;
	}
	
	public function editSetting($group, $data, $store_id = 0) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "setting WHERE store_id = '" . (int)$store_id . "' AND `group` = '" . $this->db->escape($group) . "'");

		foreach ($data as $key => $value) {		
			
			if (!is_array($value)) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '" . (int)$store_id . "', `group` = '" . $this->db->escape($group) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape($value) . "'");
			} else {
				$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '" . (int)$store_id . "', `group` = '" . $this->db->escape($group) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape(serialize($value)) . "', serialized = '1'");
			}
		}
		
		
		//UPDATE PRICE for 15 Carat
		if($data['gd_15_rate'])
		{
			$updateQuery="UPDATE ".DB_PREFIX."product SET price=round((gold_weight * ".$data['gd_15_rate'].")+making_charges+stone_price+diamond_price+ruby_price+eme_price+saph_price) WHERE gold_carat='gd_15_rate'";			
			$this->db->query($updateQuery);
		}
		
		
		//UPDATE PRICE for 18 Carat
		if($data['gd_18_rate'])
		{
			$updateQuery="UPDATE ".DB_PREFIX."product SET price=round((gold_weight * ".$data['gd_18_rate'].")+making_charges+stone_price+diamond_price+ruby_price+eme_price+saph_price) WHERE gold_carat='gd_18_rate'";			
			$this->db->query($updateQuery);
		}
		
		
		//UPDATE PRICE for 20 Carat
		if($data['gd_20_rate'])
		{	
			$updateQuery="UPDATE ".DB_PREFIX."product SET price=round((gold_weight * ".$data['gd_20_rate'].")+making_charges+stone_price+diamond_price+ruby_price+eme_price+saph_price) WHERE gold_carat='gd_20_rate'";			
			$this->db->query($updateQuery);
		}
		
		
		//UPDATE PRICE for 22 Carat
		if($data['gd_22_rate'])
		{
			$updateQuery="UPDATE ".DB_PREFIX."product SET price=round((gold_weight * ".$data['gd_22_rate'].")+making_charges+stone_price+diamond_price+ruby_price+eme_price+saph_price) WHERE gold_carat='gd_22_rate'";			
			$this->db->query($updateQuery);
		}		
		
		
		//UPDATE PRICE for 24 Carat
		if($data['gd_24_rate'])
		{
			$updateQuery="UPDATE ".DB_PREFIX."product SET price=round((gold_weight * ".$data['gd_24_rate'].")+making_charges+stone_price+diamond_price+ruby_price+eme_price+saph_price) WHERE gold_carat='gd_24_rate'";			
			$this->db->query($updateQuery);
		}
		
	}
	
	public function deleteSetting($group, $store_id = 0) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "setting WHERE store_id = '" . (int)$store_id . "' AND `group` = '" . $this->db->escape($group) . "'");
	}
	
	public function editSettingValue($group = '', $key = '', $value = '', $store_id = 0) {
		if (!is_array($value)) {
			$this->db->query("UDPATE " . DB_PREFIX . "setting SET `value` = '" . $this->db->escape($value) . " WHERE `group` = '" . $this->db->escape($group) . "' AND `key` = '" . $this->db->escape($key) . "' AND store_id = '" . (int)$store_id . "'");
		} else {
			$this->db->query("UDPATE " . DB_PREFIX . "setting SET `value` = '" . $this->db->escape(serialize($value)) . "' WHERE `group` = '" . $this->db->escape($group) . "' AND `key` = '" . $this->db->escape($key) . "' AND store_id = '" . (int)$store_id . "', serialized = '1'");
		}
	}	
}
?>