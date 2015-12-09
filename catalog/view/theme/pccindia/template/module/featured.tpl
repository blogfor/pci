<div class="index-scope">
  <h2 class="page_heading"><?php echo $heading_title; ?></h2>
  <div class="product_listing_main homepage_carousel row">
    <?php $floop=1;?>
    <?php foreach ($products as $product) { ?>
    <div class="wow col-sm-3 product product__<?php echo $floop++;?>">
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="product_img"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="product_info">
          <?php if ($product['price']) { ?>
          <div class="product_price">
            <?php if (!$product['special']) { ?>
            <span class="money"><?php echo $product['price']; ?></span>
            <?php } else { ?>
            <span class="money compare-at-price"><?php echo $product['price']; ?></span> <span class="money"><?php echo $product['special']; ?></span>
            <?php } ?>
          </div>
          <?php } ?>
          <div class="product_name">
            <h3><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
          </div>
          <?php if ($product['rating']) { ?>
          <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
          <?php } ?>
          <div class="cart">
            <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn btn-cart" />
          </div>
        </div>
      </div>
    </div>
    <?php } ?>
  </div>
</div>
