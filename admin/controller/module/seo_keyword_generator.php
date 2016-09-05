<?php
class ControllerModuleSeoKeywordGenerator extends Controller {
	private $error = array(); 

	public function index() {   
		$this->language->load('module/seo_keyword_generator');
		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/product');
		$this->load->model('catalog/information');
		$this->load->model('catalog/manufacturer');
		$this->load->model('catalog/seo_keyword_generator');
		
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		if (isset($this->session->data['error'])) {
			$this->data['error'] = $this->session->data['error'];
			unset($this->session->data['error']);
		} else {
			$this->data['error'] = '';
		}


		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
		
			$this->model_catalog_seo_keyword_generator->SaveSEOKeyword($this->request->post);		
			$this->session->data['success'] = $this->language->get('text_success');
			$this->redirect($this->url->link('module/seo_keyword_generator', 'token=' . $this->session->data['token'], 'SSL'));
		
		}

		
		$this->data['products'] = array();
		$results = $this->model_catalog_product->getProducts(array());

		foreach ($results as $result) {
			$this->data['products'][] = array(
				'product_id' => $result['product_id'],
				'name'       => $result['name'],
				'model'      => $result['model'],
				'status'     => $result['status'],
				'keyword'     => $this->model_catalog_seo_keyword_generator->getKeyword("product_id=".$result['product_id'])
			);
		}
		
		$this->data['categorys'] = array();
		$results = $this->model_catalog_seo_keyword_generator->getAllCategorys(array());

		foreach ($results as $result) {
			$this->data['categorys'][] = array(
				'category_id' => $result['category_id'],
				'name'       => $result['name'],
				'keyword'     => $this->model_catalog_seo_keyword_generator->getKeyword("category_id=".$result['category_id'])
			);
		}
		
		
		$this->data['informations'] = array();
		$results = $this->model_catalog_information->getInformations(array());
		foreach ($results as $result) {
			$this->data['informations'][] = array(
				'information_id' => $result['information_id'],
				'name'       => $result['title'],
				'keyword'     => $this->model_catalog_seo_keyword_generator->getKeyword("information_id=".$result['information_id'])
			);
		}
		
		$this->data['manufacturers'] = array();
		$results = $this->model_catalog_manufacturer->getManufacturers(array());

		foreach ($results as $result) {
			$this->data['manufacturers'][] = array(
				'manufacturer_id' => $result['manufacturer_id'],
				'name'       => $result['name'],
				'keyword'     => $this->model_catalog_seo_keyword_generator->getKeyword("manufacturer_id=".$result['manufacturer_id'])
			);
		}
		

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_check_doubles'] = $this->language->get('button_check_doubles');
		$this->data['button_generate_all'] = $this->language->get('button_generate_all');
		$this->data['button_add_html_all'] = $this->language->get('button_add_html_all');
		$this->data['button_generate'] = $this->language->get('button_generate');
		$this->data['button_add_html'] = $this->language->get('button_add_html');
		
		
		
		$this->data['entry_products'] = $this->language->get('entry_products');
		$this->data['entry_categories'] = $this->language->get('entry_categories');
		$this->data['entry_informations'] = $this->language->get('entry_informations');
		$this->data['entry_manufacturers'] = $this->language->get('entry_manufacturers');
		
		
		

		
	

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
		);

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/information', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
		);

		$this->data['action'] = $this->url->link('module/seo_keyword_generator', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['modules'] = array();


		$this->load->model('design/layout');

		$this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->template = 'module/seo_keyword_generator.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/seo_keyword_generator')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>