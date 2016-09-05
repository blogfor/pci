<?php
class ModelCatalogMacroDashboard extends Model {
    /* Sales */
    public function getTotalSalesForMacroDashboard($store_id) {
        $sql = '';
        $sql = "SELECT SUM(total) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '0'";
        if($store_id!="")
            $sql .= " AND store_id=$store_id";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}

	public function getTotalSalesByYearForMacroDashboard($year, $store_id) {
        $sql = '';
        $sql = "SELECT SUM(total) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '0' AND YEAR(date_added) = '" . (int)$year . "'";
        if($store_id!="")
            $sql .= " AND store_id=$store_id";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
    
     public function getTotalSalesByMonthForMacroDashboard($year, $month, $store_id) {
        $sql = '';
        $sql = "SELECT SUM(total) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '0' AND YEAR(date_added) = '" . (int)$year . "' AND MONTH(date_added) = '" . (int)$month . "'";
        if($store_id!="")
            $sql .= " AND store_id=$store_id";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
    
    public function getTotalSalesByTodayForMacroDashboard($date, $store_id) {
        $query = $this->db->query("SELECT CURDATE() AS curr_date");

		$curr_date = $query->row['curr_date'];
        
        $sql = '';
        $sql = "SELECT SUM(total) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '0' AND (date_added >= '" . $curr_date . " 00:00:00' AND date_added <= '" . $curr_date . " 23:59:59')";
        
        if($store_id!="")
            $sql .= " AND store_id=$store_id";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
    
    /* Statistics */
    public function getTotalOrdersForMacroDashboard($store_id) {
		$sql = "SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '0'";

		if($store_id!="")
            $sql .= " AND store_id=$store_id";

		$query = $this->db->query($sql);

		return $query->row['total'];
	}
    
    public function getTotalPendingOrdersForMacroDashboard($store_id) {
		$sql = "SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id = '1'";

		if($store_id!="")
            $sql .= " AND store_id=$store_id";

		$query = $this->db->query($sql);

		return $query->row['total'];
	}
    
    public function getTotalCustomersForMacroDashboard($store_id) {
		$sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "customer WHERE status = 1";

		if($store_id!="")
			$sql .= " AND store_id = $store_id";

		$query = $this->db->query($sql);

		return $query->row['total'];
	}
    
    public function getTotalReviewsForMacroDashboard($store_id) {
        $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "review";
       
		$query = $this->db->query($sql);

    	return $query->row['total'];
	}
    
    public function getTotalReviewsAwaitingApprovalForMacroDashboard($store_id) {
        $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "review WHERE status = '0'";

		$query = $this->db->query($sql);

		return $query->row['total'];
	}
    
    /* Category Inventory */
    public function getTotalCategoriesForMacroDashboard($store_id) {
        $sql = '';
        $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category_to_store WHERE 1=1";
        if($store_id!="")
            $sql .= " AND store_id=$store_id";
        
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
	public function getTotalActiveCategoriesForMacroDashboard($store_id) {
        $sql = '';
        $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category AS c, " . DB_PREFIX . "category_to_store AS cts WHERE cts.category_id = c.category_id AND c.status=1";
        if($store_id!="")
            $sql .= " AND cts.store_id=$store_id";
        
		$query = $this->db->query($sql);

		return $query->row['total'];
	}	

    /* Product Inventory */
    public function getTotalProductsForMacroDashboard($store_id) {
	    $sql = '';
        $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "product AS p, " . DB_PREFIX . "product_to_store AS pts WHERE p.product_id = pts.product_id";
        if($store_id!="")
            $sql .= " AND pts.store_id=$store_id";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
    
    public function getActiveProductsForMacroDashboard($store_id) {
	    $sql = '';
        $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "product AS p, " . DB_PREFIX . "product_to_store AS pts WHERE p.product_id = pts.product_id AND p.status = 1";
        if($store_id!="")
            $sql .= " AND pts.store_id=$store_id";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
    
    
	public function getTotalInStockProducts($store_id) {
	    $sql = '';
        $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "product AS p, " . DB_PREFIX . "product_to_store AS pts WHERE p.product_id = pts.product_id AND p.quantity > 0";
        if($store_id!="")
            $sql .= " AND pts.store_id=$store_id";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}

	public function getTotalOutOfStockProducts($store_id) {
        $sql = '';
        $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "product AS p, " . DB_PREFIX . "product_to_store AS pts WHERE p.product_id = pts.product_id AND p.quantity <= 0";
        if($store_id!="")
            $sql .= " AND pts.store_id=$store_id";
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
    
    /* Order */
    public function getOrdersForMacroDashboard($data = array()) {
		$sql = "SELECT o.order_id, CONCAT(o.firstname, ' ', o.lastname) AS customer, (SELECT os.name FROM " . DB_PREFIX . "order_status os WHERE os.order_status_id = o.order_status_id AND os.language_id = '" . (int)$this->config->get('config_language_id') . "') AS status, o.total, o.currency_code, o.currency_value, o.date_added, o.date_modified FROM `" . DB_PREFIX . "order` o WHERE o.order_status_id > '0'";

        if (!empty($data['store_id'])) {
			$sql .= " AND o.store_id = '" . (float)$data['store_id'] . "'";
		}

		$sort_data = array(
			'o.order_id',
			'customer',
			'status',
			'o.date_added',
			'o.date_modified',
			'o.total'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY o.order_id";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}
		$query = $this->db->query($sql);

		return $query->rows;
	}
    
    public function getPurchasedForMacroDashboard($store_id) {
		$sql = "SELECT op.name, op.model, SUM(op.quantity) AS quantity, SUM(op.total + op.total * op.tax / 100) AS total FROM " . DB_PREFIX . "order_product op LEFT JOIN `" . DB_PREFIX . "order` o ON (op.order_id = o.order_id)";
        if($store_id!="") 
            $sql .= " WHERE o.store_id=$store_id";

        $sql .= " GROUP BY op.model ORDER BY quantity DESC LIMIT 0, 5";

		$query = $this->db->query($sql);

		return $query->rows;
	}
    
    public function getTotalDownloadableForMacroDashboard() {
        $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "product_to_download GROUP BY product_id";
       
		$query = $this->db->query($sql);

    	return (isset($query->row['total'])) ? $query->row['total'] : "0";
	}
} ?>