<!-- Start Recent Projects Carousel -->
        <?php $floop=1;?>
        <?php foreach ($products as $product) { ?>
        <div class="wow product portfolio-item " id="P<?php echo $product['product_id'];?>">
            <div class="text-center product-block portfolio-border">
                <div class="view effect  portfolio-thumb">
                <?php if ($product['thumb']) { ?>
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
                <?php } ?>
                <div class="mask"></div>
                <div class="content">                
                    <a href="javascript:void(0);" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="info2"><?php echo $button_cart; ?></a>
                </div>
                 </div>
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
                    <div class="rating">
                    <?php if ($product['rating']) { ?>
                    <img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
                    <?php } ?>
                    </div>
                    <div class="cart">
                        <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn btn-cart" />
                    </div>
                </div>
            </div>
       
            </div>
        <?php } ?>

    