<?php 
##-----------------------------------------------------##
require_once('lib/nusoap.php');
##---------------------------------------------------##

class wsdl_call_base
{

	var $client;
	
	function wsdl_call_base()
	{	
	  		
			##----- call wsdl base server for creative -----##
			$proxyhost = isset($_POST['proxyhost']) ? $_POST['proxyhost'] : '';
			$proxyport = isset($_POST['proxyport']) ? $_POST['proxyport'] : '';
			$proxyusername = isset($_POST['proxyusername']) ? $_POST['proxyusername'] : '';
			$proxypassword = isset($_POST['proxypassword']) ? $_POST['proxypassword'] : '';
			$useCURL = isset($_POST['usecurl']) ? $_POST['usecurl'] : '0';
            
                        $clientURL="http://119.81.69.189/TrackShipment/wsTrackShipment.asmx?WSDL"; 
			$this->client = new nusoap_client($clientURL, true,
			$proxyhost, $proxyport, $proxyusername, $proxypassword);
			
			//var_dump($this->client );
	
	
	}## end cons ##
	
	### function call WSDL ##
	
	function wsdl_return_val($functionName,$params)
	{
	
			$err = $this->client->getError();
			
			if ($err) {
			return array('<h2>Constructor error</h2><pre>' . $err . '</pre><h2>Debug</h2><pre>' . htmlspecialchars($this->client->getDebug(), ENT_QUOTES) . '</pre>');
			exit();
			}			
			
			$result = $this->client->call($functionName, $params);
			
			if ($client->fault) return $result;
			else return $result;

	
	
	} ## end member function ##


} ## end class ##