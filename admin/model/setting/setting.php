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
		
		
		
		
		
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "setting WHERE store_id = '" . (int)$store_id . "' AND `group` = '" . $this->db->escape($group) . "' AND `key`!='gd_octroi_rate' AND `key`!='gd_sequel_rate' AND `key`!='gd_bank_rate'");

		foreach ($data as $key => $value) {		
			
			if (!is_array($value)) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '" . (int)$store_id . "', `group` = '" . $this->db->escape($group) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape($value) . "'");
			} else {
				$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '" . (int)$store_id . "', `group` = '" . $this->db->escape($group) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape(serialize($value)) . "', serialized = '1'");
			}
		}
		//gd_octroi_rate, gd_sequel_rate,gd_bank_rate
		
		
		
		
		//UPDATE PRICE for 15 Carat
		if($data['gd_15_rate'])
		{
		$updateQuery="UPDATE " . DB_PREFIX . "product SET price=round((gold_weight * ".$data['gd_15_rate'].")+making_charges+stone_price+diamond_price+ruby_price+eme_price+saph_price) WHERE gold_carat='gd_15_rate'";
			
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

			
		$updateQuery="UPDATE " . DB_PREFIX . "product SET price=((gold_weight * ".$data['gd_20_rate'].")+making_charges+stone_price+diamond_price+ruby_price+eme_price+saph_price) WHERE gold_carat='gd_20_rate'";
			
		$this->db->query($updateQuery);
		}
		
		//UPDATE PRICE for 22 Carat
		if($data['gd_22_rate'])
		{

			
		$updateQuery="UPDATE " . DB_PREFIX . "product SET price=((gold_weight * ".$data['gd_22_rate'].")+making_charges+stone_price+diamond_price+ruby_price+eme_price+saph_price) WHERE gold_carat='gd_22_rate'";
			
		$this->db->query($updateQuery);
		}
		
		//UPDATE PRICE for 24 Carat
		if($data['gd_24_rate'])
		{

			
		$updateQuery="UPDATE " . DB_PREFIX . "product SET price=((gold_weight * ".$data['gd_24_rate'].")+making_charges+stone_price+diamond_price+ruby_price+eme_price+saph_price) WHERE gold_carat='gd_24_rate'";
			
		$this->db->query($updateQuery);
		}
		
		/*
		* UPDATE Octroi , SEQUEL , BANK CHARGES
		*/
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "setting WHERE `group`='config' AND `store_id`=0 AND `key`='gd_octroi_rate'");
		$rate_settings=$query->row;

		$gd_octroi_rate=$rate_settings['value'];
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "setting WHERE `group`='config' AND `store_id`=0 AND `key`='gd_sequel_rate'");
		$rate_settings=$query->row;
		$gd_sequel_rate=$rate_settings['value'];
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "setting WHERE `group`='config' AND `store_id`=0 AND `key`='gd_bank_rate'");
		$rate_settings=$query->row;
		$gd_bank_rate=$rate_settings['value'];
		
		if($data['gd_22_rate'])
		{
			$updateQuery="UPDATE " . DB_PREFIX . "product SET price=price+round(price*(0.10/100))+".$gd_sequel_rate." WHERE gold_carat='gd_22_rate'";		
			$this->db->query($updateQuery);	
		}
		
		
		if($data['gd_18_rate'])
		{
			$updateQuery="UPDATE " . DB_PREFIX . "product SET price=price+round(price*(0.01/100))+".$gd_sequel_rate." WHERE gold_carat='gd_18_rate'";
			$this->db->query($updateQuery);			
		}		
		//$updateQuery="UPDATE " . DB_PREFIX . "product SET price=price+round(price*(".$gd_octroi_rate."/100))+".$gd_sequel_rate;	
		//$updateQuery="UPDATE " . DB_PREFIX . "product SET price=(price+(round(price*(".$gd_bank_rate."/100))))";			
		$updateQuery="UPDATE " . DB_PREFIX . "product SET price=round(price+round(price*(".$gd_bank_rate."/100)))";			
		$this->db->query($updateQuery);
		
		
		/*
		* UPDATE Exice -
		*/
        if(date('Y-m-d')>date('Y-m-d',strtotime('2016-07-31'))) {
        $updateQuery="UPDATE " . DB_PREFIX . "product SET price=round(price+round(price*(1/100)))";			
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