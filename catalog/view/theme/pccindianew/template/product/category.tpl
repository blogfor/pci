<?php echo $header; ?>
<?php //echo $column_right; ?>

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
    <div class="row"> <?php echo $content_top; ?> <?php echo $column_left; ?> 
      
      <!--right-col-->
      <div class="col-lg-9 col-md-9 col-sm-9"> 
        <!--Start Recent Projects Carousel-->
        <div class="recent-projects" id="main_content">
          <h4 class="title"><span><?php echo $heading_title; ?></span></h4>
          <div class="page_content row">
            <?php if ($thumb || $description) { ?>
            <div class="category-info">
              <?php if ($thumb) { ?>
              <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
              <?php } ?>
              <?php if ($description) { ?>
              <?php echo $description; ?>
              <?php } ?>
            </div>
            <?php } ?>
          </div>
          <?php if ($products) { ?>
          <div class="product-filter"> 
            <!--<div class="display"><b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display('grid');"><?php echo $text_grid; ?></a></div>-->
            <div class="limit"><b style="line-height: 35px;"><?php echo $text_limit; ?></b>
              <select onchange="location = this.value;">
                <?php foreach ($limits as $limits) { ?>
                <?php if ($limits['value'] == $limit) { ?>
                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
            <div class="sort"><b style="line-height: 35px;"><?php echo $text_sort; ?></b>
              <select onchange="location = this.value;">
                <?php 
                $i=0;
                foreach ($sorts as $sorts) {  ?>
                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                <option value="<?php echo $sorts['href']; ?>" opt="<?php echo $i++; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $sorts['href']; ?>" opt="<?php echo $i++; ?>"><?php echo $sorts['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
          <div class="row">
            <?php 
              
              $i=0;
              
              foreach ($products as $product) { 
              
             
              ?>
            <div id="P<?php echo $product['product_id'];?>" class="wow  col-sm-4 product product__<?php echo $i;?> portfolio-item">
              <div class="text-center product-block portfolio-border" >
                <?php
                 
                   if ($product['thumb']) { 
                   $pid=$product['product_id'];
                   $p_url=$product['href'];
                   ?>
                <div class="product_img portfolio-thumb effect"> <a href="<?php echo $p_url; ?>" url='<?php echo $p_url; ?>' pid="<?php echo $pid; ?>" onclick="javascript:clickonproduct(this);"> <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /> </a> </div>
                <?php } ?>
                <p><b><?php echo "Product Code: ".$product['product_model']; ?></b></p>
                <div class="product_info" style=" margin: 10px auto; ">
                  <?php if ($product['price']) { ?>
                  <div class="product_price">
                    <?php if (!$product['special']) { ?>
                    <span class="money"><?php echo $product['price']; ?></span>
                    <?php } else { ?>
                    <span class="money compare-at-price"><?php echo $product['price']; ?></span> <span class="money"><?php echo $product['special']; ?></span>
                    <?php } ?>
                  </div>
                  <?php } ?>
                  <div class="product_name"><a href="<?php echo $product['href']; ?>" ><?php echo $product['name']; ?></a></div>
                  <div class="product_desc"><?php echo $product['description']; ?></div>
                  <?php if ($product['rating']) { ?>
                  <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                  <?php } ?>
                  <div class="cart">
                    <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn btn-cart" />
                  </div>
                  <div class="wishlist" style="width: 100%;"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
                  <div class="compare" style="width: 100%; "><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
                </div>
              </div>
            </div>
            <?php 
              $i++;
              
              
              
              } ?>
          </div>
          <div class="pagination"><?php echo $pagination; ?></div>
          <?php } ?>
          <?php if (!$categories && !$products) { ?>
          <div class="content"><?php echo $text_empty; ?></div>
          <div class="buttons">
            <div class="right"><a href="<?php echo $continue; ?>" class="btn"> <?php echo $button_continue; ?></a> </div>
          </div>
          <?php } ?>
        </div>
        <?php echo $content_bottom; ?> </div>
      <!--right-end--> 
      
    </div>
  </div>
</section>


<script>
$(document).ready(function(){
	var p_id=getCookie('details_product');
	
	if(getCookie('details_referer')=="<?php echo $_REQUEST['path']; ?>"){		
		$("#P"+p_id).focus();		
		$("#P"+p_id+" img").addClass('product_selected');
		$("#P"+p_id).addClass('blink_me');
		setTimeout(function(){			
			$("#P"+p_id+"").removeClass('blink_me');			
			$("#P"+p_id+" img").removeClass('product_selected');
			createCookie('details_referer',"",-1);
			}, 1000);
							
	}	
});
</script>

<style>
.product_selected{
	border: 1px solid #950707;
}
.blink_me {
    -webkit-animation-name: blinker;
    -webkit-animation-duration: 1s;
    -webkit-animation-timing-function: linear;
    -webkit-animation-iteration-count: infinite;
    
    -moz-animation-name: blinker;
    -moz-animation-duration: 1s;
    -moz-animation-timing-function: linear;
    -moz-animation-iteration-count: infinite;
    
    animation-name: blinker;
    animation-duration: 1s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;
}

@-moz-keyframes blinker {  
    0% { opacity: 1.0; }
    50% { opacity: 0.0; }
    100% { opacity: 1.0; }
}

@-webkit-keyframes blinker {  
    0% { opacity: 1.0; }
    50% { opacity: 0.0; }
    100% { opacity: 1.0; }
}

@keyframes blinker {  
    0% { opacity: 1.0; }
    50% { opacity: 0.0; }
    100% { opacity: 1.0; }
}
</style>

<script>
$(document).ready(function(){
	$(".sort select option[opt='1']").remove();
	$(".sort select option[opt='2']").remove();
	$(".sort select option[opt='7']").remove();
	$(".sort select option[opt='8']").remove();
	});

</script>

<?php echo $footer; ?>