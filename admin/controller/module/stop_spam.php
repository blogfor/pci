<?php
class ControllerModuleStopSpam extends Controller {
	private $error = array(); 
	
	public function index() {   
		$this->language->load('module/stop_spam');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('stop_spam', $this->request->post);		
					
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
				
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
                
                $this->data['tab_settings'] = $this->language->get('tab_settings');
                $this->data['tab_sfs'] = $this->language->get('tab_sfs');
                $this->data['tab_akismet'] = $this->language->get('tab_akismet');
                
                $this->data['title_settings'] = $this->language->get('title_settings');
                $this->data['title_sfs_enable'] = $this->language->get('title_sfs_enable');
                $this->data['title_use_on'] = $this->language->get('title_use_on');
                $this->data['title_sfs'] = $this->language->get('title_sfs');
                $this->data['title_akismet'] = $this->language->get('title_akismet');
                $this->data['title_akismet_enable'] = $this->language->get('title_akismet_enable');
                $this->data['text_akismet_enable'] = $this->language->get('text_akismet_enable');
                
                $this->data['text_enable'] = $this->language->get('text_enable');
                $this->data['text_sfs_enable'] = $this->language->get('text_sfs_enable');
                
                $this->data['text_use_account_register'] = $this->language->get('text_use_account_register');
                $this->data['text_use_checkout_register'] = $this->language->get('text_use_checkout_register');
                $this->data['text_use_checkout_guest'] = $this->language->get('text_use_checkout_guest');
                $this->data['text_use_contact'] = $this->language->get('text_use_contact');
                $this->data['text_use_reviews'] = $this->language->get('text_use_reviews');
                
                $this->data['title_whitelistblacklist'] = $this->language->get('title_whitelistblacklist');
                $this->data['text_whitelist'] = $this->language->get('text_whitelist');
                $this->data['text_whitelist_help'] = $this->language->get('text_whitelist_help');
                
                $this->data['text_blacklist'] = $this->language->get('text_blacklist');
                $this->data['text_blacklist_help'] = $this->language->get('text_blacklist_help');
                
                $this->data['text_sfs_enable'] = $this->language->get('text_sfs_enable');
		$this->data['text_sfs_email'] = $this->language->get('text_sfs_email');
		$this->data['text_sfs_ip'] = $this->language->get('text_sfs_ip');
                $this->data['text_sfs_confidence'] = $this->language->get('text_sfs_confidence');
                $this->data['text_sfs_confidence_help'] = $this->language->get('text_sfs_confidence_help');
                
                $this->data['text_akismet_key'] = $this->language->get('text_akismet_key');
                $this->data['text_akismet_key_help'] = $this->language->get('text_akismet_key_help');
                
		$this->data['text_yes'] = $this->language->get('text_yes');
		$this->data['text_no'] = $this->language->get('text_no');
                
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');
		
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
                
 		if (isset($this->error['error_sfs_confidence'])) {
			$this->data['error_sfs_confidence'] = $this->error['error_sfs_confidence'];
		} else {
			$this->data['error_sfs_confidence'] = '';
		}
                
 		if (isset($this->error['error_akismet_key'])) {
			$this->data['error_akismet_key'] = $this->error['error_akismet_key'];
		} else {
			$this->data['error_akismet_key'] = '';
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
			'href'      => $this->url->link('module/stop_spam', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/stop_spam', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['modules'] = array();
		
		if (isset($this->request->post['stop_spam_module'])) {
			$this->data['modules'] = $this->request->post['stop_spam_module'];
		} elseif ($this->config->get('stop_spam_module')) { 
			$this->data['modules'] = $this->config->get('stop_spam_module');
		}
                
		if (isset($this->request->post['config_stop_spam_enable'])) {
			$this->data['config_stop_spam_enable'] = $this->request->post['config_stop_spam_enable'];
		} else { 
			$this->data['config_stop_spam_enable'] = $this->config->get('config_stop_spam_enable');
		}
                
		if (isset($this->request->post['config_sfs_enable'])) {
			$this->data['config_sfs_enable'] = $this->request->post['config_sfs_enable'];
		} else { 
			$this->data['config_sfs_enable'] = $this->config->get('config_sfs_enable');
		}
                
		if (isset($this->request->post['config_akismet_enable'])) {
			$this->data['config_akismet_enable'] = $this->request->post['config_akismet_enable'];
		} else { 
			$this->data['config_akismet_enable'] = $this->config->get('config_akismet_enable');
		}
                
		if (isset($this->request->post['config_sfs_email'])) {
			$this->data['config_sfs_email'] = $this->request->post['config_sfs_email'];
		} else {
			$this->data['config_sfs_email'] = $this->config->get('config_sfs_email');			
		}
                
		if (isset($this->request->post['config_sfs_ip'])) {
			$this->data['config_sfs_ip'] = $this->request->post['config_sfs_ip'];
		} else {
			$this->data['config_sfs_ip'] = $this->config->get('config_sfs_ip');			
		}
                
		if (isset($this->request->post['config_sfs_confidence'])) {
			$this->data['config_sfs_confidence'] = $this->request->post['config_sfs_confidence'];
		} else {
			$this->data['config_sfs_confidence'] = $this->config->get('config_sfs_confidence');			
		}
                
		if (isset($this->request->post['config_akismet_key'])) {
			$this->data['config_akismet_key'] = $this->request->post['config_akismet_key'];
		} else {
			$this->data['config_akismet_key'] = $this->config->get('config_akismet_key');			
		}
                
		if (isset($this->request->post['config_use_account_register'])) {
			$this->data['config_use_account_register'] = $this->request->post['config_use_account_register'];
		} else {
			$this->data['config_use_account_register'] = $this->config->get('config_use_account_register');			
		}
                
		if (isset($this->request->post['config_use_checkout_register'])) {
			$this->data['config_use_checkout_register'] = $this->request->post['config_use_checkout_register'];
		} else {
			$this->data['config_use_checkout_register'] = $this->config->get('config_use_checkout_register');			
		}
                
		if (isset($this->request->post['config_use_checkout_guest'])) {
			$this->data['config_use_checkout_guest'] = $this->request->post['config_use_checkout_guest'];
		} else {
			$this->data['config_use_checkout_guest'] = $this->config->get('config_use_checkout_guest');			
		}
                
		if (isset($this->request->post['config_use_contact'])) {
			$this->data['config_use_contact'] = $this->request->post['config_use_contact'];
		} else {
			$this->data['config_use_contact'] = $this->config->get('config_use_contact');			
		}
                
		if (isset($this->request->post['config_use_reviews'])) {
			$this->data['config_use_reviews'] = $this->request->post['config_use_reviews'];
		} else {
			$this->data['config_use_reviews'] = $this->config->get('config_use_reviews');			
		}
                
		if (isset($this->request->post['config_stop_spam_whitelist'])) {
			$this->data['config_stop_spam_whitelist'] = $this->request->post['config_stop_spam_whitelist'];
		} else {
			$this->data['config_stop_spam_whitelist'] = $this->config->get('config_stop_spam_whitelist');
		}
                
		if (isset($this->request->post['config_stop_spam_blacklist'])) {
			$this->data['config_stop_spam_blacklist'] = $this->request->post['config_stop_spam_blacklist'];
		} else {
			$this->data['config_stop_spam_blacklist'] = $this->config->get('config_stop_spam_blacklist');
		}
				
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->template = 'module/stop_spam.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/stop_spam')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
                
                if ($this->request->post['config_sfs_confidence'] != '') {
                    if (($this->request->post['config_sfs_confidence'] < 0) || ($this->request->post['config_sfs_confidence'] > 100) || (!is_numeric($this->request->post['config_sfs_confidence']))) {
                            $this->error['error_sfs_confidence'] = $this->language->get('error_sfs_confidence');
                    }
                }
                
                if ($this->request->post['config_akismet_key'] != '') {
                    include 'model/stop_spam/Akismet.class.php';
                    $akismetKey = new Akismet(HTTP_SERVER, $this->request->post['config_akismet_key']);


                    if (!$akismetKey->isKeyValid()) {
                        $this->error['error_akismet_key'] = $this->language->get('error_akismet_key');
                    }
                }
                
		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>