<?php

if (defined('HTTP_SERVER_TEMP')) {
    $path = HTTP_SERVER_TEMP.'components/com_aceshop/opencart/admin/';
} else {
    if (defined('HTTP_SERVER')) {
        $path = HTTP_SERVER;
    } else {
        $path = '';
    }
}

$path = preg_replace('/https?:/ims','',$path);

// Heading
$_['heading_title']    = '<img style="height:16px;vertical-align:-2px;" border="0px" src="'.$path.'controller/module/magiczoomplus-opencart-module/magiczoomplus.png"><b>&nbsp;Magic Zoom Plus&trade;</b>';
$_['title']    	       = 'Magic Zoom Plus';

// Text
$_['text_module']      = 'Modules';
$_['text_success']     = 'Success: You have modified module Magic Zoom Plus!';
$_['entry_status']     = 'Module status';
$_['button_clear']     = 'Clear';

// Error
$_['error_permission'] = 'Warning: You do not have permission to modify module Magic Zoom Plus!';

			$_['text_pending_orders_evidence']             = 'New Pending Orders: click to view!';
			$_['text_approval_customers_evidence']             = 'New Awaiting Customers: click to view!';
			
			
?>