<div class="collection-scope">
          <div class="page_header">
            <h4 class="title"><?php echo $heading_title; ?></h4>
            
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

            <?php } ?>
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
              <div class="wow col-sm-4 product product__<?php echo $i; ?>">
                <div class="text-center" style="border: 1px solid #eeeeee;">
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
                    <div class="wishlist" style="width: 140px; margin-left: 65px;"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
                    <div class="compare" style="width: 140px; margin-left: 65px;"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
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
            
            <?php if (!$categories || !$products) { ?>
            <div class="page_content row"></div>
            <div class="content"><?php echo $text_empty; ?></div>
            <br clear="all" />
            <div class="buttons">
              <div class="right"><a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a></div>
            </div>
            
            <div class="clearfix"></div>
          
          <div class="recent-projects" style="margin-top: 10px;">
          <h4 class="title text-center"><span>Our Latest Addition</span></h4>
          
          <div class="row">
            <?php 
              
              $i=0;
              
              foreach ($productsNEW as $product) { 
              
             
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
          </div>
            <?php } ?>
            
          </div>
          
          
          
          
          <?php echo $content_bottom; ?> </div>

  