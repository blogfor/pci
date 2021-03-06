<?php
/* Magictoolbox magiczoomplus module BEGIN */
	global $aFolder;
	if (!defined('HTTP_ADMIN')) define('HTTP_ADMIN','admin');
	$aFolder = preg_replace('/.*\/([^\/].*)\//is','$1',HTTP_ADMIN);
	if (!isset($GLOBALS['magictoolbox']['magiczoomplus']) && !isset($GLOBALS['magiczoomplus_module_loaded'])) {
	    include (preg_match("/components\/com_(ayelshop|aceshop|mijoshop)\/opencart\//ims",DIR_APPLICATION,$matches)?'components/com_'.$matches[1].'/opencart/':'').$aFolder.'/controller/module/magiczoomplus-opencart-module/module.php';
	};
	
	/* Magictoolbox magiczoomplus module END */
	
	class ControllerModuleSpecial extends Controller {
	protected function index($setting) {
		$this->language->load('module/special');
 
      	$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['button_cart'] = $this->language->get('button_cart');
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');

		$this->data['products'] = array();
		
		$data = array(
			'sort'  => 'pd.name',
			'order' => 'ASC',
			'start' => 0,
			'limit' => $setting['limit']
		);

		$results = $this->model_catalog_product->getProductSpecials($data);

		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $setting['image_width'], $setting['image_height']);
			} else {
				$image = false;
			}

			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}
					
			if ((float)$result['special']) { 
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$special = false;
			}
			
			if ($this->config->get('config_review_status')) {
				$rating = $result['rating'];
			} else {
				$rating = false;
			}
			
			$this->data['products'][] = array(
				'product_id' => $result['product_id'],
				'thumb'   	 => $image,
				'name'    	 => $result['name'],
				'price'   	 => $price,
				'special' 	 => $special,
				'rating'     => $rating,
				'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id'])
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/special.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/special.tpl';
		} else {
			$this->template = 'default/template/module/special.tpl';
		}

		$this->render();
	/* Magictoolbox magiczoomplus module BEGIN */
	global $aFolder; include($aFolder.'/controller/module/magiczoomplus-opencart-module/boxes.inc');
	/* Magictoolbox magiczoomplus module END */
	
	}
}
?>