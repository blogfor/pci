<?php echo $header; ?>

<!-- Start breadcrumb  -->
<section>
    <div class="container">
        <div class="row"> 

            <div class="col-lg-12 col-md-12 col-sm-12">
                <ol class="breadcrumb">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <?php } ?>
                </ol>
            </div>

        </div>
    </div>
</section>
<!--breadcrumb-end-->




<!-- Start Featured collections -->

<section class="pmagn3">
    <div class="container">
        <div class="row">
            <?php echo $content_top; ?>

            <!--right-col-->
            <div class="col-lg-12 col-md-12 col-sm-12">
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
                <!-- Start form  -->
                <div class="recent-projects">
                    <h4 class="title"><?php echo $heading_title; ?></h4>
                    <div  id="contact-form" class="contatct-form"><!--row-->

                        <p><?php echo $text_account_already; ?></p>
                        <form action="<?php echo $action; ?>" class="contactForm" name="cform" method="post" enctype="multipart/form-data">
                            <!--<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">-->

                            <h2><?php echo $text_your_details; ?></h2>
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="name"><?php echo $entry_firstname; ?> <span class="required">*</span></label>
                                    <input type="text" name="firstname" value="<?php echo $firstname; ?>" />
                                    <?php if ($error_firstname) { ?>
                                    <span class="error"><?php echo $error_firstname; ?></span>
                                    <?php } ?>
                                </div>
                                <div class="col-md-4">
                                    <label for="lastname"><?php echo $entry_lastname; ?><span class="required">*</span></label>
                                    <input type="text" name="lastname" value="<?php echo $lastname; ?>" />
                                    <?php if ($error_lastname) { ?>
                                    <span class="error"><?php echo $error_lastname; ?></span>
                                    <?php } ?>
                                </div>
                                <div class="col-md-4">
                                    <label for="email"> <?php echo $entry_email; ?><span class="required">*</span></label>
                                    <input type="text" name="email" value="<?php echo $email; ?>" />
                                    <?php if ($error_email) { ?>
                                    <span class="error"><?php echo $error_email; ?></span>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="telephone"><?php echo $entry_telephone; ?> <span class="required">*</span></label>
                                    <input type="text" name="telephone" value="<?php echo $telephone; ?>" />
                                    <?php if ($error_telephone) { ?>
                                    <span class="error"><?php echo $error_telephone; ?></span>
                                    <?php } ?>
                                </div>
                                <div class="col-md-4">
                                    <label for="fax"><?php echo $entry_fax; ?></label>
                                    <input type="text" name="fax" value="<?php echo $fax; ?>" />
                                </div>
                                <div class="col-md-4">
                                    &nbsp;
                                </div>
                            </div>
                            <!--<div class="content">
                                <table class="form">
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
                                        <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
                                            <?php if ($error_firstname) { ?>
                                            <span class="error"><?php echo $error_firstname; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
                                        <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
                                            <?php if ($error_lastname) { ?>
                                            <span class="error"><?php echo $error_lastname; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_email; ?></td>
                                        <td><input type="text" name="email" value="<?php echo $email; ?>" />
                                            <?php if ($error_email) { ?>
                                            <span class="error"><?php echo $error_email; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
                                        <td><input type="text" name="telephone" value="<?php echo $telephone; ?>" />
                                            <?php if ($error_telephone) { ?>
                                            <span class="error"><?php echo $error_telephone; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $entry_fax; ?></td>
                                        <td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
                                    </tr>
                                </table>
                            </div>-->

                            <h2><?php echo $text_your_address; ?></h2>
                            <div class="row" style="display:none;">
                                <div class="col-md-4">
                                    <label for="company"><?php echo $entry_company; ?></label>
                                    <input type="text" name="company" value="<?php echo $company; ?>" />
                                </div>
                                <div class="col-md-4" style="display: <?php echo (count($customer_groups) > 1 ? 'table-row' : 'none'); ?>;">
                                    <label for="customer_group"><?php echo $entry_customer_group; ?></label>
                                    <?php foreach ($customer_groups as $customer_group) { ?>
                                    <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
                                    <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                                    <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
                                    <br />
                                    <?php } else { ?>
                                    <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" />
                                    <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
                                    <br />
                                    <?php } ?>
                                    <?php } ?>
                                </div>
                                <div class="col-md-4" id="company-id-display">
                                    <label for="company_id"> <?php echo $entry_company_id; ?><span id="company-id-required" class="required">*</span></label>
                                    <input type="text" name="company_id" value="<?php echo $company_id; ?>N/A" />
                                    <?php if ($error_company_id) { ?>
                                    <span class="error"><?php echo $error_company_id; ?></span>
                                    <?php } ?>
                                </div>
                                <div class="col-md-4" id="tax-id-display">
                                    <label for="tax_id"> <?php echo $entry_tax_id; ?> <span id="tax-id-required" class="required">*</span></label>
                                    <input type="text" name="tax_id" value="<?php echo $tax_id; ?>N/A" />
                                    <?php if ($error_tax_id) { ?>
                                    <span class="error"><?php echo $error_tax_id; ?></span>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="address_1"> <?php echo $entry_address_1; ?> <span class="required">*</span></label>
                                    <input type="text" name="address_1" value="<?php echo $address_1; ?>" />
                                    <?php if ($error_address_1) { ?>
                                    <span class="error"><?php echo $error_address_1; ?></span>
                                    <?php } ?>
                                </div>
                                <div class="col-md-4" id="company-id-display">
                                    <label for="address_2"> <?php echo $entry_address_2; ?></label>
                                    <input type="text" name="address_2" value="<?php echo $address_2; ?>" />
                                </div>
                                <div class="col-md-4">
                                    <label for="city"><?php echo $entry_city; ?> <span class="required">*</span></label>
                                    <input type="text" name="city" value="<?php echo $city; ?>" />
                                    <?php if ($error_city) { ?>
                                    <span class="error"><?php echo $error_city; ?></span>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="postcode"><?php echo $entry_postcode; ?><span id="postcode-required" class="required">*</span></label>
                                    <input type="text" name="postcode" value="<?php echo $postcode; ?>" id="shipping-address-postcode"/>
                                    <?php if ($error_postcode) { ?>
                                    <span class="error"><?php echo $error_postcode; ?></span>
                                    <?php } ?>
                                </div>
                                <div class="col-md-4">
                                    <label for="entry_country"> <?php echo $entry_country; ?><span class="required">*</span></label>
                                    <select name="country_id">
                                        <option value=""><?php echo $text_select; ?></option>
                                        <?php foreach ($countries as $country) { ?>
                                        <?php if ($country['country_id'] == $country_id) { ?>
                                        <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                    <?php if ($error_country) { ?>
                                    <span class="error"><?php echo $error_country; ?></span>
                                    <?php } ?>
                                </div>
                                <div class="col-md-4">
                                    <label for="entry_zone"> <?php echo $entry_zone; ?><span class="required">*</span></label>
                                    <select name="zone_id">
                                    </select>
                                    <?php if ($error_zone) { ?>
                                    <span class="error"><?php echo $error_zone; ?></span>
                                    <?php } ?>
                                </div>
                            </div>
                            <!--<div class="content">
                                <table class="form">
                                    <tr>
                                        <td><?php echo $entry_company; ?></td>
                                        <td><input type="text" name="company" value="<?php echo $company; ?>" /></td>
                                    </tr>        
                                    <tr style="display: <?php echo (count($customer_groups) > 1 ? 'table-row' : 'none'); ?>;">
                                        <td><?php echo $entry_customer_group; ?></td>
                                        <td><?php foreach ($customer_groups as $customer_group) { ?>
                                            <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
                                            <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                                            <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
                                            <br />
                                            <?php } else { ?>
                                            <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" />
                                            <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
                                            <br />
                                            <?php } ?>
                                            <?php } ?></td>
                                    </tr>      
                                    <tr id="company-id-display">
                                        <td><span id="company-id-required" class="required">*</span> <?php echo $entry_company_id; ?></td>
                                        <td><input type="text" name="company_id" value="<?php echo $company_id; ?>" />
                                            <?php if ($error_company_id) { ?>
                                            <span class="error"><?php echo $error_company_id; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr id="tax-id-display">
                                        <td><span id="tax-id-required" class="required">*</span> <?php echo $entry_tax_id; ?></td>
                                        <td><input type="text" name="tax_id" value="<?php echo $tax_id; ?>" />
                                            <?php if ($error_tax_id) { ?>
                                            <span class="error"><?php echo $error_tax_id; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_address_1; ?></td>
                                        <td><input type="text" name="address_1" value="<?php echo $address_1; ?>" />
                                            <?php if ($error_address_1) { ?>
                                            <span class="error"><?php echo $error_address_1; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $entry_address_2; ?></td>
                                        <td><input type="text" name="address_2" value="<?php echo $address_2; ?>" /></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_city; ?></td>
                                        <td><input type="text" name="city" value="<?php echo $city; ?>" />
                                            <?php if ($error_city) { ?>
                                            <span class="error"><?php echo $error_city; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></td>
                                        <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" />
                                            <?php if ($error_postcode) { ?>
                                            <span class="error"><?php echo $error_postcode; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_country; ?></td>
                                        <td><select name="country_id">
                                                <option value=""><?php echo $text_select; ?></option>
                                                <?php foreach ($countries as $country) { ?>
                                                <?php if ($country['country_id'] == $country_id) { ?>
                                                <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                                <?php } else { ?>
                                                <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                                <?php } ?>
                                                <?php } ?>
                                            </select>
                                            <?php if ($error_country) { ?>
                                            <span class="error"><?php echo $error_country; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_zone; ?></td>
                                        <td><select name="zone_id">
                                            </select>
                                            <?php if ($error_zone) { ?>
                                            <span class="error"><?php echo $error_zone; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                </table>
                            </div>-->

                            <h2><?php echo $text_your_password; ?></h2>
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="password"><?php echo $entry_password; ?><span id="postcode-required" class="required">*</span></label>
                                    <input type="password" name="password" value="<?php echo $password; ?>" />
                                    <?php if ($error_password) { ?>
                                    <span class="error"><?php echo $error_password; ?></span>
                                    <?php } ?>
                                </div>
                                <div class="col-md-4">
                                    <label for="entry_confirm"> <?php echo $entry_confirm; ?><span class="required">*</span></label>
                                    <input type="password" name="confirm" value="<?php echo $confirm; ?>" />
                                    <?php if ($error_confirm) { ?>
                                    <span class="error"><?php echo $error_confirm; ?></span>
                                    <?php } ?>
                                </div>
                                <div class="col-md-4">
                                    &nbsp;
                                </div>
                            </div>
                            <!--<div class="content">
                                <table class="form">
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_password; ?></td>
                                        <td><input type="password" name="password" value="<?php echo $password; ?>" />
                                            <?php if ($error_password) { ?>
                                            <span class="error"><?php echo $error_password; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
                                        <td><input type="password" name="confirm" value="<?php echo $confirm; ?>" />
                                            <?php if ($error_confirm) { ?>
                                            <span class="error"><?php echo $error_confirm; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                </table>
                            </div>-->

                            <h2><?php echo $text_newsletter; ?></h2>
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="newsletter"><?php echo $entry_newsletter; ?></label>
                                    <?php if ($newsletter) { ?>
                                    <input type="radio" name="newsletter" value="1" checked="checked" />
                                    <?php echo $text_yes; ?>
                                    <input type="radio" name="newsletter" value="0" />
                                    <?php echo $text_no; ?>
                                    <?php } else { ?>
                                    <input type="radio" name="newsletter" value="1" />
                                    <?php echo $text_yes; ?>
                                    <input type="radio" name="newsletter" value="0" checked="checked" />
                                    <?php echo $text_no; ?>
                                    <?php } ?>
                                </div>

                                <?php if ($text_agree) { ?>
                                <div class="col-md-8">
                                    <?php echo $text_agree; ?>
                                    <?php if ($agree) { ?>
                                    <input type="checkbox" name="agree" value="1" checked="checked" />
                                    <?php } else { ?>
                                    <input type="checkbox" name="agree" value="1" />
                                    <?php } ?>

                                    <input type="submit" value="<?php echo $button_continue; ?>" class="btn" id="continue_btn" />
                                </div>
                                <?php } else { ?>
                                <div class="col-md-8">
                                    <input type="submit" value="<?php echo $button_continue; ?>" class="btn" />
                                </div>
                                <?php } ?>
                            </div>
                            <!--<div class="content">
                                <table class="form">
                                    <tr>
                                        <td><?php echo $entry_newsletter; ?></td>
                                        <td><?php if ($newsletter) { ?>
                                            <input type="radio" name="newsletter" value="1" checked="checked" />
                                            <?php echo $text_yes; ?>
                                            <input type="radio" name="newsletter" value="0" />
                                            <?php echo $text_no; ?>
                                            <?php } else { ?>
                                            <input type="radio" name="newsletter" value="1" />
                                            <?php echo $text_yes; ?>
                                            <input type="radio" name="newsletter" value="0" checked="checked" />
                                            <?php echo $text_no; ?>
                                            <?php } ?></td>
                                    </tr>
                                </table>
                            </div>-->
                            <!--<?php if ($text_agree) { ?>
                            <div class="buttons">
                                <div class="right"><?php echo $text_agree; ?>
                                    <?php if ($agree) { ?>
                                    <input type="checkbox" name="agree" value="1" checked="checked" />
                                    <?php } else { ?>
                                    <input type="checkbox" name="agree" value="1" />
                                    <?php } ?>
                                    
                                    <input type="submit" value="<?php echo $button_continue; ?>" class="btn" />
                                </div>
                            </div>
                            <?php } else { ?>
                            <div class="buttons">
                                <div class="right">
                                    <input type="submit" value="<?php echo $button_continue; ?>" class="btn" />
                                </div>
                            </div>
                            <?php } ?>-->
                        </form>
                        <?php echo $content_bottom; ?> 


                    </div>
                </div><!-- end form  -->

                <!-- Divider -->
                <div class="hr1" style="margin-bottom:30px;"></div>


            </div>
            <?php echo $column_right; ?> 


        </div>

    </div>     

</section>


<script type="text/javascript"><!--
$('input[name=\'customer_group_id\']:checked').live('change', function() {
        var customer_group = [];

        < ?php foreach ($customer_groups as $customer_group) { ? >
                customer_group[ < ?php echo $customer_group['customer_group_id']; ? > ] = [];
                customer_group[ < ?php echo $customer_group['customer_group_id']; ? > ]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
                customer_group[ < ?php echo $customer_group['customer_group_id']; ? > ]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
                customer_group[ < ?php echo $customer_group['customer_group_id']; ? > ]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
                customer_group[ < ?php echo $customer_group['customer_group_id']; ? > ]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
                < ?php } ? >
                if (customer_group[this.value]) {
            if (customer_group[this.value]['company_id_display'] == '1') {
                $('#company-id-display').show();
            } else {
                $('#company-id-display').hide();
            }

            if (customer_group[this.value]['company_id_required'] == '1') {
                $('#company-id-required').show();
            } else {
                $('#company-id-required').hide();
            }

            if (customer_group[this.value]['tax_id_display'] == '1') {
                $('#tax-id-display').show();
            } else {
                $('#tax-id-display').hide();
            }

            if (customer_group[this.value]['tax_id_required'] == '1') {
                $('#tax-id-required').show();
            } else {
                $('#tax-id-required').hide();
            }
        }
    });

    $('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
    $('select[name=\'country_id\']').bind('change', function() {
        $.ajax({
            url: 'index.php?route=account/register/country&country_id=' + this.value,
            dataType: 'json',
            beforeSend: function() {
                $('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            },
            complete: function() {
                $('.wait').remove();
            },
            success: function(json) {
                if (json['postcode_required'] == '1') {
                    $('#postcode-required').show();
                } else {
                    $('#postcode-required').hide();
                }

                html = '<option value=""><?php echo $text_select; ?></option>';

                if (json['zone'] != '') {
                    for (i = 0; i < json['zone'].length; i++) {
                        html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                        if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                            html += ' selected="selected"';
                        }

                        html += '>' + json['zone'][i]['name'] + '</option>';
                    }
                } else {
                    html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
                }

                $('select[name=\'zone_id\']').html(html);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $('select[name=\'country_id\']').trigger('change');
    
    $('#shipping-address-postcode').bind('blur', function() {
	if (this.value == '') return;
	$.ajax({
		url: 'index.php?route=checkout/checkout/pincode&code=' + this.value,
		dataType: 'json',
		beforeSend: function() {
                    
                    $('.warning, .error').remove();
                    $('#continue_btn').hide();
			$('#shipping-address-postcode').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
                        
		},			
		success: function(json) {
			if (json['status'] == '1') {
				
                             $('#continue_btn').show();
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
                            $('#shipping-address-postcode').val('');
                             $('#continue_btn').show();
			}
			
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});
    
//--></script> 
<script type="text/javascript"><!--
    $(document).ready(function() {
        $('.colorbox').colorbox({
            width: 640,
            height: 480
        });
    });
//--></script> 
<?php echo $footer; ?>