<?php
class ModelStopSpamStopSpam extends Model {
        public function checkForSpammer($email = null) {
            $confidenceSpam = 0;
            $conIpScore = 0;
            $conEmailScore = 0;
            $akismetSpam = 0;
            $ipSpam = 0;
            $emailSpam = 0;
            
            $ip = $_SERVER['REMOTE_ADDR'];
            
            if ($this->config->get('config_sfs_enable') == 1) {
                if ($this->config->get('config_sfs_ip') == 1) {
                    $ipString = '&ip=' . $ip;
                } else {
                    $ipString = '';
                }
                
                if ($this->config->get('config_sfs_email') == 1 && $email != null) {
                    $emailString = '&email=' . $email;
                } else {
                    $emailString = '';
                }

                $url = 'http://www.stopforumspam.com/api?f=json' . $ipString . $emailString;
                $url = file_get_contents($url);

                $data = json_decode($url);

                if (isset($data->ip->appears) && $data->ip->appears != null) {
                    $ipSpam = $data->ip->appears;
                }

                if (isset($data->email->appears) && $data->email->appears != null) {
                    $emailSpam = $data->email->appears;
                }

                if ($this->config->get('config_sfs_confidence') != '') {
                    if (isset($data->email->confidence) && $data->email->confidence != null) {
                        $conEmailScore = $data->email->confidence;
                    }
                    if (isset($data->ip->confidence) && $data->ip->confidence != null) {
                        $conIpScore = $data->email->ip;
                    }
                    if (($conEmailScore || $conIpScore) > $this->config->get('config_sfs_confidence')) {
                        $confidenceSpam = 1;
                    }
                }
            }
            
            if ($this->config->get('config_akismet_enable') == 1 && $this->config->get('config_akismet_key') != '') {
                include 'admin/model/stop_spam/Akismet.class.php';

                $key = $this->config->get('config_akismet_key');

                $akismet = new Akismet(HTTP_SERVER, $key);
                $akismet->setCommentAuthorEmail($email);

                if($akismet->isCommentSpam()) {
                    $akismetSpam = 1;
                }
            }
            
            $blacklist = array_map('trim', explode("\n", trim($this->config->get('config_stop_spam_blacklist'))));

            $whitelist = array_map('trim', explode("\n", trim($this->config->get('config_stop_spam_whitelist'))));

            if ($email != '') {
                if (in_array($email, $whitelist)) {
                    $emailSpam = 0;
                }

                if (in_array($email, $blacklist)) {
                    $emailSpam = 1;
                }
            }

            if (in_array($ip, $whitelist)) {
                $ipSpam = 0;
            }

            if (in_array($ip, $blacklist)) {
                $ipSpam = 1;
            }
            
            if (($ipSpam == 1) || ($emailSpam == 1) || ($confidenceSpam == 1) || ($akismetSpam == 1)) {
                return true;
            } else {
                return false;
            }
	}
}
?>