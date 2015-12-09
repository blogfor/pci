<?php 
class ControllerProductCategorysearchreset extends Controller {
	  
	public function index() {
            
           
          $_SESSION[$this->request->get['search_key']]="";
          
            
  	}
        
       
}
?>