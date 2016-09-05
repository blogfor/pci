<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($payment_methods) { ?>
<p><?php echo $text_payment_method; ?></p>
<table class="radio">
  <?php foreach ($payment_methods as $payment_method) { ?>
  <tr class="highlight">
    <td><?php if ($payment_method['code'] == $code || !$code) { ?>
      <?php $code = $payment_method['code']; ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" style="margin-left:0 !important"/>
      <?php } else { ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" style="margin-left:0 !important"/>
      <?php } ?>
    <label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></label></td>
  </tr>
  <?php } ?>
</table>
<br />
<?php } ?>
<b><?php echo $text_comments; ?></b>
<textarea name="comment" rows="8" style="width: 98%;"><?php echo $comment; ?></textarea>
<br />
<br />

           <?php foreach ($totals as $total) { ?><?php } ?>
            <?php if ($coupon_status && $total['value'] > 0) { ?>
                <div id="coupon" class=" left" style="background: #FFFFFF; border: 1px solid #EEEEEE; margin-right: 10px; float:left; overflow: auto; padding: 6px 0px 6px 6px;  margin-bottom: 20px;">
                  <b><?php echo $text_payment_coupon; ?></b><br /><br />
                  <?php echo $entry_payment_coupon; ?>&nbsp;
                  <input type="text" name="coupon" value="" />
                  &nbsp;<a id="button-coupon" class="button"><span><?php echo $button_coupon; ?></span></a><br /><br />
                </div>
       
         
            <script type="text/javascript"><!--
            $('#button-coupon').bind('click', function() {
            	$.ajax({
            		type: 'POST',
            		url: 'index.php?route=checkout/cart/calculateCoupon',
            		data: $('#coupon :input'),
            		dataType: 'json',
            		beforeSend: function() {
            			$('#button-coupon').attr('disabled', true);
            			$('#button-coupon').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            		},
            		complete: function() {
            			$('#button-coupon').attr('disabled', false);
            			$('.wait').remove();
            		},		
            		success: function(json) {
            		    $('.success, .warning').remove();
            			if (json['error']) {
            				$('#coupon').before('<div class="warning">' + json['error'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
            			} 
                        if (json['success']) {
                        $.ajax({
    							url: 'index.php?route=checkout/payment_method',
    							dataType: 'html',
    							beforeSend: function() {
    								$('#payment-method .checkout-content').slideUp('slow');
    							},
    							success: function(html) {
    								$('#payment-method .checkout-content').html(html);									
    								$('#payment-method .checkout-content').slideDown('slow');
                                    $('#payment-method .checkout-content').prepend('<div class="success">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
    								$("input[name=coupon]").val("");
    							},
    							error: function(xhr, ajaxOptions, thrownError) {
    								alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    							}
    						});
                        }
            		}
            	});
            });
            //--></script> 
            <?php } ?>
      
<?php if ($text_agree) { ?>
<div class="buttons">
  <div class="right"><?php echo $text_agree; ?>
    <?php if ($agree) { ?>
    <input type="checkbox" name="agree" value="1" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="agree" value="1" />
    <?php } ?>
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="btn" />
  </div>
</div>
<?php } else { ?>
<div class="buttons">
  <div class="right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="btn" />
  </div>
</div>
<?php } ?>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 640,
	height: 480
});
//--></script> 