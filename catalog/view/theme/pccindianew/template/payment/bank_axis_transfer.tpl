<h2><?php echo $text_instruction; ?></h2>
<div class="content">
  <p><?php echo $text_description; ?></p>
  <p><?php echo $bank; ?></p>
  <p><?php echo $text_payment; ?></p>
</div>

<form>
<div class="buttons">
  <div class="right">
    <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn" />
  </div>
</div>
</form>

<script type="text/javascript">
<!--


$('#button-confirm').bind('click', function() {

function ValidatePAN(Obj) {   
        if (Obj.value != "") {
            ObjVal = Obj.value;
            var panPat = /^([a-zA-Z]{5})(\d{4})([a-zA-Z]{1})$/;
            if (ObjVal.search(panPat) == -1) {
                alert("Invalid Pan No");
                Obj.focus();
                return false;
            }
        }
  }

if($('#pan').length){

        if($('#pan').val()=='') {
                alert("Invalid Pan No");
                $('#pan').focus();
                return false;
        }

        else {

            if ($('#pan').val() != "") {
                ObjVal = $('#pan').val();
                var panPat = /^([a-zA-Z]{5})(\d{4})([a-zA-Z]{1})$/;
                if (ObjVal.search(panPat) == -1) {
                    alert("Invalid Pan No");
                    $('#pan').focus();
                    return false;
                }
                else{	
						$.ajax({
						url: 'index.php?route=checkout/checkout/validateshipping',
						dataType: 'json',
						beforeSend: function() {				
									$('.warning, .error').remove();
									$('#button-confirm').hide();
							$('#button-confirm').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
						},

						complete: function() {
							$('.wait').remove();		
						},			
						success: function(json) {
							if (json['status'] == '1') {
									$('#button-confirm').show();
									window.location.href="<?php echo $AxisBankAction; ?>&P="+$('#pan').val();		
							} else {
								BootstrapDialog.show({
												title: 'Oops! Sorry, we are currently unable to deliver in your area',
												message: 'Sorry, we are currently unable to deliver in your area, inconvenience caused deeply regretted',
												buttons: [{
													id: 'btn-ok',  
													label: 'OK',
													cssClass: 'btn-primary', 
													autospin: false,
													action: function(dialogRef){    
														dialogRef.close();
													}
												}]

											});
											$('#shipping-address .checkout-content').slideDown('slow');
											$('#shipping-address .checkout-heading a').remove();
											$('#button-confirm').show();
											$('.breadcrumb').focus();

							}
						},

						error: function(xhr, ajaxOptions, thrownError) {
							alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
						}
					});

                    }

            }

        }



	/*



	$.ajax({ 



		type: 'get',



		url: 'index.php?route=payment/bank_axis_transfer/confirm',



		success: function() {



			location = '<?php echo $AxisBankAction; ?>';



		}		



	});



	*/

}

else

    {

$.ajax({

						url: 'index.php?route=checkout/checkout/validateshipping',
						dataType: 'json',
						beforeSend: function() {							
									$('.warning, .error').remove();
									$('#button-confirm').hide();
							$('#button-confirm').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
						},

						complete: function() {
							$('.wait').remove();			
						},			

						success: function(json) {
							if (json['status'] == '1') {
											 $('#button-confirm').show();
											window.location.href="<?php echo $AxisBankAction; ?>";										

							} else {

								BootstrapDialog.show({

												title: 'Oops! Sorry, we are currently unable to deliver in your area',
												message: 'Sorry, we are currently unable to deliver in your area, inconvenience caused deeply regretted',
												buttons: [{
													id: 'btn-ok',   
													label: 'OK',
													cssClass: 'btn-primary', 
													autospin: false,
													action: function(dialogRef){    
														dialogRef.close();
													}

												}]

											});

											

											$('#shipping-address .checkout-content').slideDown('slow');
											$('#shipping-address .checkout-heading a').remove();
											$('#button-confirm').show();
											$('.breadcrumb').focus();
							}

							

						},

						error: function(xhr, ajaxOptions, thrownError) {
							alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);

						}

					});

    }



});
//--></script> 