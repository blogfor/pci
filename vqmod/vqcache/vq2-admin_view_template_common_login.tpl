<?php echo $header; ?>
<div id="content">
  
			<div class="box" id="admin-login">
			<h1><?php echo $text_login; ?></h1>
				<?php if ($success) { ?>
				<div class="success"><?php echo $success; ?></div>
				<?php } ?>
				<?php if ($error_warning) { ?>
				<div class="warning"><?php echo $error_warning; ?></div>
				<?php } ?>
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
			<p>
			<label for="username"><?php echo $entry_username; ?></label>
			<input class="username" type="text" name="username" value="<?php echo $username; ?>" />
			</p>
			<p>
			<label for="password"><?php echo $entry_password; ?></label>
			<input class="password" type="password" name="password" value="<?php echo $password; ?>" />
			</p>
			<a onclick="$('#form').submit();" class="button"><?php echo $button_login; ?></a>
			

				
				<?php
				
				function getBaseUrl(){
				    if(isset($_SERVER['HTTPS'])){
				        $baseUrl = ($_SERVER['HTTPS'] && $_SERVER['HTTPS'] != 'off') ? 'https' : 'http';
				    }
				    else{
				        $baseUrl = 'http';
				    }
				    return $baseUrl . '://' . $_SERVER['HTTP_HOST'] . '/';
				}
				
				?>

				
				<br />
				<br />

			    <b><?php echo $entry_captcha; ?></b><br />
			    <input type='text' name='captcha' value='<?php echo $captcha; ?>' />
			    <br />
			    <img src="<?php echo getBaseUrl(); ?>index.php?route=information/contact/captcha" alt=""/>
			    <?php if ($error_captcha) { ?>
			    <span class='error'><?php echo $error_captcha; ?></span>
			    <?php } ?>
				
			
			<?php if ($forgotten) { ?>
			<p><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></p>
            <?php } ?>
			
			<?php if ($redirect) { ?>
			<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
			<?php } ?>
			</form>
		</div>
	</div>
			










































<script type="text/javascript"><!--
$('#form input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#form').submit();
	}
});
//--></script> 

				<script type='text/javascript'>
				$('#capreload').live('click', function() {
				   d = new Date();
				   $('#capim').attr('src', 'index.php?route=common/login/captcha/?'+d.getTime());
				});         
				</script>
			
<?php echo $footer; ?>