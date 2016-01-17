<?php
class ControllerPaymentBankAxisTransfer extends Controller {
	protected function index() {
		$this->language->load('payment/bank_axis_transfer');		
		$this->data['text_instruction'] = $this->language->get('text_instruction');
		$this->data['text_description'] = $this->language->get('text_description');
		$this->data['text_payment'] = $this->language->get('text_payment');		
		$this->data['button_confirm'] = $this->language->get('button_confirm');		
		$this->data['bank'] = nl2br($this->config->get('bank_axis_transfer_bank_' . $this->config->get('config_language_id')));		
		$this->data['AxisBankAction'] =$this->url->link('payment/bank_axis_transfer/axispayment');	

		$this->data['continue'] = $this->url->link('checkout/success');		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/bank_axis_transfer.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/payment/bank_axis_transfer.tpl';
		} else {
			$this->template = 'default/template/payment/bank_axis_transfer.tpl';
		}			
		$this->render(); 
	}
	
	
	public function axispayment() {
		$this->load->model('checkout/order');
		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
		$gateway_data=array();	
		$gateway_data['Title']="PHP VPC 3-Party";
		$gateway_data['virtualPaymentClientURL']="https://migs.mastercard.com.au/vpcpay";
		$gateway_data['vpc_Version']="1";
		$gateway_data['vpc_Command']="pay";
		$gateway_data['vpc_AccessCode']=$this->config->get('bank_axis_marchent_access_code');
		$gateway_data['vpc_MerchTxnRef']="1";
		$gateway_data['vpc_Merchant']=$this->config->get('bank_axis_marchent_id');
		$gateway_data['vpc_OrderInfo']="test";
		$gateway_data['vpc_Amount']=ceil($order_info['total'])*100;		
		$gateway_data['vpc_Locale']="en";
		$gateway_data['vpc_ReturnURL']=$this->url->link('payment/bank_axis_transfer/axispaymentreturn');
		$gateway_data['SubButL']="Pay Now!";
		$gateway_data['vpc_TicketNo']="";
		$gateway_data['vpc_TxSourceSubType']="";
		
		
		$SECURE_SECRET = $this->config->get('bank_axis_hash_secret');
		$vpcURL = $gateway_data["virtualPaymentClientURL"] . "?";
		unset($gateway_data["virtualPaymentClientURL"]); 
		unset($gateway_data["SubButL"]);		
		$md5HashData = $SECURE_SECRET;
		ksort ($gateway_data);		
		// set a parameter to show the first pair in the URL
		$appendAmp = 0;		
		foreach($gateway_data as $key => $value) {		
			// create the md5 input and URL leaving out any fields that have no value
			if (strlen($value) > 0) {				
				// this ensures the first paramter of the URL is preceded by the '?' char
				if ($appendAmp == 0) {
					$vpcURL .= urlencode($key) . '=' . urlencode($value);
					$appendAmp = 1;
				} else {
					$vpcURL .= '&' . urlencode($key) . "=" . urlencode($value);
				}
				$md5HashData .= $value;
			}
		}		
	if (strlen($SECURE_SECRET) > 0) {
	$vpcURL .= "&vpc_SecureHash=" . strtoupper(md5($md5HashData));
	}
	header("Location: ".$vpcURL);	
	exit;
	}
	
	
	public function axispaymentreturn(){
		
		$SECURE_SECRET = $this->config->get('bank_axis_hash_secret');
		$vpc_Txn_Secure_Hash = $_GET["vpc_SecureHash"];
		unset($_GET["vpc_SecureHash"]); 
		
		// set a flag to indicate if hash has been validated
		$errorExists = false;
		
		if (strlen($SECURE_SECRET) > 0 && $_GET["vpc_TxnResponseCode"] != "7" && $_GET["vpc_TxnResponseCode"] != "No Value Returned") {
		
			$md5HashData = $SECURE_SECRET;
		
			// sort all the incoming vpc response fields and leave out any with no value
			foreach($_GET as $key => $value) {
				if ($key != "vpc_SecureHash" or strlen($value) > 0) {
					$md5HashData .= $value;
				}
			}
			
			// Validate the Secure Hash (remember MD5 hashes are not case sensitive)
			// This is just one way of displaying the result of checking the hash.
			// In production, you would work out your own way of presenting the result.
			// The hash check is all about detecting if the data has changed in transit.
			if (strtoupper($vpc_Txn_Secure_Hash) == strtoupper(md5($md5HashData))) {
				// Secure Hash validation succeeded, add a data field to be displayed
				// later.
				$hashValidated = "<FONT color='#00AA00'><strong>CORRECT</strong></FONT>";
			} else {
				// Secure Hash validation failed, add a data field to be displayed
				// later.
				$hashValidated = "<FONT color='#FF0066'><strong>INVALID HASH</strong></FONT>";
				$errorExists = true;
			}
		} else {
			// Secure Hash was not validated, add a data field to be displayed later.
			$hashValidated = "<FONT color='orange'><strong>Not Calculated - No 'SECURE_SECRET' present.</strong></FONT>";
		}
		
		// Define Variables
		// ----------------
		// Extract the available receipt fields from the VPC Response
		// If not present then let the value be equal to 'No Value Returned'
		
		// Standard Receipt Data
		$data['amount']          = $this->null2unknown($_GET["vpc_Amount"]);
		$data['locale']          = $this->null2unknown($_GET["vpc_Locale"]);
		$data['batchNo']         = $this->null2unknown($_GET["vpc_BatchNo"]);
		$data['command']         = $this->null2unknown($_GET["vpc_Command"]);
		$data['message']         = $this->null2unknown($_GET["vpc_Message"]);
		$data['version']         = $this->null2unknown($_GET["vpc_Version"]);
		$data['cardType']        = $this->null2unknown($_GET["vpc_Card"]);
		$data['orderInfo']       = $this->null2unknown($_GET["vpc_OrderInfo"]);
		$data['receiptNo']       = $this->null2unknown($_GET["vpc_ReceiptNo"]);
		$data['merchantID']      = $this->null2unknown($_GET["vpc_Merchant"]);
		$data['authorizeID']     = $this->null2unknown($_GET["vpc_AuthorizeId"]);
		$data['merchTxnRef']     = $this->null2unknown($_GET["vpc_MerchTxnRef"]);
		$data['transactionNo']   = $this->null2unknown($_GET["vpc_TransactionNo"]);
		$data['acqResponseCode'] = $this->null2unknown($_GET["vpc_AcqResponseCode"]);
		$data['txnResponseCode'] = $this->null2unknown($_GET["vpc_TxnResponseCode"]);
		
		
		// 3-D Secure Data
		$data['verType']         = array_key_exists("vpc_VerType", $_GET)          ? $_GET["vpc_VerType"]          : "No Value Returned";
		$data['verStatus']       = array_key_exists("vpc_VerStatus", $_GET)        ? $_GET["vpc_VerStatus"]        : "No Value Returned";
		$data['token']           = array_key_exists("vpc_VerToken", $_GET)         ? $_GET["vpc_VerToken"]         : "No Value Returned";
		$data['verSecurLevel']   = array_key_exists("vpc_VerSecurityLevel", $_GET) ? $_GET["vpc_VerSecurityLevel"] : "No Value Returned";
		$data['enrolled']        = array_key_exists("vpc_3DSenrolled", $_GET)      ? $_GET["vpc_3DSenrolled"]      : "No Value Returned";
		$data['xid']             = array_key_exists("vpc_3DSXID", $_GET)           ? $_GET["vpc_3DSXID"]           : "No Value Returned";
		$data['acqECI']          = array_key_exists("vpc_3DSECI", $_GET)           ? $_GET["vpc_3DSECI"]           : "No Value Returned";
		$data['authStatus']      = array_key_exists("vpc_3DSstatus", $_GET)        ? $_GET["vpc_3DSstatus"]        : "No Value Returned";
		
		// *******************
		// END OF MAIN PROGRAM
		// *******************		
		// FINISH TRANSACTION - Process the VPC Response Data
		// =====================================================
		// For the purposes of demonstration, we simply display the Result fields on a
		// web page.		
		// Show 'Error' in title if an error condition
		$errorTxt = "";
		
		// Show this page as an error page if vpc_TxnResponseCode equals '7'
		if ($txnResponseCode == "7" || $txnResponseCode == "No Value Returned" || $errorExists) {
			$errorTxt = "Error ";
		}
			
		// This is the display title for 'Receipt' page 
		$data['title'] = $_GET["Title"];
		
		
		
		// IF SUCCESS----------------------------------------------------------------
		if((int)$data['txnResponseCode']==0 && $data['transactionNo']>0){			
			$this->load->model('checkout/order');
			$this->model_checkout_order->setresponse($this->session->data['order_id'],$data);
				
			$comment  = $this->language->get('text_instruction') . "\n\n";
			$comment .= $this->config->get('bank_axis_transfer_bank_' . $this->config->get('config_language_id')) . "\n\n";
			$comment .= $this->language->get('text_payment');
			
			$this->model_checkout_order->confirm($this->session->data['order_id'], 2, $comment, true);
		
			header("Location: ".$this->url->link('checkout/success'));
				
		}else{
			
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/axiserror.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/payment/axiserror.tpl';
		} else {
			$this->template = 'default/template/payment/axiserror.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
				
			
		}
		//print_r($data);		
		
	}
	
	public function confirm() {
		$this->language->load('payment/bank_axis_transfer');
		
		$this->load->model('checkout/order');
		
		$comment  = $this->language->get('text_instruction') . "\n\n";
		$comment .= $this->config->get('bank_axis_transfer_bank_' . $this->config->get('config_language_id')) . "\n\n";
		$comment .= $this->language->get('text_payment');
		
		$this->model_checkout_order->confirm($this->session->data['order_id'], $this->config->get('bank_axis_transfer_order_status_id'), $comment, true);
	}
	
	
	
	
	
	
		public function getResponseDescription($responseCode) {
	
		switch ($responseCode) {
			case "0" : $result = "Transaction Successful"; break;
			case "?" : $result = "Transaction status is unknown"; break;
			case "1" : $result = "Unknown Error"; break;
			case "2" : $result = "Bank Declined Transaction"; break;
			case "3" : $result = "No Reply from Bank"; break;
			case "4" : $result = "Expired Card"; break;
			case "5" : $result = "Insufficient funds"; break;
			case "6" : $result = "Error Communicating with Bank"; break;
			case "7" : $result = "Payment Server System Error"; break;
			case "8" : $result = "Transaction Type Not Supported"; break;
			case "9" : $result = "Bank declined transaction (Do not contact Bank)"; break;
			case "A" : $result = "Transaction Aborted"; break;
			case "C" : $result = "Transaction Cancelled"; break;
			case "D" : $result = "Deferred transaction has been received and is awaiting processing"; break;
			case "F" : $result = "3D Secure Authentication failed"; break;
			case "I" : $result = "Card Security Code verification failed"; break;
			case "L" : $result = "Shopping Transaction Locked (Please try the transaction again later)"; break;
			case "N" : $result = "Cardholder is not enrolled in Authentication scheme"; break;
			case "P" : $result = "Transaction has been received by the Payment Adaptor and is being processed"; break;
			case "R" : $result = "Transaction was not processed - Reached limit of retry attempts allowed"; break;
			case "S" : $result = "Duplicate SessionID (OrderInfo)"; break;
			case "T" : $result = "Address Verification Failed"; break;
			case "U" : $result = "Card Security Code Failed"; break;
			case "V" : $result = "Address Verification and Card Security Code Failed"; break;
			default  : $result = "Unable to be determined"; 
		}
		return $result;
	}



	//  -----------------------------------------------------------------------------
	
	// This method uses the verRes status code retrieved from the Digital
	// Receipt and returns an appropriate description for the QSI Response Code
	
	// @param statusResponse String containing the 3DS Authentication Status Code
	// @return String containing the appropriate description
	
	public function getStatusDescription($statusResponse) {
		if ($statusResponse == "" || $statusResponse == "No Value Returned") {
			$result = "3DS not supported or there was no 3DS data provided";
		} else {
			switch ($statusResponse) {
				Case "Y"  : $result = "The cardholder was successfully authenticated."; break;
				Case "E"  : $result = "The cardholder is not enrolled."; break;
				Case "N"  : $result = "The cardholder was not verified."; break;
				Case "U"  : $result = "The cardholder's Issuer was unable to authenticate due to some system error at the Issuer."; break;
				Case "F"  : $result = "There was an error in the format of the request from the merchant."; break;
				Case "A"  : $result = "Authentication of your Merchant ID and Password to the ACS Directory Failed."; break;
				Case "D"  : $result = "Error communicating with the Directory Server."; break;
				Case "C"  : $result = "The card type is not supported for authentication."; break;
				Case "S"  : $result = "The signature on the response received from the Issuer could not be validated."; break;
				Case "P"  : $result = "Error parsing input from Issuer."; break;
				Case "I"  : $result = "Internal Payment Server system error."; break;
				default   : $result = "Unable to be determined"; break;
			}
		}
		return $result;
	}

	//  -----------------------------------------------------------------------------
	   
	// If input is null, returns string "No Value Returned", else returns input
	public function null2unknown($data) {
		if ($data == "") {
			return "No Value Returned";
		} else {
			return $data;
		}
	}

}
?>