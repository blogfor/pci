<?php  
class ControllerModuleShopbycolor extends Controller {
	protected function index() {
		$this->language->load('module/shopbycolor');

    $this->data['heading_title'] = $this->language->get('heading_title');

    // definice barev (background, name, search) pro product/search
    $this->data['colors'] = array(
      array ('#ffffff', 'Bílá', 'bíl'),
      array ('#ffff00', 'Žlutá', 'žlut'),
      array ('#fb940b', 'Oranžová', 'oranž'),
      array ('#cc0000', 'Červená', 'červ'),
      array ('#ff98bf', 'Růžová', 'růžo'),
      array ('#762ca7', 'Fialová', 'fial'),
      array ('#0000ff', 'Modrá', 'modr'),
      array ('#03c0c6', 'Tyrkysová', 'tyrky'),
      array ('#00cc00', 'Zelená', 'zelen'),
      array ('#999999', 'Šedá', 'šed'),
      array ('#885418', 'Hnědá', 'hněd'),
      array ('#000000', 'Černá', 'čern'),
      array ('#ffd700', 'Zlatá', 'zlat'),
      array ('#dddddd', 'Stříbrná', 'stříb'),
    );

    // URL s parametry
    $url = "";

    // zobrazeni produktu pouze v aktualni kategorii (cislo vybrane kategorie)
    if ( !isset($_REQUEST['category_id']) ) {
      //zjisti cisla kategorii z cesty (path)
      if (isset($this->request->get['path'])) {
          $parts = explode('_', (string)$this->request->get['path']);
      } else {
          $parts = array();
      }
      $parts_end = COUNT($parts) -1; // posledni kategorie ve strukture
      // uloz aktualni kategorii  
      if ( isset($parts[0]) ) {
          $this->data['category_id'] = $parts[$parts_end];
          $category_id = $parts[$parts_end];
      } else {
          $this->data['category_id'] = 0;
          $category_id = 0;
      }
    } else {
      // aktualni kategorie
      $category_id = $_REQUEST['category_id'];
    }
    
    // link pro navigaci (path) + aktualni kategorii (category_id)
    if ( isset($_REQUEST['path']) ) {
      // je otevrena nejaka kategorie = cesta
      $url .= "&path=" . $_REQUEST['path']; 
    }
    // aktualni kategorie v hierarchii
    if ($category_id) {
      $url .= "&category_id=" . $category_id;
    }
    
    $this->data['link_cat'] = $url;
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/shopbycolor.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/shopbycolor.tpl';
		} else {
			$this->template = 'default/template/module/shopbycolor.tpl';
		}
		
		$this->render();
	}
}
?>