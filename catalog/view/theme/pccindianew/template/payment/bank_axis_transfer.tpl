<h2><?php echo $text_instruction; ?></h2>
<div class="content">
  <p><?php echo $text_description; ?></p>
  <p><?php echo $bank; ?></p>
  <p><?php echo $text_payment; ?></p>
</div>

<form >
<div class="buttons">
  <div class="right">   
    <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn" />
  </div>
</div>
</form>


<script type="text/javascript">
<!--

$('#button-confirm').bind('click', function() {
	/*
	$.ajax({ 
		type: 'get',
		url: 'index.php?route=payment/bank_axis_transfer/confirm',
		success: function() {
			location = '<?php echo $AxisBankAction; ?>';
		}		
	});
	*/
	window.location.href="<?php echo $AxisBankAction; ?>";
});

//--></script> 
