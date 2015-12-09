<?php echo $header; ?>
<?php //echo $column_right; ?>
<style>
.page_heading {
	padding:2px 2px !important;
}
</style>

<div id="main" role="main">
<div class="container"> <?php echo $content_top; ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><span class="page-title"><?php echo $breadcrumb['text']; ?></span></a></li>
    <?php } ?>
  </ul>
  <div class="row sidebar_left ">
    <div class="column_center">
      <div id="main_content" class="col-sm-9">
        <div class="collection-scope">
          <div class="page_header">
            <h1 class="page_heading"><?php echo $heading_title; ?></h1>
          </div>
          <div class="page_content">
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
            <?php if ($categories) { ?>
            <h2><?php echo $text_refine; ?></h2>
            <div class="category-list">
              <?php if (count($categories) <= 5) { ?>
              <ul>
                <?php foreach ($categories as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } else { ?>
              <?php for ($i = 0; $i < count($categories);) { ?>
              <ul>
                <?php $j = $i + ceil(count($categories) / 4); ?>
                <?php for (; $i < $j; $i++) { ?>
                <?php if (isset($categories[$i])) { ?>
                <li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
                <?php } ?>
                <?php } ?>
              </ul>
              <?php } ?>
              <?php } ?>
            </div>
            <?php } ?>
            <?php if ($products) { ?>
            <div class="product-filter"> 
              <!--<div class="display"><b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display('grid');"><?php echo $text_grid; ?></a></div>-->
              <div class="limit"><b><?php echo $text_limit; ?></b>
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
              <div class="sort"><b><?php echo $text_sort; ?></b>
                <select onchange="location = this.value;">
                  <?php foreach ($sorts as $sorts) { ?>
                  <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                  <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
            <div class="product-list">
              <?php 
              
              $i=1;
              
              foreach ($products as $product) { 
           
              
              if($i%4==0 || $i==1)
              echo '<div class="row">';
              ?>
              <div class="wow col-sm-4 product product__<?php echo $i;?>">
                <div>
                  <?php
               
                  
                   if ($product['thumb']) { ?>
                  <div class="product_img"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
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
                    <div class="product_name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                    <div class="product_desc"><?php echo $product['description']; ?></div>
                    <?php if ($product['rating']) { ?>
                    <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                    <?php } ?>
                    <div class="cart">
                      <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn btn-cart" />
                    </div>
                    <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
                    <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
                  </div>
                </div>
              </div>
              <?php 
              $i++;
              if($i%4==0)
              echo '</div>';
              
              
              } ?>
            </div>
            <div class="pagination"><?php echo $pagination; ?></div>
            <?php } ?>
            <?php if (!$categories && !$products) { ?>
            <div class="content"><?php echo $text_empty; ?></div>
            <div class="buttons">
              <div class="right"><a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a></div>
            </div>
            <?php } ?>
          </div>
          <?php echo $content_bottom; ?> </div>
      </div>
    </div>
    <?php echo $column_left; ?> </div>
</div>

<?php echo $footer; ?>