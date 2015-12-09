<?php  
class ControllerModuleCustomsearch extends Controller {
   
	protected function index($setting) {
            
            
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}
		
		$category_id = end($parts);
		
		$this->load->model('catalog/category');
		
		$category_info = $this->model_catalog_category->getCategory($category_id);
                
                $this->template = 'pccindianew/template/module/customsearch.tpl';
			
				
		$this->render();
                
		
  	}
}
?>