<?php echo $header; ?>

<?php echo $content_top; ?>

<div class="hr1 margin-top"><!-- Divider --></div>
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

<section class="pmagn3">
  <div class="container">
    <div class="row"> <?php echo $column_left; ?> 
      
      <!--right-col-->
      <div class="col-lg-9 col-md-9 col-sm-9"> 
        
        <!-- Start Recent Projects Carousel -->
        <div class="recent-projects">
          <h4 class="title"><span><?php echo $heading_title; ?></span></h4>
          <div class="row">
            <div class="col-lg-5 col-md-5 col-sm-5">
              <?php if ($thumb || $images) { ?>
              <div class="">
                <?php if ($thumb) { ?>
                <div class="image"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a></div>
                <?php } ?>
                <?php if ($images) { ?>
                <div class="image-additional">
                  <?php foreach ($images as $image) { ?>
                  <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
              <?php } ?>
            </div>
            <div class="col-lg-7 col-md-7 col-sm-7 product-info">
              <div class="description"  style="padding: 15px; background: #fff; border-bottom: 1px solid #ddd;">
                <?php if ($manufacturer) { ?>
                <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
                <?php } ?>
                <span class="model-title"><?php echo $text_model;?></span> <span class="model-text"><?php echo $model; ?></span><br />
                <?php if ($reward) { ?>
                <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
                <?php } ?>
                <span><?php echo $text_stock; ?></span> <?php echo $stock; ?></div>
              <?php if ($price) { ?>
              <!--<hr />-->
              <div class="price"  style="padding: 15px; border-bottom: 1px solid #ddd; font-size:24px; font-weight:300; background-color:#FFF"> <?php echo $text_price; ?>
                <?php if (!$special) { ?>
                <?php echo $price; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
                <?php } ?>
                <br />
                <?php if ($tax) {   ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
                <?php } ?>
                <?php if ($points) { ?>
                <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
                <?php } ?>
                <?php if ($discounts) { ?>
                <br />
                <div class="discount">
                  <?php foreach ($discounts as $discount) { ?>
                  <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
                  <?php } ?>
                </div>
                <?php } ?>
                <div class="price-detials-extend">
                  <?php
                                    if($GOLD_PRICE>0)
                                    echo 'GOLD_PRICE/'.$GOLD_PRICE;
                                    
                                    if($MAN_CHARGE>0)
                                    echo 'MAN_CHARGE/'.$MAN_CHARGE;
                                    
                                    if($diamond_price>0)
                                    echo 'diamond_price/'.$diamond_price;
                                    
                                    ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($options) { ?>
              <!--<hr />-->
              <div class="options"  style="padding: 15px; background: #fff; border-bottom: 1px solid #ddd;">
                <h2>
                  <?php //echo $text_option; ?>
                </h2>
                <?php foreach ($options as $option) { ?>
                <?php if ($option['type'] == 'select') { ?>
                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                  <?php if ($option['required']) { ?>
                  <span class="required">*</span>
                  <?php } ?>
                  <b><?php echo $option['name']; ?>:</b><!--<br />--> &nbsp;
                  <select name="option[<?php echo $option['product_option_id']; ?>]">
                    <option value=""><?php echo $text_select; ?></option>
                    <?php foreach ($option['option_value'] as $option_value) { ?>
                    <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                    </option>
                    <?php } ?>
                  </select>
                </div>
                <br />
                <?php } ?>
                <?php if ($option['type'] == 'radio') { ?>
                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                  <?php if ($option['required']) { ?>
                  <span class="required">*</span>
                  <?php } ?>
                  <b><?php echo $option['name']; ?>:</b><!--<br />--> &nbsp;
                  <?php foreach ($option['option_value'] as $option_value) { ?>
                  <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                  <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                  <br />
                  <?php } ?>
                </div>
                <br />
                <?php } ?>
                <?php if ($option['type'] == 'checkbox') { ?>
                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                  <?php if ($option['required']) { ?>
                  <span class="required">*</span>
                  <?php } ?>
                  <b><?php echo $option['name']; ?>:</b><!--<br />--> &nbsp;
                  <?php foreach ($option['option_value'] as $option_value) { ?>
                  <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                  <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                  <br />
                  <?php } ?>
                </div>
                <br />
                <?php } ?>
                <?php if ($option['type'] == 'image') { ?>
                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                  <?php if ($option['required']) { ?>
                  <span class="required">*</span>
                  <?php } ?>
                  <b><?php echo $option['name']; ?>:</b><!--<br />--> &nbsp;
                  <table class="option-image">
                    <?php foreach ($option['option_value'] as $option_value) { ?>
                    <tr>
                      <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                      <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                      <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                          <?php if ($option_value['price']) { ?>
                          (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                          <?php } ?>
                        </label></td>
                    </tr>
                    <?php } ?>
                  </table>
                </div>
                <br />
                <?php } ?>
                <?php /*if ($option['type'] == 'text') { ?>                  
                                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                    <?php if ($option['required']) { ?>
                                    <span class="required">*</span>
                                    <?php } ?>
                                    <b><?php echo $option['name']; ?>:</b><br />
                                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
                                </div>
                                <br />
                                <?php } */ ?>
                <?php if ($option['type'] == 'text') { ?>
                <div id="option-<?php echo $option['product_option_id']; ?>" class="price-option price-block"> <b><?php echo $option['name']; ?>:</b><br />
                  &nbsp; <?php echo $option['option_value']; ?>
                  <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
                  <div style="float:right; font-size: 15px; line-height: 12px;">+</div>
                </div>
                <?php } ?>
                <?php if ($option['type'] == 'textarea') { ?>
                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                  <?php if ($option['required']) { ?>
                  <span class="required">*</span>
                  <?php } ?>
                  <b><?php echo $option['name']; ?>:</b><!--<br />-->&nbsp;
                  <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
                </div>
                <br />
                <?php } ?>
                <?php if ($option['type'] == 'file') { ?>
                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                  <?php if ($option['required']) { ?>
                  <span class="required">*</span>
                  <?php } ?>
                  <b><?php echo $option['name']; ?>:</b><!--<br />-->&nbsp;
                  <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="btn">
                  <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
                </div>
                <br />
                <?php } ?>
                <?php if ($option['type'] == 'date') { ?>
                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                  <?php if ($option['required']) { ?>
                  <span class="required">*</span>
                  <?php } ?>
                  <b><?php echo $option['name']; ?>:</b><!--<br />-->&nbsp;
                  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
                </div>
                <br />
                <?php } ?>
                <?php if ($option['type'] == 'datetime') { ?>
                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                  <?php if ($option['required']) { ?>
                  <span class="required">*</span>
                  <?php } ?>
                  <b><?php echo $option['name']; ?>:</b><!--<br />-->&nbsp;
                  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
                </div>
                <br />
                <?php } ?>
                <?php if ($option['type'] == 'time') { ?>
                <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                  <?php if ($option['required']) { ?>
                  <span class="required">*</span>
                  <?php } ?>
                  <b><?php echo $option['name']; ?>:</b><!--<br />-->&nbsp;
                  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
                </div>
                <br />
                <?php } ?>
                <?php } ?>
                <div id="option-<?php echo $option['product_option_id']; ?>" class="price-option"> <b>TAX:</b><!--<br /> --> &nbsp; <?php echo $taxPrice;?> </div>
              </div>
              <?php } ?>
              <!--<hr />-->
              <div class="cart"  style="padding: 15px; background: #fff; border-bottom: 1px solid #ddd;">
                <div><?php echo $text_qty; ?>
                  <input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" style="margin-top: 5px; height:34px; text-align:center; font-weight: bold;" />
                  <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
                  &nbsp;
                  <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="btn" />
                  <span>&nbsp;&nbsp;<?php echo $text_or; ?>&nbsp;&nbsp;</span> <span class="links"><a onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a><br />
                  <a onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a></span> </div>
                <?php if ($minimum > 1) { ?>
                <div class="minimum"><?php echo $text_minimum; ?></div>
                <?php } ?>
              </div>
              <?php if ($review_status) { ?>
              <!--<hr />-->
              <div class="review"  style="padding: 15px; background: #fff">
                <div style=" padding-bottom: 10px;"><img src="catalog/view/theme/default/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" style="padding-top: 4px;" />&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a></div>
                <div class="share"><!-- AddThis Button BEGIN -->
                  <div style=" padding-bottom: 10px;" class="addthis_default_style"><a class="addthis_button_compact">&nbsp;&nbsp;<?php echo $text_share; ?>&nbsp;&nbsp;</a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
                  <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
                  <!-- AddThis Button END --> 
                </div>
              </div>
              <?php } ?>
            </div>
          </div>
          
          <!-- Divider -->
          <div class="hr5" style="margin-top:45px;margin-bottom:45px;"></div>
          <div class="row">
            <div class="tabs-section" style="margin-bottom: 30px;">
              <ul class="nav nav-tabs">
                <?php if ($attribute_groups) { ?>
                <li class="active"><a href="#tab-attribute" data-toggle="tab"><?php echo $tab_description; ?></a></li>
                <!-- <li class="active"><a href="#tab-attribute" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>-->
                <?php } ?>
                
                <!--<li><a href="#tab-description" data-toggle="tab" ><?php //echo $tab_description; ?></a></li>-->
                
                <?php if ($review_status) { ?>
                <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
                <?php } ?>
                <?php if ($products) { ?>
                <li><a href="#tab-related" data-toggle="tab"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</a></li>
                <?php } ?>
              </ul>
              <div class="tab-content">
                <?php if ($attribute_groups) { ?>
                <div id="tab-attribute" class="tab-pane fade in active">
                  <div class="table-responsive">
                    <table class="attribute table table-bordered table-striped" style="width: 100%;" >
                      <?php foreach ($attribute_groups as $attribute_group) { ?>
                      <thead>
                        <tr>
                          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
                        </tr>
                      </thead>
                      <tbody>
                        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                        <tr>
                          <td><?php echo $attribute['name']; ?></td>
                          <td style="text-align:left; padding-left:20px;"><?php echo $attribute['text']; ?></td>
                        </tr>
                        <?php } ?>
                      </tbody>
                      <?php } ?>
                    </table>
                  </div>
                </div>
                <?php } ?>
                
                <!--<div id="tab-description" class="tab-pane fade "><?php //echo $description; ?></div>-->
                
                <?php if ($review_status) { ?>
                <div id="tab-review" class="tab-pane fade">
                  <div id="review"></div>
                  <h2 id="review-title"><?php echo $text_write; ?></h2>
                  <b><?php echo $entry_name; ?></b><br />
                  <input type="text" name="name" value="" />
                  <br />
                  <br />
                  <b><?php echo $entry_review; ?></b>
                  <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
                  <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
                  <br />
                  <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
                  <input type="radio" name="rating" value="1" />
                  &nbsp;
                  <input type="radio" name="rating" value="2" />
                  &nbsp;
                  <input type="radio" name="rating" value="3" />
                  &nbsp;
                  <input type="radio" name="rating" value="4" />
                  &nbsp;
                  <input type="radio" name="rating" value="5" />
                  &nbsp;<span><?php echo $entry_good; ?></span><br />
                  <br />
                  <b><?php echo $entry_captcha; ?></b><br />
                  <input type="text" name="captcha" value="" />
                  <br />
                  <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
                  <br />
                  <div class="buttons">
                    <div class=""><a id="button-review" class="btn"><?php echo $button_continue; ?></a></div>
                  </div>
                </div>
                <?php } ?>
                <?php if ($products) { ?>
                <div id="tab-related" class="tab-pane fade ">
                  <div class="box-product">
                    <?php foreach ($products as $product) { ?>
                    <div class="">
                      <?php if ($product['thumb']) { ?>
                      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                      <?php } ?>
                      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                      <?php if ($product['price']) {   ?>
                      <div class="price">
                        <?php if (!$product['special']) { ?>
                        <?php echo $product['price']; ?>
                        <?php } else { ?>
                        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                        <?php } ?>
                      </div>
                      <?php } ?>
                      <?php if ($product['rating']) { ?>
                      <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                      <?php } ?>
                      <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn"><?php echo $button_cart; ?></a> </div>
                    <?php } ?>
                  </div>
                </div>
                <?php } ?>
                <?php if ($tags) { ?>
                <div class="tags"><b><?php echo $text_tags; ?></b>
                  <?php for ($i = 0; $i < count($tags); $i++) { ?>
                  <?php if ($i < (count($tags) - 1)) { ?>
                  <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
                  <?php } else { ?>
                  <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
              <!-- End Tab Panels --> 
            </div>
          </div>
          <?php echo $content_bottom; ?> </div>
        <!-- End Recent Projects Carousel --> 
      </div>
      <!--right-end--> 
      
    </div>
  </div>
</section>
<script type="text/javascript">

$(document).ready(function() {
    $('.colorbox').colorbox({
    overlayClose: true,
            opacity: 0.5,
            rel: "colorbox"
    });
	
	createCookie('details_referer', "<?php echo $_REQUEST['path']; ?>", 1);
	createCookie('details_product', "<?php echo $_REQUEST['product_id']; ?>", 1);
		
    });
    </script> 
<script type="text/javascript"><!--
            $('#button-cart').bind('click', function() {
    $.ajax({
    url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
            dataType: 'json',
            success: function(json) {
    $('.success, .warning, .attention, information, .error').remove();
            if (json['error']) {
    if (json['error']['option']) {
    for (i in json['error']['option']) {
    $('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
    }
    }
    }

    if (json['success']) {
    $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
            $('.success').fadeIn('slow');
            $('#cart-total').html(json['total']);
            $('html, body').animate({ scrollTop: 0 }, 'slow');
    }
    }
    });
    });//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
    action: 'index.php?route=product/product/upload',
            name: 'file',
            autoSubmit: true,
            responseType: 'json',
            onSubmit: function(file, extension) {
    $('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
            $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
    },
            onComplete: function(file, json) {
    $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
            $('.error').remove();
            if (json['success']) {
    alert(json['success']);
            $('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
    }

    if (json['error']) {
    $('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
    }

    $('.loading').remove();
    }
    });//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
            $('#review .pagination a').live('click', function() {
    $('#review').fadeOut('slow');
            $('#review').load(this.href);
            $('#review').fadeIn('slow');
            return false;
    });
            $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');
            $('#button-review').bind('click', function() {
    $.ajax({
    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
            beforeSend: function() {
    $('.success, .warning').remove();
            $('#button-review').attr('disabled', true);
            $('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
    },
            complete: function() {
    $('#button-review').attr('disabled', false);
            $('.attention').remove();
    },
            success: function(data) {
    if (data['error']) {
    $('#review-title').after('<div class="warning">' + data['error'] + '</div>');
    }

    if (data['success']) {
    $('#review-title').after('<div class="success">' + data['success'] + '</div>');
            $('input[name=\'name\']').val('');
            $('textarea[name=\'text\']').val('');
            $('input[name=\'rating\']:checked').attr('checked', '');
            $('input[name=\'captcha\']').val('');
    }
    }
    });
    });//--></script> 
<script type="text/javascript"><!--
            $('#tabs a').tabs();//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
    if ($.browser.msie && $.browser.version == 6) {
    $('.date, .datetime, .time').bgIframe();
    }

    $('.date').datepicker({dateFormat: 'yy-mm-dd'});
            $('.datetime').datetimepicker({
    dateFormat: 'yy-mm-dd',
            timeFormat: 'h:m'
    });
            $('.time').timepicker({timeFormat: 'h:m'});
    });
//--></script> 
<?php echo $footer; ?>
<style>
    .price-block{
    width: 130px;
    float: left;
    }
	
	.model-title, .model-text{
		font-size:18px;
	}
	table.attribute tbody tr td:nth-child(1){
		width:35%;
	}
	
	.price{
		color:#8C1F0F;
	}
	.links a, .review a{
		cursor:pointer;
	}
	
</style>
<script>    
function getCookie(cname) {
   var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) == 0) 
            return c.substring(name.length, c.length);
    }
    return null;  
}


function createCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}


function setCookie(key_index, key_value) { 
    var search_arr = getCookie('pcc-search-cookie');
    var jsonArray = eval('(' + search_arr + ')');
    var arr_index=key_index;    
 
    if( !lookup( arr_index ,ck_array ) ) {        
      jsonArray.push({'price_search':key_value});  
    }
    else{      
       jsonArray[arr_index]=key_value;
    }
    var json_str = JSON.stringify(jsonArray);    
    createCookie('pcc-search-cookie', json_str);    
}
</script> 
